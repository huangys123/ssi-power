<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="/inc.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body >
	
  <div>
  	<dl>
  		<dt class="f30 fb"><i class=" w30 h30  glyphicon glyphicon-headphones"></i>会员管理</dt>
  	</dl>
  </div>
  <div class="panel-group" id="accordion">
		<div class="panel ">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a  target="rightFrame"  href="<%=request.getContextPath() %>/user/account/userList.jsp">帐号管理</a>
				</h4>
			</div>
			
	</div>
		
		<div class="panel ">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a  target="rightFrame" data-parent="#accordion" href="<%=request.getContextPath() %>/user/person/personList.jsp">个人信息 </a>
				</h4>
			</div>
			
		</div>
		
		
		
		<div class="panel ">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a  target="rightFrame" data-parent="#accordion" href="<%=request.getContextPath()%>/user/company/companyList.jsp">企业信息</a>
			</h4>
		</div>
		
	</div>
	<div class="panel ">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a  target="rightFrame" data-parent="#accordion" href="<%=request.getContextPath()%>/user/organiza/organizaList.jsp">机构信息</a>
			</h4>
		</div>
	</div>
  
  </div>
  
</body>
</html>