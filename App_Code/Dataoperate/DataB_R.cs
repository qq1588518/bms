using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// DataB_R 的摘要说明
/// </summary>
public class DataB_R
{
	public DataB_R()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    /// <summary>
    /// 添加借书信息
    /// </summary>
    /// <param name="r_id"></param>
    /// <param name="b_id"></param>
    /// <param name="numberfirst"></param>
    /// <returns></returns>
    public bool AddB_R(int r_id, int b_id, int numberfirst) {
        Int32 b_booktime =Int32.Parse( U_Date.NowTimeToUnix());
        long r_booktime = Int64.Parse(U_Date.NowTimeToUnix() + 86400*numberfirst);
        return new MysqlOperate().IDU(new String[]{"insert into b_r(r_id,b_id,numberfirst,b_booktime,r_booktime) values("+r_id+","+b_id+","+numberfirst+","+b_booktime+","+r_booktime+")"});
    }
}