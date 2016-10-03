using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Booktype_editbooktype : System.Web.UI.Page
{
    public List<Booktype> booktypes;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null || Session["username"] == null) {
            Response.Redirect("/index.aspx", true);
        }
        booktypes = new DataBooktype().GetBooktypes();

        if (Request.QueryString.Get("delete_booktypeid") != null) {
            if (new DataBooktype().DeleteBookType(int.Parse(Request.QueryString.Get("booktypeid")))) {
                Response.Redirect("/Views/Booktype/editbooktype.aspx", true);
            }
        }
    }
}