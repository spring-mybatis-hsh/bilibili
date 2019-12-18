<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单</title>

    <style>

        html{height:100%;}
        body{font:14px/1.5 '微软雅黑';word-wrap:break-word;word-break:break-all;-webkit-text-size-adjust:none;background:#fff;color:#333;}
        body,dl,dd,h1,h2,h3,h4,h5,h6,p,form,ul,ol,blockquote{margin:0}
        img{border:0 none;vertical-align:middle}
        input,select,textarea{font-size:14px;color:#333}
        input{vertical-align:middle;padding:2px;margin:0}
        table{border-collapse:collapse;border-spacing:0}
        select,input,button{font:14px/20px Verdana,Simsun,Helvetica,Arial,sans-serif;}
        em,i,cite,blockquote{font-style:normal}
        ul,ol{list-style:none outside;padding:0}
        h1,h2,h3,h4,h5,h6{font-size:100%}
        textarea{overflow-y:auto;padding:3px}
        a{color:#286a46;text-decoration:none;outline:0}
        a:hover,a:active{color:#2a6496;text-decoration:none;}
        a:focus{outline:0;}
        button::-moz-focus-inner{border:0;padding:0;}
        figure{margin:0}
        article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}
        .ppr{position:relative;}
        .ppa{position:absolute;}
        .fl{float:left}
        .fr{float:right}
        .tl{text-align:left;}
        .tc{text-align:center;}
        .tr{text-align:right;}
        .mlr5{margin:0 5px;}
        .mt5{margin-top:5px;}
        .mr5{margin-right:5px;}
        .mt10{margin-top:10px;}
        .ml5{margin-left:5px;}
        .ml10{margin-left:10px;}
        .mr10{margin-right:10px;}
        .mb10{margin-bottom:10px;}
        .mb20{margin-bottom:20px;}
        .pl5{padding-left:5px;}
        .pb10{padding-bottom:10px;}
        .pt20{padding-top:20px;}
        .pl10{padding-left:10px;}
        .ptb20{padding:20px 0;}
        .grayc{color:#ccc}
        .gray6{color:#666}
        .gray9{color:#999}
        .emstyle{font-style:italic}
        .clear{clear:both}
        .clearfix:after{content:".";display:block;height:0;clear:both;visibility:hidden;}
        .clearfix{*height:1%;}
        .none{display:none}
        .block{display:block;}
        .minheight500{min-height:500px;height:auto !important;height:500px;overflow:visible;}
        .wrap-box{width:960px;margin:0 auto;}
        .blue,.blue a:link,.blue a:visited{color:blue;}
        .blue a:hover{color:#2a6496;}
        .white,.white a:link,.white a:visited{color:#fff;}
        .white a:hover{color:#ff0;}
        .red,.red a:link,.red a:visited{color:#f00;}
        .red a:hover{color:#f60;}
        .orange,.orange a:link,.orange a:visited{color:#ffa500;}
        .orange a:hover{color:#f60;}
        .icon-font { font-family:'icomoon'; speak:none; font-weight:400; font-style:normal; font-variant:normal; text-transform:none; line-height:1; -webkit-font-smoothing:antialiased; }
        .require-red{color:#f60;font-family:serif;margin-right:3px;}
        /* common */
        .topbar-wrap{height:50px;line-height:50px;}
        .topbar-logo-wrap{float:left;}
        .topbar-inner{font-size:18px;padding:0 20px;}
        .topbar-logo{float:left;width:150px;text-align:center;}
        .navbar-list{float:left;}
        .top-info-wrap{float:right;}
        .navbar-list{}
        .navbar-list li{float:left;}
        .navbar-list li a{float:left;margin-right:5px;padding:0 25px;text-shadow:1px 1px 1px #000;}
        .navbar-list li a:hover{background:#343434;}
        .navbar-list li a.on{color:#fff;text-shadow:1px 1px 1px #003;background:#033b70;}
        .top-info-list li{float:left;}
        .top-info-list li a{float:left;margin-left:5px;padding:0 20px;display:inline;zoom:1;}
        .top-info-list li a:hover{background:#343434;}
        .btn{display:inline-block;*display:inline;padding:4px 12px;margin-bottom:0;*margin-left:.3em;font-size:14px;line-height:20px;color:#333333;text-align:center;text-shadow:0 1px 1px rgba(255,255,255,0.75);vertical-align:middle;cursor:pointer;background-color:#f5f5f5;*background-color:#e6e6e6;background-image:-moz-linear-gradient(top,#ffffff,#e6e6e6);background-image:-webkit-gradient(linear,0 0,0 100%,from(#ffffff),to(#e6e6e6));background-image:-webkit-linear-gradient(top,#ffffff,#e6e6e6);background-image:-o-linear-gradient(top,#ffffff,#e6e6e6);background-image:linear-gradient(to bottom,#ffffff,#e6e6e6);background-repeat:repeat-x;border:1px solid #bbbbbb;*border:0;border-color:#e6e6e6 #e6e6e6 #bfbfbf;border-color:rgba(0,0,0,0.1) rgba(0,0,0,0.1) rgba(0,0,0,0.25);border-bottom-color:#a2a2a2;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff',endColorstr='#ffe6e6e6',GradientType=0);filter:progid:DXImageTransform.Microsoft.gradient(enabled=false);*zoom:1;-webkit-box-shadow:inset 0 1px 0 rgba(255,255,255,0.2),0 1px 2px rgba(0,0,0,0.05);-moz-box-shadow:inset 0 1px 0 rgba(255,255,255,0.2),0 1px 2px rgba(0,0,0,0.05);box-shadow:inset 0 1px 0 rgba(255,255,255,0.2),0 1px 2px rgba(0,0,0,0.05);}
        .btn:hover,.btn:active,.btn.active,.btn.disabled,.btn[disabled]{color:#333333;background-color:#e6e6e6;*background-color:#d9d9d9;}
        .btn:active,.btn.active{background-color:#cccccc \9;}
        .btn:first-child{*margin-left:0;}
        .btn:hover{color:#333333;text-decoration:none;background-position:0 -15px;-webkit-transition:background-position 0.1s linear;-moz-transition:background-position 0.1s linear;-o-transition:background-position 0.1s linear;transition:background-position 0.1s linear;}
        .btn:focus{outline:thin dotted #333;outline:5px auto -webkit-focus-ring-color;outline-offset:-2px;}
        .btn.active,.btn:active{background-image:none;outline:0;-webkit-box-shadow:inset 0 2px 4px rgba(0,0,0,0.15),0 1px 2px rgba(0,0,0,0.05);-moz-box-shadow:inset 0 2px 4px rgba(0,0,0,0.15),0 1px 2px rgba(0,0,0,0.05);box-shadow:inset 0 2px 4px rgba(0,0,0,0.15),0 1px 2px rgba(0,0,0,0.05);}
        .btn-primary{color:#ffffff;text-shadow:0 -1px 0 rgba(0,0,0,0.25);background-color:#286a46;*background-color:#286a46;background-image:-moz-linear-gradient(top,#286a46,#286a46);background-image:-webkit-gradient(linear,0 0,0 100%,from(#286a46),to(#286a46));background-image:-webkit-linear-gradient(top,#286a46,#286a46);background-image:-o-linear-gradient(top,#286a46,#286a46);background-image:linear-gradient(to bottom,#286a26,#286a46);background-repeat:repeat-x;border-color:#286a46 #286a46 #286a46;border-color:rgba(0,0,0,0.1) rgba(0,0,0,0.1) rgba(0,0,0,0.25);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff0088cc',endColorstr='#ff0044cc',GradientType=0);filter:progid:DXImageTransform.Microsoft.gradient(enabled=false);}
        .btn-primary:hover,.btn-primary:active,.btn-primary.active,.btn-primary.disabled,.btn-primary[disabled]{color:#ffffff;background-color:#286a46;*background-color:#286a46;}
        .btn-primary:active,.btn-primary.active{background-color:#286a46 \9;}
        .btn-warning{color:#ffffff;text-shadow:0 -1px 0 rgba(0,0,0,0.25);background-color:#faa732;*background-color:#f89406;background-image:-moz-linear-gradient(top,#fbb450,#f89406);background-image:-webkit-gradient(linear,0 0,0 100%,from(#fbb450),to(#f89406));background-image:-webkit-linear-gradient(top,#fbb450,#f89406);background-image:-o-linear-gradient(top,#fbb450,#f89406);background-image:linear-gradient(to bottom,#fbb450,#f89406);background-repeat:repeat-x;border-color:#f89406 #f89406 #ad6704;border-color:rgba(0,0,0,0.1) rgba(0,0,0,0.1) rgba(0,0,0,0.25);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#fffbb450',endColorstr='#fff89406',GradientType=0);filter:progid:DXImageTransform.Microsoft.gradient(enabled=false);}
        .btn-warning:hover,.btn-warning:active,.btn-warning.active,.btn-warning.disabled,.btn-warning[disabled]{color:#ffffff;background-color:#f89406;*background-color:#df8505;}
        .btn-warning:active,.btn-warning.active{background-color:#c67605 \9;}
        .btn-danger{color:#ffffff;text-shadow:0 -1px 0 rgba(0,0,0,0.25);background-color:#da4f49;*background-color:#bd362f;background-image:-moz-linear-gradient(top,#ee5f5b,#bd362f);background-image:-webkit-gradient(linear,0 0,0 100%,from(#ee5f5b),to(#bd362f));background-image:-webkit-linear-gradient(top,#ee5f5b,#bd362f);background-image:-o-linear-gradient(top,#ee5f5b,#bd362f);background-image:linear-gradient(to bottom,#ee5f5b,#bd362f);background-repeat:repeat-x;border-color:#bd362f #bd362f #802420;border-color:rgba(0,0,0,0.1) rgba(0,0,0,0.1) rgba(0,0,0,0.25);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffee5f5b',endColorstr='#ffbd362f',GradientType=0);filter:progid:DXImageTransform.Microsoft.gradient(enabled=false);}
        .btn-danger:hover,.btn-danger:active,.btn-danger.active,.btn-danger.disabled,.btn-danger[disabled]{color:#ffffff;background-color:#bd362f;*background-color:#a9302a;}
        .btn-danger:active,.btn-danger.active{background-color:#942a25 \9;}
        .btn-success{color:#ffffff;text-shadow:0 -1px 0 rgba(0,0,0,0.25);background-color:#5bb75b;*background-color:#51a351;background-image:-moz-linear-gradient(top,#62c462,#51a351);background-image:-webkit-gradient(linear,0 0,0 100%,from(#62c462),to(#51a351));background-image:-webkit-linear-gradient(top,#62c462,#51a351);background-image:-o-linear-gradient(top,#62c462,#51a351);background-image:linear-gradient(to bottom,#62c462,#51a351);background-repeat:repeat-x;border-color:#51a351 #51a351 #387038;border-color:rgba(0,0,0,0.1) rgba(0,0,0,0.1) rgba(0,0,0,0.25);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff62c462',endColorstr='#ff51a351',GradientType=0);filter:progid:DXImageTransform.Microsoft.gradient(enabled=false);}
        .btn-success:hover,.btn-success:active,.btn-success.active,.btn-success.disabled,.btn-success[disabled]{color:#ffffff;background-color:#51a351;*background-color:#499249;}
        .btn-success:active,.btn-success.active{background-color:#408140 \9;}
        .btn-info{color:#ffffff;text-shadow:0 -1px 0 rgba(0,0,0,0.25);background-color:#49afcd;*background-color:#2f96b4;background-image:-moz-linear-gradient(top,#5bc0de,#2f96b4);background-image:-webkit-gradient(linear,0 0,0 100%,from(#5bc0de),to(#2f96b4));background-image:-webkit-linear-gradient(top,#5bc0de,#2f96b4);background-image:-o-linear-gradient(top,#5bc0de,#2f96b4);background-image:linear-gradient(to bottom,#5bc0de,#2f96b4);background-repeat:repeat-x;border-color:#2f96b4 #2f96b4 #1f6377;border-color:rgba(0,0,0,0.1) rgba(0,0,0,0.1) rgba(0,0,0,0.25);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff5bc0de',endColorstr='#ff2f96b4',GradientType=0);filter:progid:DXImageTransform.Microsoft.gradient(enabled=false);}
        .btn-info:hover,.btn-info:active,.btn-info.active,.btn-info.disabled,.btn-info[disabled]{color:#ffffff;background-color:#2f96b4;*background-color:#2a85a0;}
        .btn-info:active,.btn-info.active{background-color:#24748c \9;}
        .btn-inverse{color:#ffffff;text-shadow:0 -1px 0 rgba(0,0,0,0.25);background-color:#363636;*background-color:#222222;background-image:-moz-linear-gradient(top,#444444,#222222);background-image:-webkit-gradient(linear,0 0,0 100%,from(#444444),to(#222222));background-image:-webkit-linear-gradient(top,#444444,#222222);background-image:-o-linear-gradient(top,#444444,#222222);background-image:linear-gradient(to bottom,#444444,#222222);background-repeat:repeat-x;border-color:#222222 #222222 #000000;border-color:rgba(0,0,0,0.1) rgba(0,0,0,0.1) rgba(0,0,0,0.25);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff444444',endColorstr='#ff222222',GradientType=0);filter:progid:DXImageTransform.Microsoft.gradient(enabled=false);}
        .btn-inverse:hover,.btn-inverse:active,.btn-inverse.active,.btn-inverse.disabled,.btn-inverse[disabled]{color:#ffffff;background-color:#222222;*background-color:#151515;}
        .btn-inverse:active,.btn-inverse.active{background-color:#080808 \9;}
        .btn4{width:60px;}
        .btn5{width:80px;}
        .btn6{width:120px;}
        .btn7{width:130px;}
        .btn8{width:140px;}
        .btn9{width:160px;}
        .btn10{width:180px;}
        .btn50{width:50%;}
        .btn100{width:100%;}
        textarea,input[type="text"],input[type="password"],input[type="datetime"],input[type="datetime-local"],input[type="date"],input[type="month"],input[type="time"],input[type="week"],input[type="number"],input[type="email"],input[type="url"],input[type="search"],input[type="tel"],input[type="color"],.uneditable-input{background-color:#ffffff;border:1px solid #cccccc;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,0.075);-moz-box-shadow:inset 0 1px 1px rgba(0,0,0,0.075);box-shadow:inset 0 1px 1px rgba(0,0,0,0.075);-webkit-transition:border linear 0.2s,box-shadow linear 0.2s;-moz-transition:border linear 0.2s,box-shadow linear 0.2s;-o-transition:border linear 0.2s,box-shadow linear 0.2s;transition:border linear 0.2s,box-shadow linear 0.2s;}
        textarea:focus,input[type="text"]:focus,input[type="password"]:focus,input[type="datetime"]:focus,input[type="datetime-local"]:focus,input[type="date"]:focus,input[type="month"]:focus,input[type="time"]:focus,input[type="week"]:focus,input[type="number"]:focus,input[type="email"]:focus,input[type="url"]:focus,input[type="search"]:focus,input[type="tel"]:focus,input[type="color"]:focus,.uneditable-input:focus{border-color:rgba(82,168,236,0.8);outline:0;outline:thin dotted \9;/* IE6-9 */
            -webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,0.075),0 0 8px rgba(82,168,236,0.6);-moz-box-shadow:inset 0 1px 1px rgba(0,0,0,0.075),0 0 8px rgba(82,168,236,0.6);box-shadow:inset 0 1px 1px rgba(0,0,0,0.075),0 0 8px rgba(82,168,236,0.6);}
        .insert-tab{border-collapse:collapse;border:1px solid #eee;}
        .insert-tab th,.insert-tab td{border:1px solid #eee;}
        .insert-tab tr{line-height:40px;}
        .insert-tab th{text-align:right;font-weight:normal;padding-right:10px;font-size:14px;}
        .insert-tab td{text-align:left;padding-left:10px;}
        .list-page{padding:20px 0;text-align:center;}
        .list-page a{margin:0 5px;padding:2px 7px;border:1px solid #ccc;background:#f3f3f3;}
        .list-page a:hover{background:#e4e4e4;border:1px solid #908f8f;}
        .list-page .current{margin:0 5px;padding:2px 7px;background:#f60;border:1px solid #fe8101;color:#fff;}

    </style>

    <style>
        .sidebar-wrap{float: left;width: 189px;min-height:700px;background: #f2f2f2;border-right:1px solid #ccc;/*cursor:e-resize;*/}
        .main-wrap{margin-left: 190px;min-height:100%;}
        .sidebar-title{height: 40px;line-height: 40px;text-indent:1em;font-size: 24px;text-align: left;}
        .sidebar-title h1{font-weight: normal;}
        .sidebar-content{padding-top: 5px;}
        .sidebar-list li{border:1px solid #e5e5e5;border-width:1px 0;}
        .sidebar-list li .icon-font{margin-right: 5px;color: #888;font-size: 14px;}
        .sidebar-list li a{padding: 0 16px 0 20px;display: block;height: 38px;line-height: 38px;color: #333;}
        .sidebar-list li a:hover{background: #fff;color: #286a46;}
        .sub-menu{border-top: 1px solid #e5e5e5;background: #fff;}
        .sub-menu li{padding-left: 21px;}
        .sub-menu li.on{background: #1963AA;}
        .sub-menu li.on a{background: #1963AA;color: #fff;}
        .sub-menu li.on .icon-font{color: #fff;}
        .sub-menu .icon-font{font-size: 11px;}
        .crumb-wrap{height: 40px;line-height: 39px;border-bottom: 1px solid #e5e5e5;background: #f5f5f5;}
        .crumb-list{padding-left: 12px;}
        .crumb-list .icon-font{margin-right: 5px;}
        .crumb-step{margin: 0 5px;color: #b2c2e0;font-family: serif;}
        .search-wrap{padding: 15px 0;border-bottom: 1px solid #e5e5e5;}
        .search-tab tr{line-height: 35px;}
        .search-tab th{text-align: right;padding-right:10px;font-weight: normal;}
        .search-tab td{padding: 0 5px;}
        .common-text{height: 23px;line-height: 23px;padding: 2px 4px;border: 1px solid #ccc;background: #fff;border-radius:5px;}
        .result-wrap{padding:10px 20px;border-bottom: 1px solid #e5e5e5;}
        .result-title{line-height: 35px;padding-bottom: 5px;overflow: hidden;}
        .comment-title{line-height: 35px;margin-bottom: 10px;overflow: hidden;}
        .result-list a{margin-right: 15px;}
        .result-list i{padding-right: 5px;}
        .result-tab{border-collapse:collapse;border: 1px solid #ddd;}

        .result-tab th,.result-tab td{padding:5px;border-bottom: 1px solid #ddd;border-right: 1px solid #e1e1e1;}
        .result-tab tr{line-height:35px;}
        .result-tab th.tc,.result-tab td.tc{text-align: center;}
        .result-tab tr:nth-child(odd){background: #f9f9f9;}
        .result-tab tr:hover{background: #f1f1f1;}
        .result-tab tr.even-tr{background: #e9fff2;}
        .comment-tab{border-bottom: 1px solid #ddd;padding-left: 15px;margin-bottom: 10px;}
        .comment-tab a{float: left;}
        .comment-tab a.on{padding: 0 15px;background: #49afcd;color: #fff;border-radius:5px 5px 0 0;}
        .config-items{margin-bottom: 25px;}
        .config-title{margin-bottom: 10px;}
        .config-title h1{font-size: 14px;font-weight: normal;}
        .config-title h1 i{margin-right: 5px;font-size: 12px;}
        .columns-title{padding: 10px 0;height: 35px;line-height: 35px;overflow: hidden;}
        .visitor-img{float: left;}
        .visitor-info{float: left;padding-left: 10px;line-height:23px;}
        .visitor-email{color: #aaa;}
        .short-wrap a{margin-right: 20px;}
        .short-wrap a i{margin-right: 5px;}
        .res-lab{display: inline-block;width: 150px;padding-right: 10px;text-align: right;}
        .sys-info-list li{line-height: 35px;border-bottom: 1px dashed #eaeaea;}
        .res-lab{color: #909090;}
        .res-info{font-size: 15px;}
        .sort-input{width: 25px;text-align: center;}

    </style>
    <style type="text/css">
        .result-tab th{
            font-weight: normal;font-size: 15px;text-align: left;background: url("${pageContext.request.contextPath}/img/tab-thbg.jpg")
        #f9f9f9 0 bottom repeat-x;

        }
        @font-face{font-family:'icomoon';src:url('${pageContext.request.contextPath}/img/icomoon.eot');src:url('${pageContext.request.contextPath}/img/icomoon.eot?#iefix') format('embedded-opentype'),url('${pageContext.request.contextPath}/img/icomoon.woff') format('woff'),url('${pageContext.request.contextPath}/img/icomoon.ttf') format('truetype'),url('${pageContext.request.contextPath}/img/icomoon.svg#icomoon') format('svg');font-weight:normal;font-style:normal;}

    </style>
</head>
<body>


	<div style="width: 200px;height: 170px;background-color: white;position: fixed; z-index: 999;margin-left:85%;margin-top: 35%" id="xinxiaoxi">
			<b style="color: red;margin-left: 8%">有瓜皮下单了! 点击立即查看</b>
            <a href="Adminbackgroundshipment.jsp"/><img src="${pageContext.request.contextPath}/img/gaoxiao.jpg" alt="" width="200px" height="170px"/>

	</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="javascript:return false;"><i class="icon-font">&#xe003;</i>常用操作</a>
                    <ul class="sub-menu">
                        <li><a href="${pageContext.request.contextPath}/order/queryAll"><i class="icon-font">&#xe008;</i>全部订单</a></li>
                        <li><a href="${pageContext.request.contextPath}/order/queryOrderByStat"><i class="icon-font">&#xe005;</i>待发货</a></li>
                        <li><a href="${pageContext.request.contextPath}/order/queryOrderByStat2"><i class="icon-font">&#xe006;</i>已完成</a></li>
                        <li><a href="${pageContext.request.contextPath}/order/queryOrderByStat3"><i class="icon-font">&#xe008;</i>退货订单</a></li>
                        <li><a href="Inquiryorder"><i class="icon-font">&#xe006;</i>查询订单</a></li>
                        <li><a href="Houtai.sf"><i class="icon-font">&#xe005;</i>注册用户管理</a></li>
                    </ul>
                </li>

            </ul>
        </div>
    </div>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="javascript:return false;" color="#white">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">订单查询</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
            </div>
        </div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">

                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th>订单时间</th>
                            <th>订单商品名字</th>
                            <th>购买者用户名</th>
                            <th>订单价格</th>
                            <th>状态</th>
                        </tr>
             <c:forEach items="${list}" var="ordertable">
                        <tr>
                            <td>${ordertable.orderID}</td>
                            <td><a target="_blank" href="">${ordertable.ordergridsName}</a> <!--课程名称-->
                            </td>
                            <td>${ordertable.orderuserName}</td>
                            <td>${ordertable.orderzongRMB}</td>
                            <td style="color: red"><c:choose>
                          							    <c:when test="${ordertable.orderStat=='1'}">用户下单,未发货</c:when>
														<c:when test="${ordertable.orderStat=='2'}">已发货</c:when>
														<c:when test="${ordertable.orderStat=='3'}">待退货</c:when>
														<c:when test="${ordertable.orderStat=='4'}">订单完成</c:when>
                            	<c:otherwise>退货完成</c:otherwise>

                            </c:choose> </td>
                        </tr>
			</c:forEach>
                    </table>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>