<%@ Page Language="C#" AutoEventWireup="true" CodeFile="success.aspx.cs" Inherits="success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>&gt;&gt;&gt;<%=Request.QueryString.Get("successinfo")==null?"操作成功":Request.QueryString.Get("successinfo") %></h2>
    </div>
    </form>
</body>
</html>
