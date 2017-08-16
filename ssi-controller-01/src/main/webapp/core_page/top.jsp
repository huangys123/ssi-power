<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/inc.jsp"></jsp:include>
<% 
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy年MM月dd日 E");

java.util.Date currentTime = new java.util.Date();//得到当前系统时间

String str_date1 = formatter.format(currentTime); //将日期时间格式化 
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>迪蒙网贷 V7.0豪华版</title>
</head>
<div class="main-head clearfix"><div class="left-v5-box pl30 clearfix">迪蒙网贷 V7.0豪华版<span class="time-containe ml40 f14"><%=str_date1%></span></div>
<div class="main-head-fr ww80 tr">
<ul class="mr100">
<li><i class="icon-i w30 h30 ml10 va-middle user-icon"></i><span class="span-txt">欢迎您，</span><span class="f18">yang3931</span></li>
<li><a href="" target="mainFrame" data-title="index" class="update_pwd"><i class="icon-i w30 h30 ml10 va-middle xiugaimima-icon"></i>修改密码</a></li>
<li><a id="return_logout" href="" target="_parent"><i class="icon-i w30 h30 ml10 va-middle exit-icon"></i>安全退出</a></li>
</ul>
</div>
</div>
<div class="main-nav">
<div class="logo-containe">
<div class="logo"><img src="<%=request.getContextPath()%>/console/fileStore/0/2016/7/27/83.png" /></div>
</div>
<div class="top-nav">
  <ul class="clearfix">
  	<li><a href="<%=request.getContextPath()%>/index.jsp" class="main-nav-a " data-title="index" target="_top"><i class="icon-i h30 w30 nav-home-icon"></i>首页</a></li>
    <li><a href="<%=request.getContextPath() %>/core_page/index2.jsp" class="main-nav-a " data-title="user" target="mainFrame"><i class="icon-i h30 w30 nav-yhgl-icon"></i>会员管理</a></li>
    <li><a href="" class="main-nav-a " data-title="business" target="mainFrame"><i class="icon-i h30 w30 nav-ywgl-icon"></i>业务管理</a></li>
    <li><a href="" class="main-nav-a " data-title="mall" target="mainFrame"><i class="icon-i h30 w30 nav-ptsc-icon"></i>积分商城</a></li>
    <li><a href="" class="main-nav-a " data-title="propaganda" target="mainFrame"><i class="icon-i h30 w30 nav-xcgl-icon"></i>宣传管理</a></li>
    <li><a href="" class="main-nav-a " data-title="system" target="mainFrame"><i class="icon-i h30 w30 nav-xtgl-icon"></i>系统管理</a></li>
    <li><a href="<%=request.getContextPath() %>/core_page/finance.jsp" class="main-nav-a " data-title="finance" target="mainFrame"><i class="icon-i h30 w30 nav-cwgl-icon"></i>财务管理</a></li>
    <li><a href=" class="main-nav-a " data-title="statistics" target="mainFrame"><i class="icon-i h30 w30 nav-tjgl-icon"></i>统计管理</a></li>
    <li><a href="" class="main-nav-a " data-title="extension" target="mainFrame"><i class="icon-i h30 w30 nav-tggl-icon"></i>推广管理</a></li>
    <li><a href="" class="main-nav-a " data-title="basics" target=""><i class="icon-i h30 w30 nav-jbsz-icon"></i>基本设置</a></li>
    <li><a href="" class="main-nav-a " data-title="app" target="mainFrame"><i class="icon-i h30 w30 nav-appgl-icon"></i>APP管理</a></li>
    </ul>
 </div>
</div>
</html>