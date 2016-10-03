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
        <label>读者Id：</label><p><%=new DataReader().GetOneReaderInfo(br.R_id).R_name %></p><br />
        <label>图书Id：</label><p><%=new DataBook().GetOneBookInfo(br.B_id).B_name %></p><br />
        <label>是否归还：</label><p><%=br.Isback==1?"是":"否" %></p><br />
        <label>借书天数：</label><p><%=br.Numberfirst %></p><br />
        <label>续借天数：</label><p><%=br.Numberagain %></p><br />
        <label>借书时间：</label><p><%=U_Date.TimeFormat(""+br.B_booktime,"yyyy-MM-dd hh:mm:ss") %></p><br />
        <label>应还书时间：</label><p><%=U_Date.TimeFormat(""+br.R_booktime,"yyyy-MM-dd hh:mm:ss") %></p><br />
    </div>
    </form>
</body>
</html>
