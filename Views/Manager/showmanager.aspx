<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showmanager.aspx.cs" Inherits="Views_Manager_showmanager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <label>用户名：</label><p><%=username %></p><br />
        <label>密码：</label><p><%=password %></p><br />
        <label>电话号码：</label><p><%=phone %></p><br />
    </div>
    </form>
</body>
</html>
