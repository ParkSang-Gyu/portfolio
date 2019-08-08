<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
	<style type="text/css">
	*{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}
	.container-body{
		width: 900px;
		height: 500px;
		line-height: 100px;
		padding: 200px 300px;
	}
	</style>
</head>
<body>
	<img alt="해당 이미지를 불러올 수 없습니다." src="../resources/img/mainbackground.jpg" width="900px" height="500px">
	<div class="container-body">
		<a href="<%=request.getContextPath()%>/leagues"><button>LEAGUE</button></a>
		<a href="<%=request.getContextPath()%>/tournaments"><button>TOURNAMENT</button></a>
		<a href="<%=request.getContextPath()%>/comparison"><button>COMPARISON</button></a>
	</div>
</body>
</html>
