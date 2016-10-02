<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showb_r.aspx.cs" Inherits="Views_B_R_showb_r" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <label>读者Id：</label><p><%=br.R_id %></p><br />
        <label>图书Id：</label><p><%=br.B_id %></p><br />
        <label>是否归还：</label><p><%=br.Isback %></p><br />
        <label>借书天数：</label><p><%=br.Numberfirst %></p><br />
        <label>续借天数：</label><p><%=br.Numberagain %></p><br />
        <label>借书时间：</label><p><%=br.B_booktime %></p><br />
        <label>应还书时间：</label><p><%=br.R_booktime %></p><br />
    </div>
    </form>
</body>
</html>
