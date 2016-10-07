<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addbook.aspx.cs" Inherits="Views_Book_addbook" %>

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
    <h2><i style="color:blue;">添加图书</i></h2><hr/><br/>
    <form id="form1" runat="server">
    <div>
        <pre style="font-size:15px;">
        书名<asp:TextBox ID="b_name" runat="server"></asp:TextBox><br/><br/>
    选择分类<asp:DropDownList ID="booklist" runat="server"></asp:DropDownList><br/><br/>
    图书编号<asp:TextBox ID="b_no" runat="server"></asp:TextBox><br /><br/>
        数量<asp:TextBox ID="b_total" runat="server"></asp:TextBox><br /><br/>
            <asp:Button ID="addbook" runat="server" Text="入库" OnClick="addbook_Click" />
        </pre>
    </div>
        <div id="pic">
            <img src="/Resources/img/addbook.PNG" />
            </div>
    </form>
</body>
</html>
