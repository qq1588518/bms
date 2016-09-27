using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// U_File 的摘要说明
/// </summary>
public class U_File
{
	public U_File()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    /// <summary>
    /// 获取文件后缀名
    /// </summary>
    /// <param name="fileName"></param>
    /// <returns></returns>
    public static String GetFex(String fileName) {
        return fileName.Substring(fileName.LastIndexOf(".") + 1);
    }
}