using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// DataReader 的摘要说明
/// </summary>
public class DataReader
{
	public DataReader()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    /// <summary>
    /// 添加读者信息
    /// </summary>
    /// <param name="r_name"></param>
    /// <param name="r_sex"></param>
    /// <param name="r_no"></param>
    /// <param name="r_pno"></param>
    /// <param name="r_pic"></param>
    /// <returns></returns>
    public Boolean AddReader(String r_name,String r_sex,String r_no, String r_pno, String r_pic) {
        String password = U_String.GetMD5_32(r_pic).Substring(8, 16);
        String sql = "insert into reader(r_name,r_sex,r_no,r_pno,r_pic) values('" + r_name + "','" + r_sex + "','" + r_no + "','" + r_pno + "','" + r_pic + "');";
        String[] sqls = new String[] { sql };
        return new MysqlOperate().IDU(sqls);
    }
}