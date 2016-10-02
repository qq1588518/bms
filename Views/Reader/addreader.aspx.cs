using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Reader_addreader : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null || Session["username"] == null) {
            Response.Redirect("/index.aspx", true);
        }
    }

    /// <summary>
    /// 提交读者信息
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void addreader_Click(object sender, EventArgs e) {
        String r_name = name.Text;
        String r_sex = sex.Text;
        LibraryCard.no+=1;
        String r_no ="201601"+ (LibraryCard.no);
        String r_pno = pno.Text;
        String filename = U_Date.NowTimeToUnix() + "." + U_File.GetFex(picture.FileName);
        String r_pic = Server.MapPath("/Uploads/") + filename;
        if (picture.HasFile) {
            picture.SaveAs(r_pic);    
        }
        if (new DataReader().AddReader(r_name, r_sex, r_no, r_pno, "/Uploads/" + filename)) {
            Response.Redirect("/success.aspx", true);
        } else {
            Response.Write("<script>alert('添加失败，请重新添加！')</script>");
        }
    }
}