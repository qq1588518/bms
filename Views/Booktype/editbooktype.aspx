<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editbooktype.aspx.cs" Inherits="Views_Booktype_editbooktype" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h2 style="color:blue;"><i>编辑分类</i></h2><hr/><br/>
    <form id="form1" runat="server">
    <div>
        <table width="50%" border="1" cellspacing="0" cellpadding="5">
            <tr>
                <th>分类名称</th>
                <th>父分类</th>
                <th>编辑</th>
            </tr>
            <% foreach( Booktype booktype in booktypes){;%>
            <tr>
                <td align="center"><%=booktype.T_name %></td>
                <td align="center"><%=new DataBooktype().GetOneBooktype(booktype.T_subid).T_name %></td>
                <td align="center">
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
