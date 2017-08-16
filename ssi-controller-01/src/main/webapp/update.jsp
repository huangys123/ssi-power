<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改用户</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/updateUser.jhtml" method="post">
	<input type="hidden" name="userId" value="${user.userId }">
	用户名：<input type="text" name="userName" value="${user.userName }">
	密码：<input type="text" name="userPassword" value="${user.userPassword }">
	<input type="submit" value="修改">
</form>
</body>
</html>