<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%@ include file="/inc.jsp" %>
<body>
	<div class="panel-group" id="accordion">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">资金管理 </a>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse collapse">
				<div class="panel-body"><a href="<%=request.getContextPath() %>/index.jsp" target="main">充值管理</a></div>
				<div class="panel-body">
			<a data-toggle="collapse" data-parent="#accordion" >线下充值管理</a>
			</div>
			<div class="panel-body">
				<a data-toggle="collapse" data-parent="#accordion" >提现管理</a>
			</div>
			<div class="panel-body">
				<a data-toggle="collapse" data-parent="#accordion" >放款管理</a>
				</div>
			<div class="panel-body">
				<a data-toggle="collapse" data-parent="#accordion" >放款成交记录</a>
			</div>
			<div class="panel-body">
				<a data-toggle="collapse" data-parent="#accordion" >不良债权转让管理</a>
			</div>
			<div class="panel-body">
				<a data-toggle="collapse" data-parent="#accordion" >商城退款管理</a>
			</div>
			<div class="panel-body">
				<a data-toggle="collapse" data-parent="#accordion" >平台调账管理</a>
			</div>
			<div class="panel-body">
				<a data-toggle="collapse" data-parent="#accordion" >用户信用管理</a>
			</div>
		</div>
	</div>
		
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">借款管理 </a>
				</h4>
			</div>
			<div id="collapseTwo" class="panel-collapse collapse">
				<div class="panel-body">借款管理</div>
				<div class="panel-body">个人借款意向管理</div>
				<div class="panel-body">企业借款意向管理</div>
			</div>
		</div>
		
		
		
		<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a data-toggle="collapse" data-parent="#accordion" 
				   href="#collapseTwo">
					资金明细
				</a>
			</h4>
		</div>
		<div id="collapseTwo" class="panel-collapse collapse">
			<div class="panel-body">
				<a data-toggle="collapse" data-parent="#accordion" >个人资金明细</a>
			</div>
			<div class="panel-body">
				<a data-toggle="collapse" data-parent="#accordion" >企业资金明细</a>
			</div>
			<div class="panel-body">
				<a data-toggle="collapse" data-parent="#accordion" >机构资金明细</a>
			</div>
			<div class="panel-body">
				<a data-toggle="collapse" data-parent="#accordion" >平台资金明细</a>
			</div>
		</div>
	</div>
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4 class="panel-title">
				<a data-toggle="collapse" data-parent="#accordion" 
				   href="#collapseThree">
				订单管理
				</a>
			</h4>
		</div>
		<div id="collapseThree" class="panel-collapse collapse">
			<div class="panel-body">
				<div class="panel-body">
					<a data-toggle="collapse" data-parent="#accordion" >订单异常日志</a>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>