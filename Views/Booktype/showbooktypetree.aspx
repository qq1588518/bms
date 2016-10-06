<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showbooktypetree.aspx.cs" Inherits="Views_Booktype_showbooktypetree" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h2 style="color:blue;"><i>查看分类树</i></h2><hr/><br/>
    <form id="form1" runat="server">
    <div>
        <strong>所有</strong><br /><br />
        <!--功能搁置-->
        <%foreach (Booktype booktype in booktypesons){;for(int i=0;i<booktype.Lev*2;i++){;%>
            <label>--</label>
            <%}; %>
            <strong><%=booktype.T_name%></strong><br /><br />
        <%};%>
    </div>
    </form>
</body>
</html>
