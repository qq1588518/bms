<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editreader.aspx.cs" Inherits="Views_Reader_editreader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h2 style="color:blue;"><i>编辑图书信息</i></h2><hr/><br/>
    <form id="form1" runat="server">
    <div>
        <table width="70%" border="1" cellspacing="0" cellpadding="5">
            <tr>
                <th>姓名</th>
                <th>性别</th>
                <th>图书证号</th>
                <th>编辑</th>
            </tr>
            <% foreach( Reader reader in readers){;%>
            <tr>
                <td align="center"><%=reader.R_name %></td>
                <td align="center"><%=reader.R_sex %></td>
                <td align="center"><%=reader.R_no %></td>
                <td align="center">
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
