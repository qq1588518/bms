using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Reader_changereader : System.Web.UI.Page
{
    int r_id = 0;

    /// <summary>
    /// 初始化信息
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null || Session["username"] == null) {
            Response.Redirect("/index.aspx", true);
        }
        r_id = int.Parse(Request.QueryString.Get("readerid"));
        Reader reader = new DataReader().GetOneReaderInfo(r_id);
        name.Text = reader.R_name;
        sex.Text = reader.R_sex;
        pno.Text = reader.R_pno;
        no.Text = reader.R_no;
    }

    /// <summary>
    /// 修改读者信息
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void changereader_Click(object sender, EventArgs e) {
        String r_name = name.Text;
        String r_sex = sex.Text;
        LibraryCard.no += 1;
        String r_no = no.Text;
        String r_pno = pno.Text;
        String filename = U_Date.NowTimeToUnix() + "." + U_File.GetFex(picture.FileName);
        String r_pic = Server.MapPath("/Uploads/") + filename;
        if (picture.HasFile) {
            picture.SaveAs(r_pic);
        }
        if (new DataReader().ChangeReaderInfo(r_name, r_sex, r_no, r_pno, "/Uploads/" + filename,r_id)) {
            Response.Redirect("/success.aspx", true);
        } else {
            Response.Write("<script>alert('修改失败，请重新修改！')</script>");
        }
    }
}