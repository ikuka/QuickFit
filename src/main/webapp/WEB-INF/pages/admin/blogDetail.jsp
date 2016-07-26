<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016-06-30
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>SpringMVC 博文详情</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="${basePath}assets/plugins/bootstrap-2.3.2/css/bootstrap.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="${basePath}assets/plugins/html5shiv-3.7.3/html5shiv.min.js"></script>
    <script src="${basePath}assets/plugins/respond-1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <h1>SpringMVC 博文详情</h1>
    <hr/>

    <table class="table table-bordered table-striped">
        <tr>
            <th>ID</th>
            <td>${blog.id}</td>
        </tr>
        <tr>
            <th>Title</th>
            <td>${blog.title}</td>
        </tr>
        <tr>
            <th>Author</th>
            <td>${blog.userByUserId.nickname}, ${blog.userByUserId.firstName} ${blog.userByUserId.lastName}</td>
        </tr>
        <tr>
            <th>Content</th>
            <td>${blog.content}</td>
        </tr>
        <tr>
            <th>Publish Date</th>
            <td><fmt:formatDate value="${blog.pubDate}" pattern="yyyy年MM月dd日"/></td>
        </tr>
    </table>
</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${basePath}assets/plugins/jquery-1.12.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="${basePath}assets/plugins/bootstrap-2.3.2/js/bootstrap.min.js"></script>
</body>
</html>
