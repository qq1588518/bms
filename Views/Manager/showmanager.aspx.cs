using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Manager_showmanager : System.Web.UI.Page
{
    protected String username;
    protected String password;
    protected String phone;

    protected void Page_Load(object sender, EventArgs e)
    {
        String[] userinfo=new DataManager().SelectUser(Session["userid"].ToString());
        username = userinfo[0];
        password = userinfo[1];
        phone = userinfo[2];
    }
}