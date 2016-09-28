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
    /// 修改分类信息
    /// </summary>
    /// <param name="t_id"></param>
    /// <param name="t_subid"></param>
    /// <param name="t_name"></param>
    /// <returns></returns>
    public Boolean ChangeBookTypeInfo(int t_id, int t_subid, string t_name) {
        String sql = "update booktype set t_subid=" + t_subid + ",t_name='" + t_name + "' where t_id=" + t_id + ";";
        String[] sqls = new String[] { sql };
        return new MysqlOperate().IDU(sqls);
    }
}