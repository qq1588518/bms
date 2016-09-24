<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>图书管理系统</title>
    <link rel="icon" href="Resources/img/logo.png" type="image/x-icon"/>
    <link href="Resources/css/public.css" rel="stylesheet" type="text/css"/>
    <link href="Resources/css/admin.css" rel="stylesheet" type="text/css"/>
    <script src="Resources/js/jquery-3.0.0.min.js" type="text/javascript"></script>
</head>
<body>
    <!--左侧功能选项栏-->
    <div id="left">
        <div id="left-menu">
            <p>图书管理系统</p><a href="index.aspx">退出</a><a href="#">帮助</a>
        </div>
      
        <p class="mnue">菜单列表</p>
        <ul>
            <li class="list1-0 list1"><label>&gt;&gt;</label>管理员信息管理</li>
            <li class="list2-0">
                <ul>
                    <li><a href="http://www.imooc.com/" target="mainFrame">--添加管理员</a></li>
                    <li><a href="#" target="mainFrame">--修改管理员信息</a></li>
                    <li><a href="#" target="mainFrame">--删除管理员</a></li>
                    <li><a href="#" target="mainFrame">--查看所有管理员</a></li>
                </ul>
            </li>

            <li class="list1-1 list1"><label>&gt;&gt;</label>读者信息管理</li>
            <li class="list2-1">
                <ul>
                    <li><a href="#" target="mainFrame">--添加读者</a></li>
                    <li><a href="#" target="mainFrame">--修改读者信息</a></li>
                    <li><a href="#" target="mainFrame">--删除读者</a></li>
                    <li><a href="#" target="mainFrame">--查看读者信息</a></li>
                </ul>
            </li>

            <li class="list1-2 list1"><label>&gt;&gt;</label>图书信息管理 </li>
            <li class="list2-2">
                <ul>
                    <li><a href="#" target="mainFrame">--添加图书</a></li>
                    <li><a href="#" target="mainFrame">--修改图书信息</a></li>
                    <li><a href="#" target="mainFrame">--删除图书</a></li>
                    <li><a href="#" target="mainFrame">--查看图书信息</a></li>
                </ul>
            </li>

            <li class="list1-3 list1"><label>&gt;&gt;</label>图书分类管理</li>
            <li class="list2-3">
                 <ul>
                    <li><a href="#" target="mainFrame">--添加分类</a></li>
                    <li><a href="#" target="mainFrame">--修改分类</a></li>
                    <li><a href="#" target="mainFrame">--删除分类</a></li>
                    <li><a href="#" target="mainFrame">--查看分类</a></li>
                </ul>
            </li>

            <li class="list1-4 list1"><label>&gt;&gt;</label>借/还书信息管理</li>
            <li class="list2-4">
                <ul>
                    <li><a href="#" target="mainFrame">--借书</a></li>
                    <li><a href="#" target="mainFrame">--还书</a></li>
                    <li><a href="#" target="mainFrame">--续借</a></li>
                    <li><a href="#" target="mainFrame">--查看借/还书信息</a></li>
                </ul>
            </li>
        </ul>
    </div>

    <!--右侧主页面-->
    <div id="right">

        <!--顶部展示框-->
        <div id="top">
            <iframe src="iframe.aspx" name="mainFrame" width="100" height="100"></iframe>
        </div>

        <!--底部版权信息-->
        <div id="bottom">
            <p>© 2016年9月24日 西安工业大学</p>
        </div>
    </div>
    <script src="Resources/js/admin.js" type="text/javascript"></script>
</body>
</html>
