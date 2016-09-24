using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// B_R 的摘要说明
/// </summary>
public class B_R
{
	public B_R()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    private int id; //关联表id

    public int Id {
        get { return id; }
        set { id = value; }
    }
    private int r_id;   //读者id

    public int R_id {
        get { return r_id; }
        set { r_id = value; }
    }
    private int b_id;   //图书id

    public int B_id {
        get { return b_id; }
        set { b_id = value; }
    }
    private int isback; //是否归还书籍

    public int Isback {
        get { return isback; }
        set { isback = value; }
    }
    private int numberfirst;    //首次借书天数

    public int Numberfirst {
        get { return numberfirst; }
        set { numberfirst = value; }
    }
    private int numberagain;    //续借天数

    public int Numberagain {
        get { return numberagain; }
        set { numberagain = value; }
    }
    private int b_booktime; //借书时间

    public int B_booktime {
        get { return b_booktime; }
        set { b_booktime = value; }
    }
    private int r_booktime; //还书时间

    public int R_booktime {
        get { return r_booktime; }
        set { r_booktime = value; }
    }
}