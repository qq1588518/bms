<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showb_r.aspx.cs" Inherits="Views_B_R_showb_r" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h2 style="color:blue;"><i>查看借还书信息</i></h2><hr/><br/>
    <form id="form1" runat="server">
    <div style="font-size:15px;">
        <label>读者：</label><%=new DataReader().GetOneReaderInfo(br.R_id).R_name %><br /><br/>
        <label>图书：</label><%=new DataBook().GetOneBookInfo(br.B_id).B_name %><br /><br/>
        <label>是否归还：</label><%=br.Isback==1?"是":"否" %><br /><br/>
        <label>借书天数：</label><%=br.Numberfirst %><br /><br/>
        <label>续借天数：</label><%=br.Numberagain %><br /><br/>
        <label>借书时间：</label><%=U_Date.TimeFormat(""+br.B_booktime,"yyyy-MM-dd hh:mm:ss") %><br /><br/>
        <label>应还书时间：</label><%=U_Date.TimeFormat(""+br.R_booktime,"yyyy-MM-dd hh:mm:ss") %><br /><br/>
    </div>
    </form>
</body>
</html>
