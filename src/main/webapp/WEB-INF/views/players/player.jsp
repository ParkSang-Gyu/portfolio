<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.btn{
	border-radius: 0;
	margin-right: 0;
}
.info{
	width: 1140px;
	height: 150px;
}
.img{
	padding: 0;
	float: left;
	width: 120px;
	height: auto;
}
.information1{
	width: 70px;
	height: 25px;
	display: inline-block;
	font-size: 15px;
}
.information2{
	width: 100px;
	height: 25px;
	display: inline-block;
	font-size: 15px;
}
.name1{
	width: 70px;
}
.name2{
	width: 120px;
}
.league{
	margin-top: 10px;
}
.stat{
	width: 1140px;
	height: 100%;
}
</style>
<script>
$(document).ready(function(){
	$('a').addClass('color-black')
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
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/laliga?roundNum=1">La Liga</a>
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/bundesliga?roundNum=1">Bundesriga</a>
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/seriea?roundNum=1">Seria A</a>
		  	</div>
		  	<div class="collapse" id="tournamentlist">
		   		<a class="dropdown-item" href="#">Champions League</a>
		   		<a class="dropdown-item" href="#">Europa League</a>
		 	</div>
	 	</div>
		<h2>Player Information</h2>
		<div class="info">
			<div class="img">
				<img alt="사진을 불러올 수 없습니다." src="${pageContext.request.contextPath}/resources/img/players/${player}.jpg">
			</div>
			<div class="information1 name1" style="padding-top: 10px;">이름</div><div class="information2 name2">${playerInfo.player}</div>
			<div class="information1 name1" style="padding-left: 10px;">국적</div><div class="information2 name2" style="padding-left: 20px;">${playerInfo.nationality}</div><br>
			<div class="information1 league name1">팀</div><div class="information2 league name2">${playerInfo.team}</div>
			<div class="information1 league name1" style="padding-left: 10px;">나이</div><div class="information2 league name2" style="padding-left: 20px;">${playerInfo.age}</div><br>
			<div class="information1 name1" style="padding-top: 10px;">등번호</div><div class="information2 name2">${playerInfo.backNum}</div>
			<div class="information1 name1" style="padding-left: 10px;">키</div><div class="information2 name2" style="padding-left: 20px;">${playerInfo.height}</div><br>
			<div class="information1 name1" style="padding-top: 10px;">포지션</div><div class="information2 name2">${playerInfo.position}</div>
			<div class="information1 name1" style="padding-left: 10px;">몸무게</div><div class="information2 name2" style="padding-left: 20px;">${playerInfo.weight}</div>
		</div>
		<div class="stat">
			<h2>Player Stat</h2>
			<table class="table table-striped table-hover">
		      	<thead>
			      	<tr>
			      		<th>출전수</th>
			      		<th>출전시간</th>
			      		<th>득점</th>
			      		<th>어시스트</th>
			      		<th>옐로카드</th>
			      		<th>레드카드</th>
			      		<th>패스성공률(%)</th>
			      		<th>평점</th>
			      		<th>경기최우수선수</th>
			      	</tr>
		      	</thead>
		      	<tbody>
			      	<tr>
		        		<td>${playerInfo.appearances}</td>
		        		<td>${playerInfo.minutes}</td>
		        		<td>${playerInfo.goals}</td>
		        		<td>${playerInfo.assists}</td>
		        		<td>${playerInfo.yellowCard}</td>
		        		<td>${playerInfo.redCard}</td>
		        		<td>${playerInfo.psr}</td>
		        		<td>${playerInfo.rating}</td>
		        		<td>${playerInfo.motm}</td>
			      	</tr>
		      	</tbody>	    
	  		</table>
		</div>
	</div>
</body>
</html>