<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showreader.aspx.cs" Inherits="Views_Reader_showreader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h2 style="color:blue;"><i>查看读者</i></h2><hr/><br/>
    <form id="form1" runat="server">
    <div style="font-size:20px;">
        <pre>
<label>姓名:</label><%=reader.R_name %>     <label>性别 :</label><%=reader.R_sex %>     <label>图书证号 :</label><%=reader.R_no %>     <label>联系电话 :</label><%=reader.R_pno %>
            </pre>
        <img src="<%=reader.R_pic %>"/>
    </div>
    </form>
</body>
</html>
