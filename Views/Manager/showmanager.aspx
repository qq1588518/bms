<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showmanager.aspx.cs" Inherits="Views_Manager_showmanager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <style type="text/css">
        #pic {
            position:absolute;
            left:320px;
            top:100px;   
        }
        #manager_name{
            position:absolute;
            top:156px;
            left:606px;
            z-index:1;
            color:red;
            font-size:10px;
        }
        </style>
</head>
<body>
     <h2 style="color:blue;"><i>查看信息</i></h2><hr/><br/>
    <form id="form1" runat="server">
    <div style="font-size:18px;">
        <pre>
            <label id="manager_name"><%=username %></label>
          <label>用户</label>  <%=username %><br />
          <label>密码</label>  <%=password %><br/>
      <label>电话号码</label>  <%=phone %><br/>
            </pre>
    </div>
        <div id="pic">
            <img src="/Resources/img/showmanager.PNG" />
            </div>
    </form>
</body>
</html>
