<%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>欢迎使用图书管理系统</title>
    <style type="text/css">
        #pic {
            position:absolute;
            left:300px;
            top:150px;
        }
        </style>
</head>
<body>
    <h2 style="color:blue;font-size:25px;"><i>欢迎使用图书管理系统</i></h2><hr/><br/>
    <form id="form1" runat="server">
    <div style="color:darkgoldenrod;font-size:20px;padding-right:300px;">
    <pre>
    欢迎体验新的图书管理系统

    不仅仅是更简易的操作

    更有操作体验上的提升
     </pre>
    </div>
        <div id="pic">
            <img src="/Resources/img/welcome.PNG" width="700"/>
            </div>
    </form>
</body>
</html>
