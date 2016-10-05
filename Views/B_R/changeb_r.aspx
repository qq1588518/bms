<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changeb_r.aspx.cs" Inherits="Views_B_R_changeb_r" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h2 style="color:blue;"><i>修改借书信息</i></h2><hr/><br/>
    <form id="form1" runat="server">
    <div>
        续借天数<asp:TextBox ID="numberagain" runat="server"></asp:TextBox><br/><br/>
        是否归还<asp:RadioButton ID="isback" runat="server" GroupName="isback" Text="是"/>
        <asp:RadioButton ID="isnotback" runat="server" GroupName="isback" Checked="true" Text="否"/><br/><br/>
        <asp:Button ID="changeb_r" runat="server" Text="确认修改" OnClick="changeb_r_Click"/>
    </div>
    </form>
</body>
</html>
