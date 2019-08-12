<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>

</head>
<body>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<div class="container">
			<a href="<%=request.getContextPath()%>/">
				<button>
					<div style="float: left;">!!SoccerCompare!!</div>
				</button>
			</a>
			<div style="float: right;">
				<c:if test="${user ne null}" > 
					<a href="<%=request.getContextPath()%>/logout" class="float-right">로그아웃</a>
				</c:if>
				<c:if test="${user eq null}" > 
					<a href="<%=request.getContextPath()%>/signup" class="float-left" style="color: white;padding-right: 10px;">로그인</a>
				</c:if>
				<c:if test="${user eq null}" > 
					<a href="<%=request.getContextPath()%>/signup" class="float-right" style="color: white;">회원가입</a>
				</c:if>
			</div>
		</div> 
	</nav>
</body>