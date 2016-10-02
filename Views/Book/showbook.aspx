<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showbook.aspx.cs" Inherits="Views_Book_showbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <label>图书名：</label><p><%=book.B_name %></p><br />
        <label>图书编号：</label><p><%=book.B_no %></p><br />
        <label>图书分类：</label><p><%=book.T_id %></p><br />
        <label>图书总数：</label><p><%=book.B_total %></p><br />
        <label>图书当前数：</label><p><%=book.B_newnumber %></p><br />
        <label>图书入库时间：</label><p><%=book.B_buildtime %></p><br />
    </div>
    </form>
</body>
</html>
