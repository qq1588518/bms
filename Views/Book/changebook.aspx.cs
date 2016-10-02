using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Book_changebook : System.Web.UI.Page
{
    int t_id = 0;
    String name = "";
    int no = 0;
    int total = 0;
    int newnumber = 0;
    int b_id = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        b_id = int.Parse(Request.QueryString.Get("bookid"));

        if (!(b_name.Text.Equals("") && b_no.Text.Equals("") && b_total.Text.Equals("") && b_newnumber.Text.Equals(""))) {
            name = b_name.Text;
            no = int.Parse(b_no.Text);
            total = int.Parse(b_total.Text);
            newnumber = int.Parse(b_newnumber.Text);
        }

        Book book = new DataBook().GetOneBookInfo(int.Parse(Request.QueryString.Get("bookid")));
        b_name.Text = book.B_name;
        b_no.Text =""+ book.B_no;
        b_total.Text = "" + book.B_total;
        b_newnumber.Text = "" + book.B_total;

        List<Booktype> booktypes = new DataBooktype().GetBooktypes();
        booklist.DataTextField = "t_name";
        booklist.DataValueField = "t_id";
        booklist.DataSource = booktypes;
        t_id = int.Parse(booklist.SelectedValue);
        booklist.DataBind();
    }

    /// <summary>
    /// 修改图书信息
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void changebook_Click(object sender, EventArgs e) {
        if (new DataBook().BookChangeInfo(name, no, total, newnumber, t_id, b_id)) {
            Response.Redirect("/success.aspx", true);
        } else {
            Response.Write("<script>alert('修改失败，请重新修改！')</script>");
        }
    }
}