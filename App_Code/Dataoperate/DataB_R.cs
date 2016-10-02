using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// DataB_R 的摘要说明
/// </summary>
public class DataB_R
{
	public DataB_R()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    /// <summary>
    /// 添加借书信息
    /// </summary>
    /// <param name="r_id"></param>
    /// <param name="b_id"></param>
    /// <param name="numberfirst"></param>
    /// <returns></returns>
    public bool AddB_R(int r_id, int b_id, int numberfirst) {
        Int32 b_booktime =Int32.Parse( U_Date.NowTimeToUnix());
        long r_booktime = Int64.Parse(U_Date.NowTimeToUnix() + 86400*numberfirst);
        return new MysqlOperate().IDU(new String[]{"insert into b_r(r_id,b_id,numberfirst,b_booktime,r_booktime) values("+r_id+","+b_id+","+numberfirst+","+b_booktime+","+r_booktime+")"});
    }

    /// <summary>
    /// 查看所有信息
    /// </summary>
    /// <returns></returns>
    public List<B_R> GetB_RInfo() {
        List<B_R> brs = new List<B_R>();
        MySqlDataReader mdr = null;
        MySqlConnection con = MysqlHelper.Connection();
        MysqlHelper mh = new MysqlHelper();
        mh.OpenConnection();
        MySqlCommand msc = new MySqlCommand("select * from b_r", con);
        mdr = msc.ExecuteReader(CommandBehavior.CloseConnection);
        while (mdr.Read()) {
            int id = mdr.GetInt16("id");
            int r_id = mdr.GetInt16("r_id");
            int b_id = mdr.GetInt16("b_id");
            int isback = mdr.GetInt16("isback");
            int numberfirst = mdr.GetInt16("numberfirst");
            int numberagain = mdr.GetInt16("numberagain");
            int b_booktime = mdr.GetInt32("b_booktime");
            long r_booktime = mdr.GetInt64("r_booktime");
            B_R br = new B_R(id,r_id, b_id, isback, numberfirst, numberagain, b_booktime, r_booktime);
            brs.Add(br);
        }
        mh.CloseConnection();
        return brs;
    }

    /// <summary>
    /// 查看当前信息
    /// </summary>
    /// <param name="p"></param>
    /// <returns></returns>
    public B_R GetOneB_RInfo(int brid) {
        B_R br=null;
        MySqlDataReader mdr = null;
        MySqlConnection con = MysqlHelper.Connection();
        MysqlHelper mh = new MysqlHelper();
        mh.OpenConnection();
        MySqlCommand msc = new MySqlCommand("select * from b_r where id=" + brid, con);
        mdr = msc.ExecuteReader(CommandBehavior.CloseConnection);
        if (mdr.Read()) {
            int id = mdr.GetInt16("id");
            int r_id = mdr.GetInt16("r_id");
            int b_id = mdr.GetInt16("b_id");
            int isback = mdr.GetInt16("isback");
            int numberfirst = mdr.GetInt16("numberfirst");
            int numberagain = mdr.GetInt16("numberagain");
            int b_booktime = mdr.GetInt32("b_booktime");
            long r_booktime = mdr.GetInt64("r_booktime");
            br = new B_R(id, r_id, b_id, isback, numberfirst, numberagain, b_booktime, r_booktime);
        }
        mh.CloseConnection();
        return br;
    }

    /// <summary>
    /// 删除关系
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public bool DeleteB_R(int id) {
        return new MysqlOperate().IDU(new String[] { "delete from b_r where id=" + id });
    }
}