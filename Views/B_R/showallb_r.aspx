<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showallb_r.aspx.cs" Inherits="Views_B_R_showallb_r" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="50%" border="1" cellspacing="0" cellpadding="5">
            <tr>
                <td>编号</td>
                <td>读者Id</td>
                <td>图书Id</td>
                <td>是否归还</td>
                <td>借书天数</td>
                <td>续借天数</td>
                <td>借书时间</td>
                <td>应还书时间</td>
            </tr>
            <%int i = 0; foreach (B_R br in brs) {;%>
            <tr>
                <td><%=i++ %></td>
                <td><%=br.R_id %></td>
                <td><%=br.B_id %></td>
                <td><%=br.Isback %></td>
                <td><%=br.Numberfirst %></td>
                <td><%=br.Numberagain %></td>
                <td><%=br.B_booktime %></td>
                <td><%=br.R_booktime %></td>
            </tr>
            <%}; %>
        </table>
    </div>
    </form>
</body>
</html>
