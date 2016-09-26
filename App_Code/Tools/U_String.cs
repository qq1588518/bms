using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

/// <summary>
/// U_String 的摘要说明
/// </summary>
public class U_String
{
    /// <summary>
    /// 获得32位的MD5加密
    /// </summary>
    /// <param name="input"></param>
    /// <returns></returns>
 
    public static string GetMD5_32(string input) {
        System.Security.Cryptography.MD5 md5 = System.Security.Cryptography.MD5.Create();
        byte[] data = md5.ComputeHash(System.Text.Encoding.Default.GetBytes(input));
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < data.Length; i++) {
            sb.Append(data[i].ToString("x2"));
        }
        return sb.ToString();
    }
}