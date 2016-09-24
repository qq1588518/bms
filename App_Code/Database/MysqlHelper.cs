using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Mysql数据库类
/// </summary>
public class MysqlHelper
{
    //链接字符串
    private static String constr = "server=localhost;user id=root;password=;database=bms;Persist Security Info=True;Charset=utf8;";
    //数据库连接
    private static MySqlConnection connection;

    //建立数据库连接
    public static MySqlConnection Connection() {
        if (connection == null) {
            connection = new MySqlConnection(constr);
        }
        return connection;
    }

    //打开数据库连接
    public void OpenConnection() {
        if (connection.State == ConnectionState.Closed) {
            connection.Open();
        } else if (connection.State == ConnectionState.Broken) {
            connection.Close();
            connection.Open();
        }
    }

    //关闭数据库连接
    public void CloseConnection() {
        if (connection.State == ConnectionState.Open || connection.State == ConnectionState.Broken) {
            connection.Close();
        }
    }
}