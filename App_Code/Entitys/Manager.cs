using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Manager 的摘要说明
/// </summary>
public class Manager
{
	public Manager()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    private int u_id;   //管理员id

    public int U_id {
        get { return u_id; }
        set { u_id = value; }
    }
    private String u_name;  //管理员用户名

    public String U_name {
        get { return u_name; }
        set { u_name = value; }
    }
    private String u_password;  //管理员密码

    public String U_password {
        get { return u_password; }
        set { u_password = value; }
    }
    private String u_pno;   //管理员联系方式

    public String U_pno {
        get { return u_pno; }
        set { u_pno = value; }
    }
}