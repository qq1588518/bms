using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_B_R_showallb_r : System.Web.UI.Page
{
    public List<B_R> brs;

    protected void Page_Load(object sender, EventArgs e)
    {
        brs = new DataB_R().GetB_RInfo();
    }
}