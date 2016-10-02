using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_B_R_editb_r : System.Web.UI.Page
{
    public List<B_R> brs;

    protected void Page_Load(object sender, EventArgs e) {
        if (Session["userid"] == null || Session["username"] == null) {
            Response.Redirect("/index.aspx", true);
        }
        brs = new DataB_R().GetB_RInfo();

        //删除关系
        if (Request.QueryString.Get("delete_brid") != null) {
            if (new DataB_R().DeleteB_R(int.Parse(Request.QueryString.Get("delete_brid")))) {
                Response.Redirect("/Views/B_R/editb_r.aspx", true);
            }
        }
    }
}