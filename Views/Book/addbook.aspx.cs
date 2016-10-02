using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Book_addbook : System.Web.UI.Page
{
    String t_id = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null || Session["username"] == null) {
            Response.Redirect("/index.aspx", true);
        }
        List<Booktype> booktypes= new DataBooktype().GetBooktypes();
        booklist.DataTextField = "t_name";
        booklist.DataValueField = "t_id";
        booklist.DataSource = booktypes;
        t_id = booklist.SelectedValue;
        booklist.DataBind();
    }

    /// <summary>
    /// 图书入库
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void addbook_Click(object sender, EventArgs e) {
        if (new DataBook().AddBook(int.Parse(t_id), b_name.Text, int.Parse(b_no.Text), int.Parse(b_total.Text), int.Parse(b_total.Text), int.Parse(U_Date.NowTimeToUnix()))) {
            Response.Redirect("/success.aspx", true);
        } else {
            Response.Write("<script>alert('添加失败，请重新添加！')</script>");
        }
    }
}