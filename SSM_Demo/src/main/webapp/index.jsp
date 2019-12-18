<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/Adminbackgroundshipment/layui/css/layui.css" type="text/css"/>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/Adminbackgroundshipment/layui/css/sccl.css" type="text/css"/>

    <script type="text/javascript" src="${pageContext.request.contextPath}/static/Adminbackgroundshipment/js/jquery-1.8.3.min.js" ></script>

    <script src="${pageContext.request.contextPath}/static/Adminbackgroundshipment/layui/layui.js"></script>
<style>
    .login-bg{background: url("${pageContext.request.contextPath}/img/login-bg-8.jpg") no-repeat center center fixed;background-size:100% 100%;}
</style>
    <meta http-equiv="Content-Type" cSontent="text/html; charset=UTF-8">
    <title>订单物流后台管理</title>

</head>

<body class="login-bg" >

<div class="login-box">
    <header>
        <h1>哔哩哔哩发货管理系统</h1>
    </header>
    <div class="login-main">
        <form action="${pageContext.request.contextPath}/user/login" class="layui-form" method="post">
            <input name="__RequestVerificationToken" type="hidden" value="">
            <div class="layui-form-item">
                <label class="login-icon">
                    <i class="layui-icon"></i>
                </label>
                <input type="text" id="user" name="userName" lay-verify="userName" autocomplete="off" placeholder="这里输入登录名" class="layui-input">
            </div>
            <div class="layui-form-item">
                <label class="login-icon">
                    <i class="layui-icon"></i>
                </label>
                <input type="password" id="pass" name="passWord" lay-verify="password" autocomplete="off" placeholder="这里输入密码" class="layui-input">
            </div>

            <div class="layui-form-item" style="display: none" id="passerro">
                <b style="color: red">密码错误</b>
            </div>

            <div class="layui-form-item">
                <div class="pull-left login-remember">
                    <label>记住帐号？</label>

                    <input type="checkbox" name="rememberMe" value="true" lay-skin="switch" title="记住帐号"><div class="layui-unselect layui-form-switch"><i></i></div>
                </div>
                <div class="pull-right">
                    <button type="submit" id="logsf" class="layui-btn layui-btn-primary" lay-submit="${pageContext.request.contextPath}/user/login" lay-filter="login">
                        <i class="layui-icon"></i> 登录
                    </button>
                </div>
                <div class="clear"></div>
            </div>
        </form>
    </div>
    <footer>
        <p>xuan © www.mycodes.net</p>
    </footer>
</div>

</body>
</html>