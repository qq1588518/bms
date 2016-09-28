using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// 处理更改分类操作
/// </summary>
public partial class Views_Booktype_dochangebooktype : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Get("t_id") != null && Request.QueryString.Get("t_name") != null && Request.QueryString.Get("t_subid") != null) {
            int t_id = int.Parse(Request.QueryString.Get("t_id"));
            String t_name = Request.QueryString.Get("t_name");
            int t_subid = int.Parse(Request.QueryString.Get("t_subid"));

            if (new DataBook().ChangeBookTypeInfo(t_id, t_subid, t_name)) {
                Response.Redirect("/success.aspx", true);
            } else {
                Response.Write("<script>alert('修改失败，请重新修改！')</script>");
            }
        }
    }
}