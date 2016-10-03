<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changebooktype.aspx.cs" Inherits="Views_Booktype_changebooktype" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        修改类型名称：<asp:TextBox ID="t_name" runat="server"></asp:TextBox>
        选择父分类：<asp:DropDownList ID="booktypelist" runat="server"></asp:DropDownList>
        <asp:Button ID="changebooktype" runat="server" Text="确认修改" OnClick="changebooktype_Click" />
    </div>
    </form>
</body>
</html>
