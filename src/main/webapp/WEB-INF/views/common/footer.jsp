<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<style type="text/css">
		.sitename{
			line-height: 20px;
		}
		.display{
			display: inline-block;
			padding-left: 10px;
			color: gray;
		}
	</style>
</head>
<body>
	<div class="jumbotron jumbotron-fluid mb-0">
	  <div class="container" style="position: absolute;">
	    <a href="<%=request.getContextPath()%>/">
			<div class="sitename" style="margin-left: 140px;display: inline-block;">!!SoccerCompare!!</div>
		</a>
	    <a href="#"><div class="display">회사소개</div></a>
	    <a href="#"><div class="display">이용약관</div></a>
	    <a href="#"><div class="display">제휴제안</div></a>
	    <a href="#"><div class="display">개인정보처리방침</div></a>     
	  </div>
	</div>
</body>