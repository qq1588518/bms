using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// DataBook 的摘要说明
/// </summary>
public class DataBook
{
	public DataBook()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    /// <summary>
    /// 添加图书
    /// </summary>
    /// <param name="t_id"></param>
    /// <param name="b_name"></param>
    /// <param name="b_no"></param>
    /// <param name="b_total1"></param>
    /// <param name="b_total2"></param>
    /// <param name="p"></param>
    /// <returns></returns>
    public bool AddBook(int t_id, string b_name, int b_no, int b_total, int b_newnumber, int b_buildtime) {
        return new MysqlOperate().IDU(new String[] {"insert into book(t_id,b_name,b_no,b_total,b_newnumber,b_buildtime) values("+t_id+",'"+b_name+"',"+b_no+","+b_total+","+b_newnumber+","+b_buildtime+");" });
    }

    /// <summary>
    /// 获取所有图书信息
    /// </summary>
    /// <returns></returns>
    public List<Book> GetBookInfo() {
        List<Book> books = new List<Book>();
        MySqlDataReader mdr = null;
        MySqlConnection con = MysqlHelper.Connection();
        MysqlHelper mh = new MysqlHelper();
        mh.OpenConnection();
        MySqlCommand msc = new MySqlCommand("select * from book", con);
        mdr = msc.ExecuteReader(CommandBehavior.CloseConnection);
        while (mdr.Read()) {
            int b_id = mdr.GetInt16("b_id");
            int t_id = mdr.GetInt16("t_id");
            String b_name = mdr.GetString("b_name");
            int b_no = mdr.GetInt16("b_no");
            int b_total = mdr.GetInt16("b_total");
            int b_newnumber = mdr.GetInt16("b_newnumber");
            int b_buildtime = mdr.GetInt32("b_buildtime");
            Book book = new Book(b_id,t_id,b_name,b_no,b_total,b_newnumber,b_buildtime);
            books.Add(book);
        }
        mh.CloseConnection();
        return books;
    }

    /// <summary>
    /// 获取当前图书信息
    /// </summary>
    /// <param name="p"></param>
    /// <returns></returns>
    public Book GetOneBookInfo(int bookid) {
        Book book=null;
        MySqlDataReader mdr = null;
        MySqlConnection con = MysqlHelper.Connection();
        MysqlHelper mh = new MysqlHelper();
        mh.OpenConnection();
        MySqlCommand msc = new MySqlCommand("select * from book where b_id="+bookid, con);
        mdr = msc.ExecuteReader(CommandBehavior.CloseConnection);
        while (mdr.Read()) {
            int b_id = mdr.GetInt16("b_id");
            int t_id = mdr.GetInt16("t_id");
            String b_name = mdr.GetString("b_name");
            int b_no = mdr.GetInt16("b_no");
            int b_total = mdr.GetInt16("b_total");
            int b_newnumber = mdr.GetInt16("b_newnumber");
            int b_buildtime = mdr.GetInt32("b_buildtime");
            book = new Book(b_id, t_id, b_name, b_no, b_total, b_newnumber, b_buildtime);
        }
        mh.CloseConnection();
        return book;
    }
}