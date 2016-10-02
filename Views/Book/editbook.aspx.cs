using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Book_editbook : System.Web.UI.Page
{
    public List<Book> books;

    protected void Page_Load(object sender, EventArgs e)
    {
        books = new DataBook().GetBookInfo();

        //删除图书
        if (Request.QueryString.Get("delete_bookid") != null) {
            if (new DataBook().DeleteBook(int.Parse(Request.QueryString.Get("delete_bookid")))) {
                Response.Redirect("/Views/Book/editbook.aspx", true);
            }
        }
    }
}