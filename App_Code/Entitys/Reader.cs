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

    public Reader(int r_id, string r_name, string r_sex, string r_no, string r_pno, string r_pic) {
        this.r_id = r_id;
        this.r_name = r_name;
        this.r_sex = r_sex;
        this.r_no = r_no;
        this.r_pno = r_pno;
        this.r_pic = r_pic;
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
    private String r_no;   //读者图书号

    public String R_no {
        get { return r_no; }
        set { r_no = value; }
    }
    private String r_pno;  //读者联系方式

    public String R_pno {
        get { return r_pno; }
        set { r_pno = value; }
    }
    private String r_pic;   //读者照片
    private string r_id1;

    public String R_pic {
        get { return r_pic; }
        set { r_pic = value; }
    }
}