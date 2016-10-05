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
        <table width="50%" border="1" cellspacing="0" cellpadding="5">
            <tr>
                <td>图书名</td>
                <td>图书编号</td>
                <td>图书分类</td>
                <td>编辑</td>
            </tr>
            <% foreach( Book book in books){;%>
            <tr>
                <td><%=book.B_name %></td>
                <td><%=book.B_no %></td>
                <td><%=new DataBooktype().GetOneBooktype(book.T_id).T_name %></td>
                <td>
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
