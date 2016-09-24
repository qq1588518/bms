using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// 实现数据的增删该查
/// </summary>
public class MysqlOperate
{
	/// <summary>
    /// 实现insert delete update操作
	/// </summary>
	/// <param name="sqls">传入sql语句数组</param>
	/// <returns></returns>
    public Boolean IDU(String[] sqls) {
        MySqlConnection con = null;
        MysqlHelper mh = null;
        MySqlCommand msc = null;
        String sql = null;
        try {
            //数据库操作
            con = MysqlHelper.Connection();
            mh = new MysqlHelper();
            mh.OpenConnection();
            foreach (String s in sqls) {
                sql += s;
            }
            msc = new MySqlCommand(sql, con);
            msc.ExecuteNonQuery();
        } catch (Exception) {
            return false;
        } finally {
            mh.CloseConnection();
        }
        return true;
    }

    /// <summary>
    /// 查询操作：select
    /// </summary>
    /// <param name="sql">传入sql语句单条或多条查询</param>
    /// <returns></returns>
    public MySqlDataReader S(String sql) {
        MySqlDataReader mdr = null;
        MySqlConnection con = MysqlHelper.Connection();
        MysqlHelper mh = new MysqlHelper();
        mh.OpenConnection();
        MySqlCommand msc = new MySqlCommand(sql, con);
        mdr = msc.ExecuteReader(CommandBehavior.CloseConnection);
        mh.CloseConnection();
        return mdr;
    }
}