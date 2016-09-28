<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addbooktype.aspx.cs" Inherits="Views_Booktype_addbooktype" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form method="get" action="/Views/Booktype/addbooktype.aspx">
    <div>
        输入类型名称：<input type="text" name="t_name"/>
        选择父分类：<select name="t_subid">
        <%foreach(Booktype booktyppe in booktypes){; %>
               <option value="<%=booktyppe.T_id %>"><%=booktyppe.T_name %></option>
        <%}; %>
        </select>
        <input type="submit" value="提交"/>
    </div>
    </form>
</body>
</html>
