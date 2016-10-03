<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editbooktype.aspx.cs" Inherits="Views_Booktype_editbooktype" %>

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
                <td>分类名称</td>
                <td>编辑</td>
            </tr>
            <% foreach( Booktype booktype in booktypes){;%>
            <tr>
                <td><%=booktype.T_name %></td>
                <td>
                    <a href="/Views/Booktype/changebooktype.aspx?type_name=<%=booktype.T_name %>&booktypeid=<%=booktype.T_id %>" >修改</a>
                    <a href="/Views/Booktype/editbooktype.aspx?delete_booktypeid=<%=booktype.T_id %>" >删除</a>
                </td>
            </tr>
            <%}; %>
        </table>
    </div>
    </form>
</body>
</html>
