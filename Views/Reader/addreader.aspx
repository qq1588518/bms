<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addreader.aspx.cs" Inherits="Views_Reader_addreader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #pic {
            position:absolute;
            left:300px;
            top:100px;
        }
        </style>
</head>
<body>
    <h2 style="color:blue;"><i>添加读者</i></h2><hr/><br/>
    <form id="form1" runat="server">
    <div style="font-size:15px;">
        <pre>
        姓名<asp:TextBox ID="name" runat="server"></asp:TextBox><br/><br/>
        性别<asp:TextBox ID="sex" runat="server"></asp:TextBox><br/><br/>
    联系电话<asp:TextBox ID="pno" runat="server"></asp:TextBox><br/><br/>
    上传照片<asp:FileUpload ID="picture" runat="server" /><br/><br/>
        <asp:Button ID="addreader" runat="server" Text="提交" OnClick="addreader_Click" />
            </pre>
    </div>
        <div id="pic">
            <img src="/Resources/img/addreader.PNG" />
            </div>
    </form>
</body>
</html>
