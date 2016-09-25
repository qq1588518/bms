using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void login_Click(object sender, EventArgs e) {
        String userid = new DataManager().checkLogin(name.Text, password.Text);
        if (userid != null) {
            Session["userid"] = userid;
            Response.Redirect("admin.aspx", true);
        } else {
            Response.Write("<script>alert('密码错误，请重新登陆！')</script>");
        }
    }
}