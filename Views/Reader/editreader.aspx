<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editreader.aspx.cs" Inherits="Views_Reader_editreader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width:70%;border: dashed 5px;">
            <tr>
                <td>姓名</td>
                <td>性别</td>
                <td>图书证号</td>
                <td>编辑</td>
            </tr>
            <% foreach( Reader reader in readers){;%>
            <tr>
                <td><%=reader.R_name %></td>
                <td><%=reader.R_sex %></td>
                <td><%=reader.R_no %></td>
                <td>
                    <a href="/Views/Reader/showreader.aspx?readerid=<%=reader.R_id %>" >查看</a>
                    <a href="/Views/Reader/changereader.aspx?readerid=<%=reader.R_id %>" >修改</a>
                    <a href="/Views/Reader/editreader.aspx?readerid=<%=reader.R_id %>" >删除</a>
                </td>
            </tr>
            <%}; %>
        </table>
    </div>
    </form>
</body>
</html>
