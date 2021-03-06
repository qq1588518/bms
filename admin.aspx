﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

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
    <div id="wrap">
    <!--左侧功能选项栏-->
    <div id="left">
        <div id="left-menu">
            <strong>&#9770;<%=username%></strong><a href="index.aspx">退出</a><a href="help.aspx" target="mainFrame">帮助</a>
        </div>
      
        <p class="mnue">菜单列表</p>
        <ul>
            <li class="list1-0 list1"><label>&gt;&gt;</label>我的信息管理</li>
            <li class="list2-0">
                <ul>
                    <li><a href="/Views/Manager/showmanager.aspx" target="mainFrame">&#9758;&nbsp;查看信息</a></li>
                    <li><a href="/Views/Manager/changemanager.aspx" target="mainFrame">&#9758;&nbsp;修改信息</a></li>
                </ul>
            </li>

            <li class="list1-1 list1"><label>&gt;&gt;</label>读者信息管理</li>
            <li class="list2-1">
                <ul>
                    <li><a href="/Views/Reader/addreader.aspx" target="mainFrame">&#9758;&nbsp;添加读者</a></li>
                    <li><a href="/Views/Reader/editreader.aspx" target="mainFrame">&#9758;&nbsp;编辑读者信息</a></li>
                </ul>
            </li>

            <li class="list1-2 list1"><label>&gt;&gt;</label>图书信息管理 </li>
            <li class="list2-2">
                <ul>
                    <li><a href="/Views/Book/addbook.aspx" target="mainFrame">&#9758;&nbsp;添加图书</a></li>
                    <li><a href="/Views/Book/editbook.aspx" target="mainFrame">&#9758;&nbsp;编辑图书信息</a></li>
                </ul>
            </li>

            <li class="list1-3 list1"><label>&gt;&gt;</label>图书分类管理</li>
            <li class="list2-3">
                 <ul>
                    <li><a href="/Views/Booktype/addbooktype.aspx" target="mainFrame">&#9758;&nbsp;添加分类</a></li>
                    <li><a href="/Views/Booktype/editbooktype.aspx" target="mainFrame">&#9758;&nbsp;编辑分类</a></li>
                    <li><a href="/Views/Booktype/showbooktypetree.aspx" target="mainFrame">&#9758;&nbsp;查看分类树</a></li>
                </ul>
            </li>

            <li class="list1-4 list1"><label>&gt;&gt;</label>借/还书信息管理</li>
            <li class="list2-4">
                <ul>
                    <li><a href="/Views/B_R/addb_r.aspx" target="mainFrame">&#9758;&nbsp;借书</a></li>
                    <li><a href="/Views/B_R/editb_r.aspx" target="mainFrame">&#9758;&nbsp;编辑借/还/续借书</a></li>
                    <li><a href="/Views/B_R/showallb_r.aspx" target="mainFrame">&#9758;&nbsp;查看所有借/还书信息</a></li>
                </ul>
            </li>
        </ul>
    </div>

    <!--右侧主页面-->
    <div id="right">

        <!--顶部展示框-->
        <div id="top">
            <iframe src="/welcome.aspx" name="mainFrame" width="100" height="100"></iframe>
        </div>

        <!--底部版权信息-->
        <div id="bottom">
            <p>© 2016年9月24日 西安工业大学</p>
        </div>
    </div>
    </div>
    <script src="Resources/js/admin.js" type="text/javascript"></script>
</body>
</html>
