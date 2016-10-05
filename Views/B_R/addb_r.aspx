<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addb_r.aspx.cs" Inherits="Views_B_R_addb_r" %>

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
    <h2 style="color:blue;"><i>借书</i></h2><hr/><br/>
    <form id="form1" runat="server">
    <div style="font-size:15px;">
        <pre>
        读者<asp:DropDownList ID="readerlist" runat="server"></asp:DropDownList><br/><br/>
        图书<asp:DropDownList ID="booklist" runat="server"></asp:DropDownList><br/><br/>
        天数<asp:TextBox ID="numberfirst" runat="server"></asp:TextBox><br/><br/>
        <asp:Button ID="addb_r" runat="server" Text="提交" OnClick="addb_r_Click" />
            </pre>
    </div>
        <div id="pic">
            <img src="/Resources/img/addb_r.PNG" />
            </div>
    </form>
</body>
</html>
