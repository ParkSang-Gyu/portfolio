<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<style type="text/css">
		.main{
			width: 1140px;
			height: 300px;
			position: relative;
			border: 1px solid gray;
		}
		.btn{
			border-radius: 0;
			margin-right: 0;
		}
	</style>
</head>
<body>
	<div>
		<button type="button" class="btn btn-dark dropdown-toggle" data-toggle="collapse" data-target="#list1">leaguelist</button>	
	 	<button type="button" class="btn btn-dark dropdown-toggle" data-toggle="collapse" data-target="#list2">tournamentlist</button>	
		<a href="<%=request.getContextPath()%>/statistics"><button type="button" class="btn btn-dark">statistics</button></a>
		<a href="<%=request.getContextPath()%>/comparison"><button type="button" class="btn btn-dark">comparison</button></a><br>	
		<div class="collapse" id="list1">
		   	<a class="dropdown-item" href="<%=request.getContextPath()%>/premierleague">Premier League</a>
		   	<a class="dropdown-item" href="<%=request.getContextPath()%>/laliga">La Liga</a>
		   	<a class="dropdown-item" href="<%=request.getContextPath()%>/bundesliga">Bundesriga</a>
		   	<a class="dropdown-item" href="<%=request.getContextPath()%>/seriea">Seria A</a>
	  	</div>
	  	<div class="collapse" id="list2">
	   		<a class="dropdown-item" href="#">Champions League</a>
	   		<a class="dropdown-item" href="#">Europa League</a>
	 	</div>
 	</div>
	<div class="main">메인 화면</div>
</body>
</html>
