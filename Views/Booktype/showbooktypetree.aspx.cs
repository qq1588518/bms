using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Booktype_showbooktypetree : System.Web.UI.Page
{
    public List<Booktype> booktypesons;
    public List<Booktype> booktypeson = new List<Booktype>();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null || Session["username"] == null) {
            Response.Redirect("/index.aspx", true);
        }
        List<Booktype> booktypes = new DataBooktype().GetBooktypes();

        booktypesons=BooktypeTree(booktypes, 1,1);
    }

    /// <summary>
    /// 找子孙树
    /// </summary>
    /// <param name="booktypes"></param>
    /// <param name="id"></param>
    /// <returns></returns>
    public List<Booktype> BooktypeTree(List<Booktype> booktypes, int id,int lev) {
        foreach (Booktype booktype in booktypes) {
            if (booktype.T_subid == id&&booktype.T_id!=1) {
                booktype.Lev = lev;
                booktypeson.Add(booktype);
                BooktypeTree(booktypes,booktype.T_id,lev+1);
            } 
        }
        return booktypeson;
    }
}