using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Security.RightsManagement;
using System.Text;
using System.Threading.Tasks;
using Dragablz;
using ICSharpCode.AvalonEdit.Highlighting;

using Dragablz.Dockablz;
//using M.Annotations;

namespace Meow_Windows
{
    public class Window1Model
    {
        private readonly IInterTabClient _interTabClient;
        private readonly ObservableCollection<TabContent> _tabContents = new ObservableCollection<TabContent>();
        private static int num = 1;

        public Window1Model()
        {
            _interTabClient = new DefaultInterTabClient();
        }

        public static Window1Model CreateWithSamples()
        {
            var result = new Window1Model();
            var editArea = new EditArea();
            editArea.inputEditor.Load("帮助文档.md");//TODO: rizenmebunengzhijiediaoyongziyuanwenjiana
            editArea.inputEditor.SyntaxHighlighting = HighlightingManager.Instance.GetDefinitionByExtension(".md");

            result.TabContents.Add(new TabContent("帮助文档.md", editArea));

            return result;
        }

        public ObservableCollection<TabContent> TabContents
        {
            get { return _tabContents; }
        }

        public IInterTabClient InterTabClient
        {
            get { return _interTabClient; }
        }

        public static Func<object> NewItemFactory
        {
            get { return () => new TabContent("Untitled-" + num++, new EditArea()); }
        }

    }
}
