<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changereader.aspx.cs" Inherits="Views_Reader_changereader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h2 style="color:blue;"><i>修改读者信息</i></h2><hr/><br/>
    <form id="form1" runat="server">
    <div>
        <pre>
        姓名<asp:TextBox ID="name" runat="server"></asp:TextBox><br />
        性别<asp:DropDownList ID="sex" runat="server"></asp:DropDownList><br />
    图书证号<asp:Label ID="no" runat="server" Text=""></asp:Label><br />
    联系电话<asp:TextBox ID="pno" runat="server"></asp:TextBox><br /><br />
    上传照片<asp:FileUpload ID="picture" runat="server" /><br />
            <asp:Button ID="changereader" runat="server" Text="确认修改" OnClick="changereader_Click" />
        </pre>
    </div>
    </form>
</body>
</html>
