<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showreader.aspx.cs" Inherits="Views_Reader_showreader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <label>姓名：</label><p><%=reader.R_name %></p><br />
        <label>性别：</label><p><%=reader.R_sex %></p><br />
        <label>图书证号：</label><p><%=reader.R_no %></p><br />
        <label>图书证号：</label><p><%=reader.R_pno %></p><br />
        <img src="<%=reader.R_pic %>"/>
    </div>
    </form>
</body>
</html>
