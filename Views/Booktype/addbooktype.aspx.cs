using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Booktype_addbooktype : System.Web.UI.Page
{
    public List<Booktype> booktypes;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null || Session["username"] == null) {
            Response.Redirect("/index.aspx", true);
        }
        booktypes = new DataBooktype().GetBooktypes();

        if (Request.QueryString.Get("t_name") != null && Request.QueryString.Get("t_subid") != null) {
            String t_name = Request.QueryString.Get("t_name");
            int t_subid = int.Parse(Request.QueryString.Get("t_subid"));
            if (new DataBooktype().AddBookType(t_subid, t_name)) {
                Response.Redirect("/success.aspx", true);
            } else {
                Response.Write("<script>alert('添加失败，请重新添加！')</script>");
            }
        }
    }
}