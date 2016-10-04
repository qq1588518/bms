using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Reader_changereader : System.Web.UI.Page
{
    int r_id = 0;
    public String r_name;
    public String r_sex;
    public String r_pno;
    public String r_pic;

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

        r_name = name.Text;
        r_sex = sex.Text;
        r_pno = pno.Text;

        r_id = int.Parse(Request.QueryString.Get("readerid"));
        Reader reader = new DataReader().GetOneReaderInfo(r_id);
        name.Text = reader.R_name;
        sex.Text = reader.R_sex;
        pno.Text = reader.R_pno;
        no.Text = reader.R_no;
        r_pic = reader.R_pic;
    }

    /// <summary>
    /// 修改读者信息
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void changereader_Click(object sender, EventArgs e) {
        LibraryCard.no += 1;
        String r_no = no.Text;
        String filepath = "";
        if (!picture.HasFile) {
            filepath = r_pic;
        } else {
            String filename = U_Date.NowTimeToUnix() + "." + U_File.GetFex(picture.FileName);
            r_pic = Server.MapPath("/Uploads/") + filename;
            filepath = "/Uploads/" + filename;
            picture.SaveAs(r_pic);
        }
        if (new DataReader().ChangeReaderInfo(r_name, r_sex, r_no, r_pno,filepath ,r_id)) {
            Response.Redirect("/success.aspx", true);
        } else {
            Response.Write("<script>alert('修改失败，请重新修改！')</script>");
        }
    }
}