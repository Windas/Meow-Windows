using CommonMark;
using ICSharpCode.AvalonEdit.CodeCompletion;
using ICSharpCode.AvalonEdit.Folding;
using ICSharpCode.AvalonEdit.Highlighting;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Threading;
using System.Xml;

namespace Meow_Windows
{
    /// <summary>
    /// EditArea.xaml 的交互逻辑
    /// </summary>
    public partial class EditArea : UserControl
    {
        public EditArea()
        {
            // Load our custom highlighting definition
            IHighlightingDefinition customHighlighting;
            using (Stream s = typeof(Window1).Assembly.GetManifestResourceStream("Meow_Windows.CustomHighlighting.xshd"))
            {
                if (s == null)
                    throw new InvalidOperationException("Could not find embedded resource");
                using (XmlReader reader = new XmlTextReader(s))
                {
                    customHighlighting = ICSharpCode.AvalonEdit.Highlighting.Xshd.
                        HighlightingLoader.Load(reader, HighlightingManager.Instance);
                }
            }
            // and register it in the HighlightingManager
            HighlightingManager.Instance.RegisterHighlighting("Custom Highlighting", new string[] { ".cool" }, customHighlighting);


            InitializeComponent();

            //inputEditor.SyntaxHighlighting = HighlightingManager.Instance.GetDefinition("C#");
            //inputEditor.SyntaxHighlighting = customHighlighting;
            // initial highlighting now set by XAML

            inputEditor.TextArea.TextEntering += textEditor_TextArea_TextEntering;
            inputEditor.TextArea.TextEntered += textEditor_TextArea_TextEntered;

            //binding scrollview

            DispatcherTimer foldingUpdateTimer = new DispatcherTimer();
            foldingUpdateTimer.Interval = TimeSpan.FromSeconds(2);
            foldingUpdateTimer.Tick += foldingUpdateTimer_Tick;
            foldingUpdateTimer.Start();
            
            SuppressScriptErrors(outputBrowser, true);
            outputBrowser.NavigateToString(ConvertExtendedASCII(addCSSJS("")));

        }

        static void SuppressScriptErrors(WebBrowser webBrowser, bool hide)
        {
            webBrowser.Navigating += (s, e) =>
            {
                var fiComWebBrowser = typeof(WebBrowser).GetField("_axIWebBrowser2", System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.NonPublic);
                if (fiComWebBrowser == null)
                     return;
 
                object objComWebBrowser = fiComWebBrowser.GetValue(webBrowser);
                if (objComWebBrowser == null)
                     return;

                objComWebBrowser.GetType().InvokeMember("Silent", System.Reflection.BindingFlags.SetProperty, null, objComWebBrowser, new object[] { hide });
            };
        }

		string currentFileName;
		
		void openFileClick(object sender, RoutedEventArgs e)
		{
			OpenFileDialog dlg = new OpenFileDialog();
            string[] strExtension = new string[] {".md", ".txt", ".", ".markdown"};
			dlg.CheckFileExists = true;
            dlg.Filter = "Markdown文件(*.md, *.txt， *.markdown)|*.md;*.txt|所有文件(*.*)|*.*";
			if (dlg.ShowDialog() ?? false) {
                if (!strExtension.Contains(Path.GetExtension(dlg.FileName)))//验证读取文件的格式 by jtk
                {
                    MessageBox.Show("Only Could Open .MD File！");
                }
                else
                {
                    currentFileName = dlg.FileName;
                    inputEditor.Load(currentFileName);
                    inputEditor.SyntaxHighlighting = HighlightingManager.Instance.GetDefinitionByExtension(Path.GetExtension(currentFileName));
                }  
			}
		}
		
		void saveFileClick(object sender, EventArgs e)
		{
			if (currentFileName == null) {
				SaveFileDialog dlg = new SaveFileDialog();
				dlg.DefaultExt = ".md";
                dlg.Filter = "Markdown文件(*.md, *.txt， *.markdown)|*.md;*.txt|所有文件(*.*)|*.*";
                dlg.FileName = "Untitled";//TODO: get item name and save it 
				if (dlg.ShowDialog() ?? false) {
					currentFileName = dlg.FileName;
				} else {
					return;
				}
			}
			inputEditor.Save(currentFileName);
		}
		
		
		CompletionWindow completionWindow;
		
		void textEditor_TextArea_TextEntered(object sender, TextCompositionEventArgs e)
		{
			if (e.Text == ".") {
				// open code completion after the user has pressed dot:
				completionWindow = new CompletionWindow(inputEditor.TextArea);
				// provide AvalonEdit with the data:
				IList<ICompletionData> data = completionWindow.CompletionList.CompletionData;
				data.Add(new MyCompletionData("Item1"));
				data.Add(new MyCompletionData("Item2"));
                data.Add(new MyCompletionData("Itee"));
				data.Add(new MyCompletionData("Item3"));
				data.Add(new MyCompletionData("Another item"));
				completionWindow.Show();
				completionWindow.Closed += delegate {
					completionWindow = null;
				};
			}
		}
		
		void textEditor_TextArea_TextEntering(object sender, TextCompositionEventArgs e)
		{
			if (e.Text.Length > 0 && completionWindow != null) {
				if (!char.IsLetterOrDigit(e.Text[0])) {
					// Whenever a non-letter is typed while the completion window is open,
					// insert the currently selected element.
					completionWindow.CompletionList.RequestInsertion(e);
				}
			}
			// do not set e.Handled=true - we still want to insert the character that was typed
		}
		
		#region Folding
		FoldingManager foldingManager;
		AbstractFoldingStrategy foldingStrategy;
		
		void foldingUpdateTimer_Tick(object sender, EventArgs e)
		{
			if (foldingStrategy != null) {
				foldingStrategy.UpdateFoldings(foldingManager, inputEditor.Document);
			}
		}
        #endregion

        /// <summary>
        /// Tool function for display chinese correctly in WebBrowser
        /// </summary>
        /// <param name="HTML"></param>
        /// <returns></returns>
        private static string ConvertExtendedASCII(string HTML)
        {
            string retVal = "";
            char[] s = HTML.ToCharArray();

            foreach (char c in s)
            {
                if (Convert.ToInt32(c) > 127)
                    retVal += "&#" + Convert.ToInt32(c) + ";";
                else
                    retVal += c;
            }

            return retVal;
        }
        DispatcherTimer tm = new DispatcherTimer();
        /// <summary>
        /// Send HTML string file to WebBrowser
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void parseDoc(object sender, EventArgs e)
        {
            //System.Threading.Thread.Sleep(100);

            tm.Tick += new EventHandler(drawing);//订阅Tick事件
            tm.Interval = TimeSpan.FromSeconds(0.5);
            tm.Start();
        }

        private void drawing(object sender, EventArgs e)
        {
            outputBrowser.NavigateToString(ConvertExtendedASCII(addCSSJS(inputEditor.Text)));
        }


        /// <summary>
        ///This function is used to add CSS files and Javascript files into HTML.
        ///EnlighterJS is a syntax highlighting Javascript lib for HTML
        ///Markdown.css is a CSS3 sheet for rebuild the HTML file.
        /// </summary>
        /// <param name="origin"></param>
        /// <returns></returns>
        private string addCSSJS(string origin)
        {
            var html = @"<html>
                            <meta http-equiv=""X-UA-Compatible"" content=""IE=edge""/>
                            <head>
                                <link rel=""stylesheet"" href=""" + Environment.CurrentDirectory + @"/../../Meow-Windows/assets/css/markdown.css""/>
                                <link rel=""stylesheet"" href=""" + Environment.CurrentDirectory + @"/../../Meow-Windows/assets/css/EnlighterJS.min.css""/>
                                <script type=""text/javascript"" src=""" + Environment.CurrentDirectory + @"/../../Meow-Windows/assets/javascript/MooTools-More-1.5.1-compressed.js""></script>
                                <script type=""text/javascript"" src=""" + Environment.CurrentDirectory + @"/../../Meow-Windows/assets/javascript/EnlighterJS.min.js""></script>
                                <script type=""text/javascript""></script>
                                <meta name=""EnlighterJS"" content=""Advanced javascript based syntax highlighting"" data-language=""html"" data-theme=""enlighter"" data-indent=""4"" data-selector-block=""pre"" data-selector-inline=""code.special"" data-rawcodebutton=""true"" data-windowbutton=""true"" data-infobutton=""true"" />
                            </head>
                            <body>"
                                + CommonMark.CommonMarkConverter.Convert(origin) + @"
                            </body>
                        </html>";

            return html;
        }
        /// <summary>
        /// using scrollchanged event instead of data binding
        /// </summary>
        private void inputEditor_ScrollChanged(object sender, ScrollChangedEventArgs e)
        {
            double a = e.VerticalOffset;
            var html = outputBrowser.Document as mshtml.HTMLDocument;
            html.parentWindow.scroll(0, (int )a);
        }

    }

    /// <summary>
    /// Here is a converter used to transfer between "true" and "false", which is used in line-number showing.
    /// </summary>
    public class InvertBool : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return !System.Convert.ToBoolean(value);
        }


        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return !System.Convert.ToBoolean(value);
        }  
    }
}
