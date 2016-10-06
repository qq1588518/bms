<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editb_r.aspx.cs" Inherits="Views_B_R_editb_r" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h2 style="color:blue;"><i>编辑借/还/续借书</i></h2><hr/><br/>
    <form id="form1" runat="server">
    <div>
        <table width="80%" border="1" cellspacing="0" cellpadding="5">
            <tr>
                <th>编号</th>
                <th>读者</th>
                <th>图书</th>
                <th>是否归还</th>
                <th>借书时间</th>
                <th>应还书时间</th>
                <th>编辑</th>
            </tr>
            <%int i = 0; foreach (B_R br in brs) {;%>
            <tr>
                <td align="center"><%=i++ %></td>
                <td align="center"><%=new DataReader().GetOneReaderInfo(br.R_id).R_name %></td>
                <td align="center"><%=new DataBook().GetOneBookInfo(br.B_id).B_name %></td>
                <td align="center"><%=br.Isback==1?"是":"否" %></td>
                <td align="center"><%=U_Date.TimeFormat(""+br.B_booktime,"yyyy-MM-dd hh:mm:ss") %></td>
                <td align="center"><%=U_Date.TimeFormat(""+br.R_booktime,"yyyy-MM-dd hh:mm:ss") %></td>
                <td align="center">
                    <a href="/Views/B_R/showb_r.aspx?brid=<%=br.Id %>" >查看</a>
                    <a href="/Views/B_R/changeb_r.aspx?brid=<%=br.Id %>" >修改</a>
                    <a href="/Views/B_R/editb_r.aspx?delete_brid=<%=br.Id %>" >删除</a>
                </td>
            </tr>
            <%}; %>
        </table>
    </div>
    </form>
</body>
</html>
