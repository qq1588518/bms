<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addbooktype.aspx.cs" Inherits="Views_Booktype_addbooktype" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css" >
        #pic {
            position:absolute;
            left:300px;
            top:100px;
        }
        </style>
</head>
<body>
    <h2 style="color:blue;"><i>添加分类</i></h2><hr/><br/>
    <form method="get" action="/Views/Booktype/addbooktype.aspx">
    <div>
        输入类型名称<input type="text" name="t_name"/><br/><br/><br/>
        选择父分类<select name="t_subid">
        <%foreach(Booktype booktyppe in booktypes){; %>
               <option value="<%=booktyppe.T_id %>"><%=booktyppe.T_name %></option>
        <%}; %>
        </select>
        <input type="submit" value="提交"/>
    </div>
        <div id="pic">
            <img src="/Resources/img/addbooktype.PNG" />
            </div>
    </form>
</body>
</html>
