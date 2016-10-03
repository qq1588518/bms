<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editb_r.aspx.cs" Inherits="Views_B_R_editb_r" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="70%" border="1" cellspacing="0" cellpadding="5">
            <tr>
                <td>编号</td>
                <td>读者</td>
                <td>图书</td>
                <td>是否归还</td>
                <td>借书时间</td>
                <td>应还书时间</td>
                <td>编辑</td>
            </tr>
            <%int i = 0; foreach (B_R br in brs) {;%>
            <tr>
                <td><%=i++ %></td>
                <td><%=new DataReader().GetOneReaderInfo(br.R_id).R_name %></td>
                <td><%=new DataBook().GetOneBookInfo(br.B_id).B_name %></td>
                <td><%=br.Isback==1?"是":"否" %></td>
                <td><%=U_Date.TimeFormat(""+br.B_booktime,"yyyy-MM-dd hh:mm:ss") %></td>
                <td><%=U_Date.TimeFormat(""+br.R_booktime,"yyyy-MM-dd hh:mm:ss") %></td>
                <td>
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
