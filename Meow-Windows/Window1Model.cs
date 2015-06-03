using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Security.RightsManagement;
using System.Text;
using System.Threading.Tasks;
using Dragablz;
using Dragablz.Dockablz;
//using M.Annotations;

namespace Meow_Windows
{
    public class Window1Model
    {
        private readonly IInterTabClient _interTabClient;
        private readonly ObservableCollection<TabContent> _tabContents = new ObservableCollection<TabContent>();

        public Window1Model()
        {
            _interTabClient = new DefaultInterTabClient();
            
            
        }

        public static Window1Model CreateWithSamples()
        {
            var result = new Window1Model();
            
            result.TabContents.Add(new TabContent("File 1", new EditArea()));

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

        public Func<object> NewItemFactory
        {
            get { return () => new TabContent("New", new EditArea()); }
        }

    }
}
