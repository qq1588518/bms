using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Booktype_changebooktype : System.Web.UI.Page
{
    public List<Booktype> booktypes;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null || Session["username"] == null) {
            Response.Redirect("/index.aspx", true);
        }
        booktypes = new DataBooktype().GetBooktypes();
    }
}