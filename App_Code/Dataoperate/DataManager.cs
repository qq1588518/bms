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
    /// <summary>
    /// 更改当前用户信息
    /// </summary>
    /// <param name="u_name"></param>
    /// <param name="u_pno"></param>
    /// <param name="u_password"></param>
    /// <returns></returns>
    public Boolean UserChangeInfo(String u_name, String u_pno, String u_password,String userid) {
        String password = U_String.GetMD5_32(u_password).Substring(8, 16).Trim();
        String sql = "update manager set u_name='" + u_name + "',u_pno='" + u_pno + "',u_password='" + password + "' where u_id=" + int.Parse(userid)+";";
        String[] sqls = new String[] { sql };
        return new MysqlOperate().IDU(sqls);
    }

    /// <summary>
    /// 查看当前用户信息
    /// </summary>
    /// <param name="userid"></param>
    /// <returns></returns>
    public String[] SelectUser(String userid) {
        String[] userinfo=new String[3];
        MySqlDataReader mdr = null;
        MySqlConnection con = MysqlHelper.Connection();
        MysqlHelper mh = new MysqlHelper();
        mh.OpenConnection();
        MySqlCommand msc = new MySqlCommand("select u_name,u_password,u_pno from manager where u_id="+int.Parse(userid), con);
        mdr = msc.ExecuteReader(CommandBehavior.CloseConnection);
        while (mdr.Read()) {
            userinfo[0] = mdr.GetString("u_name");
            userinfo[1] = mdr.GetString("u_password");
            userinfo[2] = mdr.GetString("u_pno");
        }
        mh.CloseConnection();
        return userinfo;
    }

    /// <summary>
    /// 管理员注册验证
    /// </summary>
    /// <param name="u_name"></param>
    /// <param name="u_pno"></param>
    /// <param name="u_password"></param>
    /// <returns></returns>
    public Boolean UserRegister(String u_name, String u_pno, String u_password) {
        String password = U_String.GetMD5_32(u_password).Substring(8, 16);
        String sql = "insert into manager(u_name,u_pno,u_password) values('" + u_name + "','" + u_pno + "','" + password + "');";
        String[] sqls = new String[] { sql };
        return new MysqlOperate().IDU(sqls);
    }

    /// <summary>
    /// 登录验证
    /// </summary>
    /// <param name="name"></param>
    /// <param name="password"></param>
    /// <returns></returns>
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
            if (u_name.Trim().Equals(name.Trim()) && U_String.GetMD5_32(password).Substring(8, 16).Trim().Equals(u_password.Trim())) {
                mh.CloseConnection();
                return u_id + "";
            }
        }
        mh.CloseConnection();
        return null;
    }
        
}