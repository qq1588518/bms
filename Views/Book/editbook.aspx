<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editbook.aspx.cs" Inherits="Views_Book_editbook" %>

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
                <th>图书名</th>
                <th>图书编号</th>
                <th>图书分类</th>
                <th>编辑</th>
            </tr>
            <% foreach( Book book in books){;%>
            <tr>
                <td align="center"><%=book.B_name %></td>
                <td align="center"><%=book.B_no %></td>
                <td align="center"><%=new DataBooktype().GetOneBooktype(book.T_id).T_name %></td>
                <td align="center">
                    <a href="/Views/Book/showbook.aspx?bookid=<%=book.B_id %>" >查看</a>
                    <a href="/Views/Book/changebook.aspx?bookid=<%=book.B_id %>" >修改</a>
                    <a href="/Views/Book/editbook.aspx?delete_bookid=<%=book.B_id %>" >删除</a>
                </td>
            </tr>
            <%}; %>
        </table>
    </div>
    </form>
</body>
</html>
