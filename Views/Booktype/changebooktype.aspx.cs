using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Booktype_changebooktype : System.Web.UI.Page
{
    public int booktypeid=0;
    public int t_subid=0;
    public String name = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null || Session["username"] == null) {
            Response.Redirect("/index.aspx", true);
        }
        booktypeid = int.Parse(Request.QueryString.Get("booktypeid"));
        if(!(t_name.Text.Equals(""))){
            name = t_name.Text;
        }

        t_name.Text = Request.QueryString.Get("type_name");

        List<Booktype> booktypes = new DataBooktype().GetBooktypes();
        booktypelist.DataTextField = "t_name";
        booktypelist.DataValueField = "t_id";
        booktypelist.DataSource = booktypes;
        if (!booktypelist.SelectedValue.Equals("")) {
            t_subid = int.Parse(booktypelist.SelectedValue);
        }
        booktypelist.DataBind();

    }

    /// <summary>
    /// 处理更改分类操作
    /// </summary>
    protected void changebooktype_Click(object sender, EventArgs e) {
        if (new DataBooktype().ChangeBookTypeInfo(booktypeid, t_subid, name)) {
                Response.Redirect("/success.aspx", true);
            } else {
                Response.Write("<script>alert('修改失败，请重新修改！')</script>");
            }
    }
}