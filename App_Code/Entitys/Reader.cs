using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Reader 的摘要说明
/// </summary>
public class Reader
{
	public Reader()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    private int r_id;   //读者id

    public int R_id {
        get { return r_id; }
        set { r_id = value; }
    }
    private String r_name;  //读者姓名

    public String R_name {
        get { return r_name; }
        set { r_name = value; }
    }
    private String r_sex;   //读者性别

    public String R_sex {
        get { return r_sex; }
        set { r_sex = value; }
    }
    private int r_no;   //读者图书号

    public int R_no {
        get { return r_no; }
        set { r_no = value; }
    }
    private int r_pno;  //读者联系方式

    public int R_pno {
        get { return r_pno; }
        set { r_pno = value; }
    }
    private String r_pic;   //读者照片

    public String R_pic {
        get { return r_pic; }
        set { r_pic = value; }
    }
}