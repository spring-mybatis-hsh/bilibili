<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>屄哩屄哩-登录</title>
    <link href="${pageContext.request.contextPath}/static/login/loginnew/css/default.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/static/login/loginnew/css/default.css" rel="stylesheet" type="text/css"/>


    <style>

        html,body{
            width:100%;
            height:90%
        }
        body{
            font-family:"微软雅黑";
            background-size: 100%;
            opacity: 0.9;
        }

    </style>

</head>
<body>
<article class="htmleaf-container">
    <header class="htmleaf-header">
        </div>
    </header>
    <div class="panel-lite">
        <div class="thumbur">
            <div class="icon-lock"></div>
        </div>
        <form action="${pageContext.request.contextPath}/user/login" method="post">
            <h4>用户登录</h4>
            <div class="form-group">
                <input required="required" name="userName" id="userName" class="form-control"/>
                <label class="form-label">用户名    </label>
            </div>
            <div class="form-group">
                <input type="password" name="passWord" id="passWord" required="required" class="form-control"/>
                <label class="form-label">密　码</label>
            </div>
            <div>
                <b style="color: red"></b>

            </div>

            <a href="#">忘记密码 ?  </a>    <a href="zhuce.sf">立即注册? </a>
            <br>
            <a href="logoone.sf">返回首页 </a>

            <button class="floating-btn" id="tijiao"><i class="icon-arrow"></i></button>
    </div>
    </form>
</article>
</body>
</html>