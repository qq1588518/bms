using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_B_R_addb_r : System.Web.UI.Page
{
    public int b_id = 0;
    public int r_id = 0;
    public int number = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null || Session["username"] == null) {
            Response.Redirect("/index.aspx", true);
        }
        List<Book> books = new DataBook().GetBookInfo();
        booklist.DataTextField = "b_name";
        booklist.DataValueField = "b_id";
        booklist.DataSource = books;
        if (!booklist.SelectedValue.Equals("")) {
            b_id = int.Parse(booklist.SelectedValue);
        }
        booklist.DataBind();

        List<Reader> readers = new DataReader().GetReaderInfo();
        readerlist.DataTextField = "r_name";
        readerlist.DataValueField = "r_id";
        readerlist.DataSource = readers;
        if (!readerlist.SelectedValue.Equals("")) {
            r_id = int.Parse(readerlist.SelectedValue);
        }
        readerlist.DataBind();

        if (!numberfirst.Text.Equals("")) {
            number = int.Parse(numberfirst.Text);
        }
    }

    /// <summary>
    /// 添加借书信息
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void addb_r_Click(object sender, EventArgs e) {
        if (new DataB_R().AddB_R(r_id,b_id,number)) {
            Response.Redirect("/success.aspx", true);
        } else {
            Response.Write("<script>alert('添加失败，请重新添加！')</script>");
        }
    }
}