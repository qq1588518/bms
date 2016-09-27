<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addreader.aspx.cs" Inherits="Views_Reader_addreader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        姓名：<asp:TextBox ID="name" runat="server"></asp:TextBox>
        性别：<asp:TextBox ID="sex" runat="server"></asp:TextBox>
        联系电话：<asp:TextBox ID="pno" runat="server"></asp:TextBox>
        上传照片：<asp:FileUpload ID="picture" runat="server" />
        <asp:Button ID="addreader" runat="server" Text="提交" OnClick="addreader_Click" />
    </div>
    </form>
</body>
</html>
