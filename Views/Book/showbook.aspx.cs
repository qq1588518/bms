using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Book_showbook : System.Web.UI.Page
{
    public Book book;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null || Session["username"] == null) {
            Response.Redirect("/index.aspx", true);
        }
        book = new DataBook().GetOneBookInfo(int.Parse(Request.QueryString.Get("bookid")));
    }
}