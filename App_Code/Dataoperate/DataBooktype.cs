using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// DataBooktype 的摘要说明
/// </summary>
public class DataBooktype
{
	public DataBooktype()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    /// <summary>
    /// 获取所有分类
    /// </summary>
    /// <returns></returns>
    public List<Booktype> GetBooktypes() {
        List<Booktype> booktypes = new List<Booktype>();
        MySqlDataReader mdr = null;
        MySqlConnection con = MysqlHelper.Connection();
        MysqlHelper mh = new MysqlHelper();
        mh.OpenConnection();
        MySqlCommand msc = new MySqlCommand("select * from booktype", con);
        mdr = msc.ExecuteReader(CommandBehavior.CloseConnection);
        while (mdr.Read()) {
            int t_id = mdr.GetInt16("t_id");
            int t_subid = mdr.GetInt16("t_subid");
            String t_name = mdr.GetString("t_name");
            Booktype booktype = new Booktype(t_id, t_subid, t_name);
            booktypes.Add(booktype);
        }
        mh.CloseConnection();
        return booktypes;
    }

    /// <summary>
    /// 添加分类
    /// </summary>
    /// <param name="t_subid"></param>
    /// <param name="t_name"></param>
    /// <returns></returns>
    public Boolean AddBookType(int t_subid, string t_name) {
        String sql = "insert into booktype(t_subid,t_name) values(" + t_subid + ",'" + t_name+"');";
        String[] sqls = new String[] { sql };
        return new MysqlOperate().IDU(sqls);
    }

    /// <summary>
    /// 删除分类
    /// </summary>
    /// <param name="p"></param>
    /// <returns></returns>
    public bool DeleteBookType(int booktypeid) {
        return new MysqlOperate().IDU(new String[] { "delete from booktype where t_id=" + booktypeid});
    }
}