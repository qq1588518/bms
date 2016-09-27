using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Reader_editreader : System.Web.UI.Page
{
    public List<Reader> readers;
    /// <summary>
    /// 显示读者列表
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
         readers=new DataReader().GetReaderInfo();
    }

    /// <summary>
    /// 显示读者信息
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void showreader_Click(object sender, EventArgs e) {

    }

    /// <summary>
    /// 修改读者信息
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void changereader_Click(object sender, EventArgs e) {

    }

    /// <summary>
    /// 删除读者
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void deletereader_Click(object sender, EventArgs e) {

    }
}