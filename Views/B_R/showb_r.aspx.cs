using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_B_R_showb_r : System.Web.UI.Page
{
    public B_R br;

    protected void Page_Load(object sender, EventArgs e)
    {
        br = new DataB_R().GetOneB_RInfo(int.Parse(Request.QueryString.Get("brid")));
    }
}