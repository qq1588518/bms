<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changebooktype.aspx.cs" Inherits="Views_Booktype_changebooktype" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form method="get" action="/Views/Booktype/dochangebooktype.aspx">
    <div>
        修改类型名称：<input type="text" name="t_name"/>
        选择父分类：<select name="t_subid">
        <%foreach(Booktype booktype in booktypes){; %>
               <option value="<%=booktype.T_id %>"><%=booktype.T_name %></option>
        <%}; %>
        </select>
        <input type="text" name="t_id" hidden="hidden" value="<%=Request.QueryString.Get("booktypeid") %>"/>
        <input type="submit" value="确认修改"/>
    </div>
    </form>
</body>
</html>
