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
            <% foreach( Reader reader in readers){%>
            <tr>
                <td><%=reader.R_name %></td>
                <td><%=reader.R_sex %></td>
                <td><%=reader.R_no %></td>
                <td>
                    <asp:Button ID="showreader" runat="server" Text="查看" OnClick="showreader_Click"/>
                    <asp:Button ID="changereader" runat="server" Text="修改" OnClick="changereader_Click" />
                    <asp:Button ID="deletereader" runat="server" Text="删除" OnClick="deletereader_Click" />
                </td>
            </tr>
            <%}; %>
        </table>
    </div>
    </form>
</body>
</html>
