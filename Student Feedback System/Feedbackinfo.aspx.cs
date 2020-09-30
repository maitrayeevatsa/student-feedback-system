using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Services;
using AjaxControlToolkit;
using System.Web.Script.Services;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod]
    [ScriptMethod]
    public static Slide[] GetImage()
    {
        List<Slide> slide=new List<Slide>();
        string path = HttpContext.Current.Server.MapPath("~/images/");
        if(path.EndsWith("\\"))
        {
            path = path.Remove(path.Length - 1);
        }
        Uri pathuri = new Uri(path, UriKind.Absolute);
        string[] files = Directory.GetFiles(path);
        foreach(string file in files)
        {
            Uri filepaturi = new Uri(file, UriKind.Absolute);
            slide.Add(new Slide
            {
                Name= Path.GetFileNameWithoutExtension(file),
                ImagePath=pathuri.MakeRelativeUri(filepaturi).ToString()
        });
        }
            return slide.ToArray();
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}