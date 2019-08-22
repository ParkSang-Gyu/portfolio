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
	padding: 40px 0 40px;
	float: left;
}
.information1{
	width: 70px;
	height: 25px;
	display: inline-block;
	font-size: 12px;
}
.information2{
	width: 100px;
	height: 25px;
	display: inline-block;
	font-size: 12px;
}
.name{
	padding-top: 40px;
}
.league{
	margin-top: 10px;
}
.stat{
	width: 1140px;
	height: 30%;
}
.squad{
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
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/premierleague">Premier League</a>
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/laliga">La Liga</a>
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/bundesliga">Bundesriga</a>
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/seriea">Seria A</a>
		  	</div>
		  	<div class="collapse" id="tournamentlist">
		   		<a class="dropdown-item" href="#">Champions League</a>
		   		<a class="dropdown-item" href="#">Europa League</a>
		 	</div>
	 	</div>
		<h2>Team Information</h2>
		<div class="info">
			<div class="img">
				<img alt="사진을 불러올 수 없습니다." src="${pageContext.request.contextPath}/resources/img/teams/${name}.png">
			</div>
			<div class="information1 name">이름</div><div class="information2 name">${teamInfo.name}</div>
			<div class="information1 name" style="padding-left: 10px;">창단연도</div><div class="information2 name" style="padding-left: 20px;">${teamInfo.establishment}</div><br>
			<div class="information1 league">리그</div><div class="information2 league">${teamInfo.league}</div>
			<div class="information1 league" style="padding-left: 10px;">경기장</div><div class="information2 league" style="padding-left: 20px;">${teamInfo.stadium}</div><br>
			<div class="information1">연고지</div><div class="information2">${teamInfo.hometown}</div>
			<div class="information1" style="padding-left: 10px;">감독</div><div class="information2" style="padding-left: 20px;">${teamInfo.coach}</div>
		</div>
		<h2>Team Stat</h2>
		<div class="stat">
			<table class="table table-striped table-hover">
		      	<thead>
			      	<tr>
			      		<th class="text-center">경기수</th>
			      		<th class="text-center">승</th>
			      		<th class="text-center">무</th>
			      		<th class="text-center">패</th>
			      		<th class="text-center">득점</th>
			      		<th class="text-center">실점</th>
			      		<th class="text-center">득실차</th>
			      		<th class="text-center">승점</th>
			      	</tr>
		      	</thead>
		      	<tbody>
			      	<tr>
		        		<td class="text-center">${teamInfo.played}</td>
		        		<td class="text-center">${teamInfo.win}</td>
		        		<td class="text-center">${teamInfo.draw}</td>
		        		<td class="text-center">${teamInfo.lose}</td>
		        		<td class="text-center">${teamInfo.goalFor}</td>
		        		<td class="text-center">${teamInfo.goalAgainst}</td>
		        		<td class="text-center">${teamInfo.goalDifference}</td>
		        		<td class="text-center">${teamInfo.points}</td>
			      	</tr>
		      	</tbody>	    
	  		</table>
		</div>
		<h2>Team Squad</h2>
		<div class="squad">
			<table class="table table-striped table-hover">
		      	<thead>
			      	<tr>
			      		<th class="text-center">순위</th>
			      		<th class="text-center">이름</th>
			      		<th class="text-center">출전수</th>
			      		<th class="text-center">출전시간</th>
			      		<th class="text-center">득점</th>
			      		<th class="text-center">어시스트</th>
			      		<th class="text-center">옐로카드</th>
			      		<th class="text-center">레드카드</th>
			      		<th class="text-center">패스성공률(%)</th>
			      		<th class="text-center">평점</th>
			      		<th class="text-center">경기최우수선수</th>
			      	</tr>
		      	</thead>
		      	<tbody>
			      	<c:forEach var="tm" items="${playerInfo}">
				      	<tr>
				        	<td class="text-center">${tm.num}</td>
			        		<td class="text-center"><a href="<%=request.getContextPath()%>/players?player=${tm.player}">${tm.player}</a></td>
			        		<td class="text-center">${tm.appearances}</td>
			        		<td class="text-center">${tm.minutes}</td>
			        		<td class="text-center">${tm.goals}</td>
			        		<td class="text-center">${tm.assists}</td>
			        		<td class="text-center">${tm.yellowCard}</td>
			        		<td class="text-center">${tm.redCard}</td>
			        		<td class="text-center">${tm.psr}</td>
			        		<td class="text-center">${tm.rating}</td>
			        		<td class="text-center">${tm.motm}</td>
				      	</tr>
			      	</c:forEach>
		      	</tbody>	    
	  		</table>
		</div>
	</div>
</body>
</html>