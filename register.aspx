<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>图书管理系统 - 注册</title>
    <link rel="icon" href="Resources/img/logo.png" type="image/x-icon"/>
    <link href="Resources/css/public.css" rel="stylesheet" type="text/css"/>
    <link href="Resources/css/register.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <p>图书管理系统 - 账号申请</p>
    <form id="form1" runat="server">
    <div id="head">
    </div>
        <div id="shenti">
            &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;账号
            <asp:TextBox ID="u_name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="账号不能为空！" Display="Static" ControlToValidate="u_name"></asp:RequiredFieldValidator>
            <br/><br/>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;手机号
            <asp:TextBox ID="u_pno" runat="server"></asp:TextBox>   
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="手机号不能为空！" Display="Static" ControlToValidate="u_pno"></asp:RequiredFieldValidator>
            <br/><br/>
            &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;密码
            <asp:TextBox ID="u_password" TextMode="Password" runat="server" />
            <br/><br/>&nbsp;
            确认密码
            <asp:TextBox ID="u_password_again" TextMode="Password" runat="server" />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="u_password" ControlToCompare="u_password_again" Type="string" Operator="Equal" ErrorMessage="密码不一致!" Display="Static"></asp:CompareValidator>
            <br/><br/> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
            &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="注册"  Font-Size="14" OnClick="Button2_Click"/>
            </div>
    </form>
</body>
</html>

