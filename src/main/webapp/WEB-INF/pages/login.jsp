<%--
  Created by IntelliJ IDEA.
  User: HuYuanQing
  Date: 2016-06-30
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
    增加java处理信息，处理css、js、img的路径问题
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>QuickFit系统登录</title>

    <!-- ================== BEGIN BASE CSS STYLE ================== -->
    <link rel="stylesheet" href="${basePath}assets/plugins/bootstrap-2.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${basePath}assets/css/animate.min.css"/>
    <link rel="stylesheet" href="${basePath}assets/css/style.min.css"/>
    <link rel="stylesheet" href="${basePath}assets/css/style-responsive.min.css"/>


    <!-- ================== END BASE CSS STYLE ================== -->
</head>
<body>
<!-- begin #page-loader -->
<div id="page-loader" class="fade in"><span class="spinner"></span></div>
<!-- end #page-loader -->

<!-- begin #page-container -->
<div id="page-container" class="fade">
    <!-- begin login -->
    <div class="login bg-black animated fadeInDown">
        <!-- begin brand -->
        <div class="login-header">
            <div class="brand">
                <span class="logo"></span> Color Admin
                <small>responsive bootstrap 3 admin template</small>
            </div>
            <div class="icon">
                <i class="fa fa-sign-in"></i>
            </div>
        </div>
        <!-- end brand -->
        <div class="login-content">
            <form action="index.html" method="POST" class="margin-bottom-0">
                <div class="form-group m-b-20">
                    <input type="text" class="form-control input-lg" placeholder="Email Address"/>
                </div>
                <div class="form-group m-b-20">
                    <input type="text" class="form-control input-lg" placeholder="Password"/>
                </div>
                <div class="checkbox m-b-20">
                    <label>
                        <input type="checkbox"/> Remember Me
                    </label>
                </div>
                <div class="login-buttons">
                    <button type="submit" class="btn btn-success btn-block btn-lg">Sign me in</button>
                </div>
            </form>
        </div>
    </div>
    <!-- end login -->
</div>
<!-- end page container -->


<!-- ================== BEGIN BASE JS ================== -->
<script src="${basePath}assets/plugins/jquery-1.12.1/jquery.min.js"></script>
<script src="assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
<script src="assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
<script src="${basePath}assets/plugins/bootstrap-2.3.2/js/bootstrap.min.js"></script>
<!--[if lt IE 9]>
<script src="${basePath}assets/plugins/html5shiv-3.7.3/html5shiv.min.js"></script>
<script src="${basePath}assets/plugins/respond-1.4.2/respond.min.js"></script>
<script src="assets/crossbrowserjs/excanvas.min.js"></script>
<![endif]-->
<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="assets/plugins/jquery-cookie/jquery.cookie.js"></script>
<!-- ================== END BASE JS ================== -->

</body>
</html>
