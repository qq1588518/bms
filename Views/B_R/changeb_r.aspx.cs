using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_B_R_changeb_r : System.Web.UI.Page
{
    int brid = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        brid = int.Parse(Request.QueryString.Get("brid"));
    }

    /// <summary>
    /// 修改关系
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void changeb_r_Click(object sender, EventArgs e) {
        if (!numberagain.Text.Equals("")) {
            int ib = 0;
            if (isback.Checked) {
                ib = 1;
            }
            if (new DataB_R().B_RChangeInfo(int.Parse(numberagain.Text), ib, brid)) {
                Response.Redirect("/success.aspx", true);
            } else {
                Response.Write("<script>alert('修改失败，请重新修改！')</script>");
            }
        }
    }
}