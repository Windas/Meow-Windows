using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Web;

namespace Meow_Windows
{
    public class saveFiles
    {
        public void saveToHTML(string contentHTML, string path)
        {
            if (path == null)
                return;
            string filePath = HttpContext.Current.Server.MapPath(path);
            using (StreamWriter sw = new StreamWriter(filePath))
            {
                sw.Write(contentHTML);
            }
        }
    }
}
