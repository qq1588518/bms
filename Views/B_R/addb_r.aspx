<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addb_r.aspx.cs" Inherits="Views_B_R_addb_r" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        读者：<asp:DropDownList ID="readerlist" runat="server"></asp:DropDownList>
        图书：<asp:DropDownList ID="booklist" runat="server"></asp:DropDownList>
        天数：<asp:TextBox ID="numberfirst" runat="server"></asp:TextBox>
        <asp:Button ID="addb_r" runat="server" Text="提交" OnClick="addb_r_Click" />
    </div>
    </form>
</body>
</html>
