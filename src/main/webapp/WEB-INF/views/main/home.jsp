<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<style type="text/css">
.btn{
	border-radius: 0;
	margin-right: 0;
}
.main{
	width: 1140px;
	height: 100%;
	position: relative;
	border: 1px solid gray;
}
img{
	width: 1140px;
	height: 100%;
}
</style>
<script>
$(document).ready(function(){
   	$('.list1').click(function(){
   		$('#leaguelist').collapse('show')
   		$('#tournamentlist').collapse('hide')
   	})
   	$('.list2').click(function(){
   		$('#tournamentlist').collapse('show')
   		$('#leaguelist').collapse('hide')
   	})
})
</script>
</head>
<body>
	<div class="container">
		<div>
			<button type="button" class="btn btn-dark dropdown-toggle list1" data-toggle="collapse" data-target="#leaguelist">leaguelist</button>	
		 	<button type="button" class="btn btn-dark dropdown-toggle list2" data-toggle="collapse" data-target="#tournamentlist">tournamentlist</button>	
			<a href="<%=request.getContextPath()%>/statistics"><button type="button" class="btn btn-dark">statistics</button></a>
			<a href="<%=request.getContextPath()%>/comparison"><button type="button" class="btn btn-dark">comparison</button></a><br>	
			<div class="collapse" id="leaguelist">
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/premierleague?roundNum=1">Premier League</a>
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/laliga">La Liga</a>
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/bundesliga">Bundesriga</a>
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/seriea">Seria A</a>
		  	</div>
		  	<div class="collapse" id="tournamentlist">
		   		<a class="dropdown-item" href="#">Champions League</a>
		   		<a class="dropdown-item" href="#">Europa League</a>
		 	</div>
	 	</div>
		<div class="main">
			<img alt="사진을 불러올 수 없습니다." src="${pageContext.request.contextPath}/resources/img/mainbackground.jpg">
		</div>
	</div>
</body>
</html>
