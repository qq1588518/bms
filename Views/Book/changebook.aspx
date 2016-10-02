<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changebook.aspx.cs" Inherits="Views_Book_changebook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        书名：<asp:TextBox ID="b_name" runat="server"></asp:TextBox>
        选择分类：<asp:DropDownList ID="booklist" runat="server"></asp:DropDownList>
        图书编号：<asp:TextBox ID="b_no" runat="server"></asp:TextBox>
        数量：<asp:TextBox ID="b_total" runat="server"></asp:TextBox>
        当前数量：<asp:TextBox ID="b_newnumber" runat="server"></asp:TextBox>
        <asp:Button ID="addbook" runat="server" Text="确认提交" OnClick="changebook_Click"/>
    </div>
    </form>
</body>
</html>
