<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016-06-30
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>SpringMVC 添加博客</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <%--<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="${basePath}assets/plugins/bootstrap-2.3.2/css/bootstrap.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <!--<script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>-->
    <!--<script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>-->
    <script src="${basePath}assets/plugins/html5shiv-3.7.3/html5shiv.min.js"></script>
    <script src="${basePath}assets/plugins/respond-1.4.2/respond.min.js"></script>
    <!--[endif]-->
</head>
<body>
<div class="container">
    <h1>SpringMVC 添加博客</h1>
    <hr/>
    <form:form action="/admin/blogs/addP" method="post" commandName="blog" role="form">
        <div class="form-group">
            <label for="title">Title:</label>
            <input type="text" class="form-control" id="title" name="title" placeholder="Enter Title:"/>
        </div>
        <div class="form-group">
            <label for="userByUserId.id">Author:</label>
            <select class="form-control" id="userByUserId.id" name="userByUserId.id">
                <c:forEach items="${userList}" var="user">
                    <option value="${user.id}">${user.nickname}, ${user.firstName} ${user.lastName}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="content">Content:</label>
            <textarea class="form-control" id="content" name="content" rows="3" placeholder="Please Input Content"></textarea>
        </div>
        <div class="form-group">
            <label for="pubDate">Publish Date:</label>
            <input type="date" class="form-control" id="pubDate" name="pubDate"/>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-sm btn-success">提交</button>
        </div>
    </form:form>
</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${basePath}assets/plugins/jquery-1.12.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="${basePath}assets/plugins/bootstrap-2.3.2/js/bootstrap.min.js"></script>
</body>
</html>