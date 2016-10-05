<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showbook.aspx.cs" Inherits="Views_Book_showbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h2 style="color:blue;"><i>查看图书</i></h2><hr/><br/>
    <form id="form1" runat="server">
    <div>
        <label>图书名：</label><%=book.B_name %><br /><br/>
        <label>图书编号：</label><%=book.B_no %><br /><br/>
        <label>图书分类：</label><%=new DataBooktype().GetOneBooktype(book.T_id).T_name %><br /><br/>
        <label>图书总数：</label><%=book.B_total %><br /><br/>
        <label>图书当前数：</label><%=book.B_newnumber %><br /><br/>
        <label>图书入库时间：</label><%=U_Date.TimeFormat(""+book.B_buildtime,"yyyy-MM-dd hh:mm:ss") %><br /><br/>
    </div>
    </form>
</body>
</html>
