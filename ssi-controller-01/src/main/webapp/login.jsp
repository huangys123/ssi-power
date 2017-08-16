<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="/common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="http://open.sojson.com/common/js/canvas-nest.js" count="200" zindex="-2" opacity="0.5" color="47,135,193" type="text/javascript"></script>
	<form id="loginForm">
		账号：<input name="userAccount">
		密码：<input type="password" name="userPwd">
		验证码：<input name="userImgCode">
		<span onclick="change_imgcode()">
			<img id="imgcode_src_node" src="<%=request.getContextPath() %>/imgcode">
			<font color="red">看不清，换一张</font>
		</span>
		<input type="button" value="登录" onclick="userLogin()">
	</form>
</body>
	<script type="text/javascript">
		function userLogin(){
			$.ajax({
				url:"<%= request.getContextPath()%>/loginUser.jhtml",
				data:$("#loginForm").serialize(),
				type:"post",
				dataType:"json",
				success:function(data) {
				    console.log(data);
					if (1 == data.flag) {
						//成功
						location.href = "index.jsp";
						return;
					}
					if (2 == data.flag) {
						alert("用户不存在");
						return;
					}
					if (3 == data.flag) {
						alert("密码错误" + data.loginfailnum);
						return;
					}
					if (4 == data.flag) {
						alert("验证码错误");
						return;
					}
					if(5 == data.flag){
						alert("验证码为空");
						return;
					}
					if(6 == data.flag){
						alert("账号锁定");
						return;
					}
				}
			})
			
		}
		//切换验证码
		function change_imgcode() {
			$("#imgcode_src_node").attr("src", "<%=request.getContextPath() %>/imgcode?time=" + new Date().getTime());
		}
	</script>
</html>