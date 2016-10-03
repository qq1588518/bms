using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Manager_changemanager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) {
        if (Session["userid"] == null || Session["username"] == null) {
            Response.Redirect("/index.aspx", true);
        }
        String[] userinfo = new DataManager().SelectUser(Session["userid"].ToString());
        u_name.Text = userinfo[0];
        u_password.Text = userinfo[1];
        u_pno.Text = userinfo[2];
    }

    /// <summary>
    /// 更改用户信息
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button2_Click(object sender, EventArgs e) {
        String name = u_name.Text;
        String pno = u_pno.Text;
        String password = u_password.Text;
        String password_again = u_password_again.Text;
        if (!(password.Trim().Equals("") && password_again.Trim().Equals(""))) {
            if (new DataManager().UserChangeInfo(name, pno, password_again, Session["userid"].ToString())) {
                Response.Redirect("/success.aspx", true);
            } else {
                Response.Write("<script>alert('修改失败，请重新修改！')</script>");
            }
        }
    }
}