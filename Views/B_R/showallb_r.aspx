<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showallb_r.aspx.cs" Inherits="Views_B_R_showallb_r" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h2 style="color:blue;"><i>查看所有借/还书信息</i></h2><hr/><br/>
    <form id="form1" runat="server">
    <div>
        <table width="80%" border="1" cellspacing="0" cellpadding="5">
            <tr>
                <th>编号</th>
                <th>读者</th>
                <th>图书</th>
                <th>是否归还</th>
                <th>借书天数</th>
                <th>续借天数</th>
                <th>借书时间</th>
                <th>应还书时间</th>
            </tr>
            <%int i = 0; foreach (B_R br in brs) {;%>
            <tr>
                <td align="center"><%=i++ %></td>
                <td align="center"><%=new DataReader().GetOneReaderInfo(br.R_id).R_name %></td>
                <td align="center"><%=new DataBook().GetOneBookInfo(br.B_id).B_name %></td>
                <td align="center"><%=br.Isback==1?"是":"否" %></td>
                <td align="center"><%=br.Numberfirst %></td>
                <td align="center"><%=br.Numberagain %></td>
                <td align="center"><%=U_Date.TimeFormat(""+br.B_booktime,"yyyy-MM-dd hh:mm:ss") %></td>
                <td align="center"><%=U_Date.TimeFormat(""+br.R_booktime,"yyyy-MM-dd hh:mm:ss") %></td>
            </tr>
            <%}; %>
        </table>
    </div>
    </form>
</body>
</html>
