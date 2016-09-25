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
}