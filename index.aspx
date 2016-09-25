<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>图书管理系统 - 登录</title>
    <link rel="icon" href="Resources/img/logo.png" type="image/x-icon"/>
    <link href="Resources/css/public.css" rel="stylesheet" type="text/css"/>
    <link href="Resources/css/index.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div id="square">
        账号
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="账号不能为空！" Display="Static" ControlToValidate="name"></asp:RequiredFieldValidator>
        <br/><br/>
        密码
        <asp:TextBox ID="password" TextMode="Password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="密码不能为空！" Display="Static" ControlToValidate="password"></asp:RequiredFieldValidator>
        <br/><br/>
        <asp:Button ID="login" runat="server" Text="登录" font-size="12" OnClick="login_Click"/>
        <a href="register.aspx">没有账号？点此申请！</a>
    </div>
    </form>
</body>
</html>
