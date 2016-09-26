<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changemanager.aspx.cs" Inherits="Views_Manager_changemanager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            账号<asp:TextBox ID="u_name" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="账号不能为空！" Display="Static" ControlToValidate="u_name"></asp:RequiredFieldValidator>
            手机号<asp:TextBox ID="u_pno" runat="server"></asp:TextBox><br />  
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="手机号不能为空！" Display="Static" ControlToValidate="u_pno"></asp:RequiredFieldValidator>
            密码<asp:TextBox ID="u_password" TextMode="Password" runat="server" /><br />
            确认密码<asp:TextBox ID="u_password_again" TextMode="Password" runat="server" />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="u_password" ControlToCompare="u_password_again" Type="string" Operator="Equal" ErrorMessage="密码不一致!" Display="Static"></asp:CompareValidator>
            <asp:Button ID="Button2" runat="server" Text="确认修改"  Font-Size="14" OnClick="Button2_Click"/>
    </div>
    </form>
</body>
</html>
