using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Booktype 的摘要说明
/// </summary>
public class Booktype
{
	public Booktype()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    public Booktype(int t_id, int t_subid, string t_name) {
        // TODO: Complete member initialization
        this.t_id = t_id;
        this.t_subid = t_subid;
        this.t_name = t_name;
    }
    private int t_id;   //图书分类id

    public int T_id {
        get { return t_id; }
        set { t_id = value; }
    }
    private int t_subid;    //图书子分类id

    public int T_subid {
        get { return t_subid; }
        set { t_subid = value; }
    }
    private String t_name;  //分类名称

    public String T_name {
        get { return t_name; }
        set { t_name = value; }
    }
}