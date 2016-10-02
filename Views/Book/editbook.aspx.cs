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
    }
}