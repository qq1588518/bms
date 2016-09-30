using System;
using System.Collections.Generic;
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
}