<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户信息</title>
</head>
<body>
<a href="<%=request.getContextPath()%>/insert.jsp">新增用户</a>
	<table >
		<tr>
			<td>用户编号</td>
			<td>用户名称</td>
			<td>用户密码</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${list }" var="user">
		<tr>
			<td>${user.userId }</td>
			<td>${user.userName }</td>
			<td>${user.userPassword }</td>
			<td>
				<a href="<%=request.getContextPath()%>/deleteUser.jhtml?userId=${user.userId}">删除</a>
				<a href="<%=request.getContextPath()%>/selectUserById.jhtml?userId=${user.userId}">修改</a>
			</td>
		</tr>
	    </c:forEach>
	</table>
</body>
</html>