﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected String username;  //当前用户账号
    protected void Page_Load(object sender, EventArgs e)
    {
        username = Session["username"].ToString();
    }
}