<%--
  Created by IntelliJ IDEA.
  User: 智康
  Date: 2015/6/24 0024
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>普通发送</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css">

    <script type="text/javascript" charset="utf-8" src="/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="/ueditor/ueditor.all.min.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

<div class="container">

    <div style="margin-top: 30px"></div>
    <ul class="nav nav-pills">
        <li role="presentation"><a href="/">首页</a></li>
        <li role="presentation"><a href="/users">用户管理</a></li>
        <li role="presentation"><a href="/emails">邮件管理</a></li>
        <li role="presentation"><a href="/send/normal">普通发送</a></li>
        <li role="presentation" class="active"><a href="/send/template">模板发送</a></li>
    </ul>


    <h1>普通发送</h1>
    <hr style="border-color: cadetblue"/>

    <form:form action="/send/template/add" method="post" commandName="template" role="form" enctype="multipart/form-data">

        <div class="form-group">
            <label for="recv">收件人
                <small>(请导入用户邮箱Excel文件，必须为xls后缀)</small>
                ：</label>
            <input type="file" id="recv" name="recv" class="form-control">
        </div>

        <div class="form-group">
            <label for="subject">标题：</label>
            <input type="text" class="form-control" id="subject" name="subject" value="来自sendcloud的测试邮件">
        </div>

        <div class="form-group">
            <label for="templateName">模板：</label>
            <input type="text" class="form-control" id="templateName" name="templateName" value="test1">
        </div>

        <div class="form-group">
            <label for="invokeName">调用：</label>
            <input type="text" class="form-control" id="invokeName" name="invokeName" value="test1">
        </div>

        <div class="form-group">
            <button type="submit" id="subBtn" class="btn btn-primary">发送</button>
        </div>
    </form:form>

</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript">
    var ue = UE.getEditor('content');
</script>
</body>
</html>

