using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //构造器
    }

    /// <summary>
    /// 点击注册按钮
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button2_Click(object sender, EventArgs e) {
        String name = u_name.Text;
        String pno = u_pno.Text;
        String password = u_password.Text;
        String password_again = u_password_again.Text;
        if (!(password.Trim().Equals("") && password_again.Trim().Equals(""))) {
            if (new DataManager().UserRegister(name, pno, password)) {
                Response.Redirect("admin.aspx", true);
            } else {
                Response.Write("<script>alert('注册失败，请重新注册！')</script>");
            }
        }
    }
}