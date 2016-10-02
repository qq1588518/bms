using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Reader_editreader : System.Web.UI.Page
{
    public List<Reader> readers;
    /// <summary>
    /// 显示读者列表
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null || Session["username"] == null) {
            Response.Redirect("/index.aspx", true);
        }
         readers=new DataReader().GetReaderInfo();

         if (Request.QueryString.Get("readerid") != null) {
             if (new DataReader().DeleteReader(int.Parse(Request.QueryString.Get("readerid")))) {
                 Response.Redirect("/Views/Reader/editreader.aspx", true);
             }
         }
         
    }
}