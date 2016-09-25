using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// DataManager 的摘要说明
/// </summary>
public class DataManager
{
    public String checkLogin(String name,String password) {
        MySqlDataReader mdr = null;
        MySqlConnection con = MysqlHelper.Connection();
        MysqlHelper mh = new MysqlHelper();
        mh.OpenConnection();
        MySqlCommand msc = new MySqlCommand("select u_id,u_name,u_password from manager", con);
        mdr = msc.ExecuteReader(CommandBehavior.CloseConnection);
        while (mdr.Read()) {
            Int16 u_id = mdr.GetInt16("u_id");
            String u_name = mdr.GetString("u_name");
            String u_password = mdr.GetString("u_password");
            if (u_name.Trim().Equals(name.Trim()) && u_password.Trim().Equals(password.Trim())) {
                mh.CloseConnection();
                return u_id + "";
            }
        }
        mh.CloseConnection();
        return null;
    }
        
}