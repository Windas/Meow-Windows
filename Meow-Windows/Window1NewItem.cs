using System;
using Dragablz;


namespace Meow_Windows
{
    public static class Window1NewItem
    {
        static int num = 1;
        public static Func<HeaderedItemViewModel> Factory
        {
            get
            {
                return
                    () =>
                    {
                        return new HeaderedItemViewModel()
                        {
                            Header = "New File " + num++.ToString(),
                            Content = new EditArea()
                        };
                    };
            }
        }
    }
}
