using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Reader_showreader : System.Web.UI.Page
{
    public Reader reader;

    protected void Page_Load(object sender, EventArgs e)
    {
        int r_id=int.Parse(Request.QueryString.Get("readerid"));
        reader=new DataReader().GetOneReaderInfo(r_id);
    }
}