// Copyright (c) 2009 Daniel Grunwald
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy of this
// software and associated documentation files (the "Software"), to deal in the Software
// without restriction, including without limitation the rights to use, copy, modify, merge,
// publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons
// to whom the Software is furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all copies or
// substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
// INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
// PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
// FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.

using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Windows;
using System.Windows.Data;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Threading;
using System.Xml;

using ICSharpCode.AvalonEdit.CodeCompletion;
using ICSharpCode.AvalonEdit.Folding;
using ICSharpCode.AvalonEdit.Highlighting;
using Microsoft.Win32;

using CommonMark;

namespace Meow_Windows
{
	/// <summary>
	/// Interaction logic for Window1.xaml
	/// </summary>
	public partial class Window1 : Window
	{
		public Window1()
		{
			// Load our custom highlighting definition
			IHighlightingDefinition customHighlighting;
			using (Stream s = typeof(Window1).Assembly.GetManifestResourceStream("Meow_Windows.CustomHighlighting.xshd")) {
				if (s == null)
					throw new InvalidOperationException("Could not find embedded resource");
				using (XmlReader reader = new XmlTextReader(s)) {
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
			dlg.CheckFileExists = true;
			if (dlg.ShowDialog() ?? false) {
				currentFileName = dlg.FileName;
				inputEditor.Load(currentFileName);
				inputEditor.SyntaxHighlighting = HighlightingManager.Instance.GetDefinitionByExtension(Path.GetExtension(currentFileName));
			}
		}
		
		void saveFileClick(object sender, EventArgs e)
		{
			if (currentFileName == null) {
				SaveFileDialog dlg = new SaveFileDialog();
				dlg.DefaultExt = ".html";
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
		
		void HighlightingComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			if (inputEditor.SyntaxHighlighting == null) {
				foldingStrategy = null;
			} else {
				switch (inputEditor.SyntaxHighlighting.Name) {
					case "XML":
						foldingStrategy = new XmlFoldingStrategy();
						inputEditor.TextArea.IndentationStrategy = new ICSharpCode.AvalonEdit.Indentation.DefaultIndentationStrategy();
						break;
					case "C#":
					case "C++":
					case "PHP":
					case "Java":
						inputEditor.TextArea.IndentationStrategy = new ICSharpCode.AvalonEdit.Indentation.CSharp.CSharpIndentationStrategy(inputEditor.Options);
						foldingStrategy = new BraceFoldingStrategy();
						break;
					default:
						inputEditor.TextArea.IndentationStrategy = new ICSharpCode.AvalonEdit.Indentation.DefaultIndentationStrategy();
						foldingStrategy = null;
						break;
				}
			}
			if (foldingStrategy != null) {
				if (foldingManager == null)
					foldingManager = FoldingManager.Install(inputEditor.TextArea);
				foldingStrategy.UpdateFoldings(foldingManager, inputEditor.Document);
			} else {
				if (foldingManager != null) {
					FoldingManager.Uninstall(foldingManager);
					foldingManager = null;
				}
			}
		}
		
		void foldingUpdateTimer_Tick(object sender, EventArgs e)
		{
			if (foldingStrategy != null) {
				foldingStrategy.UpdateFoldings(foldingManager, inputEditor.Document);
			}
		}
        #endregion

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

        private void parseDoc(object sender, EventArgs e)
        {
            outputBrowser.NavigateToString(ConvertExtendedASCII(addCSSJS(inputEditor.Text)));
        }

        private string addCSSJS(string origin)
        {
            var html = @"<html>
                            <meta http-equiv=""X-UA-Compatible"" content=""IE=edge""/>
                            <head>
                                <link rel=""stylesheet"" href=""" + Environment.CurrentDirectory + @"/../../Meow-Windows/assets/css/markdown.css""/>
                                <link rel=""stylesheet"" href=""" + Environment.CurrentDirectory + @"/../../Meow-Windows/assets/css/EnlighterJS.min.css""/>
                                <script type=""text/javascript"" defer=""true"">
                                var Sigma = document.getElementsByTagName('code');
	                            for (var i = Sigma.length - 1; i >= 0; i--) {
		                            Sigma[i].setAttribute(""data-enlighter-language"",""C#"");
	                            };
                                </script>
                                <script type=""text/javascript"" src=""" + Environment.CurrentDirectory + @"/../../Meow-Windows/assets/javascript/MooTools-More-1.5.1-compressed.js""></script>
                                <script type=""text/javascript"" src=""" + Environment.CurrentDirectory + @"/../../Meow-Windows/assets/javascript/EnlighterJS.min.js""></script>
                                <script type=""text/javascript""></script>
                                <meta name=""EnlighterJS"" content=""Advanced javascript based syntax highlighting"" data-language=""html"" data-theme=""enlighter"" data-indent=""4"" data-selector-block=""code"" data-selector-inline=""code.special"" data-rawcodebutton=""true"" data-windowbutton=""true"" data-infobutton=""true"" />
                            </head>
                            <body>"
                                + CommonMark.CommonMarkConverter.Convert(origin) + @"
                            </body>
                        </html>";

            return html;
        }
    }

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