<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
<style type="text/css">
.btn{
	border-radius: 0;
	margin-right: 0;
}
tr{
	height: 8px;
	line-height: 5px;
}
.schedules{
	width: 1140px;
	height: 100%;
	position: relative;
}
#roundNum{
	float: right;
}
#round{
	display: inline-block;
	float: right;
}
.tables{
	width: 1140px;
	height: 100%;
	position: relative;
}
th,td{
	text-align: center;
}
.standings{
	width: 1140px;
	height: 100%;
	position: relative;
}
.goalStandings{
	width: 300px;
}
</style>
<script type="text/javascript">
$(document).ready(function () {
	$('#roundNum').change(function () {
		location.href = '<%=request.getContextPath()%>/premierleague?roundNum='+$(this).val();
	})
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
		   		<a class="dropdown-item" href="<%=request.getContextPath()%>/championsLeague">Champions League</a>
		   		<a class="dropdown-item" href="<%=request.getContextPath()%>/europaLeague">Europa League</a>
		 	</div>
	 	</div>
		<div class="main">
			<div class="schedules">
				<h2>Premier League Fixtures</h2>
				<div class="schedule">
					<select id="roundNum">
			        	<option <c:if test="${roundNum == 1}">selected</c:if> id="selected">1</option>
			        	<option <c:if test="${roundNum == 2}">selected</c:if>>2</option>		   
			        </select>
			        <div id="round">라운드</div>
				</div>
				<table class="table table-striped table-hover">			 
			      	<tr>
						<th>날짜</th>
						<th>시간(한국시각)</th>
						<th>상태</th>
						<th>홈팀</th>
						<th>득점</th>
						<th></th>
						<th>득점</th>
						<th>원정팀</th>
						<th>경기장</th>
					</tr>
			      	<c:forEach var="tmp" items="${schedule}">
				      	<tr>
				      		<td>${tmp.date}</td>
					        <td>${tmp.time}</td>
					        <td>${tmp.status}</td>
					        <td><a href="<%=request.getContextPath()%>/teams?team=${tmp.homeTeam}">${tmp.homeTeam}</a></td>
					        <td>${tmp.homeTeamGoal}</td>
					        <td>:</td>
					        <td>${tmp.awayTeamGoal}</td>
					        <td><a href="<%=request.getContextPath()%>/teams?team=${tmp.awayTeam}">${tmp.awayTeam}</a></td>
					        <td>${tmp.stadium}</td>			        			       
				      	</tr>		      	
			      	</c:forEach>			    
		  		</table>
			</div>
			<div class="tables">
				<h2>Premier League Table</h2>
				<table class="table table-striped table-hover">			 
			      	<thead>
			      		<tr>
			      			<th>순위</th>
			      			<th>팀</th>
				      		<th>경기수</th>
				      		<th>승</th>
				      		<th>무</th>
				      		<th>패</th>
				      		<th>득점</th>
				      		<th>실점</th>
				      		<th>득실차</th>
				      		<th>승점</th>
			      		</tr>
		      		</thead>
		      		<tbody>
		      			<c:forEach var="tmp" items="${teamTable}">
		      				<tr>
		      					<td>${tmp.rank}</td>
			      				<td>${tmp.name}</td>
			      				<td>${tmp.played}</td>
			      				<td>${tmp.win}</td>
			      				<td>${tmp.draw}</td>
			      				<td>${tmp.lose}</td>
			      				<td>${tmp.goalFor}</td>
			      				<td>${tmp.goalAgainst}</td>
			      				<td>${tmp.goalDifference}</td>
			      				<td>${tmp.points}</td>
		      				</tr>
	      				</c:forEach>
		      		</tbody>		    
		  		</table>
			</div>
			<div class="standings">
				<h2>Premier League Standings</h2>
				<div class="goalStandings">
					<table class="table table-striped table-hover">
						<tr>
							<th>순위</th>
							<th>선수</th>
							<th>팀</th>
							<th>득점</th>
							<th>출전수</th>
						</tr>
						<tr>
							<th>순위</th>
							<th>선수</th>
							<th>팀</th>
							<th>득점</th>
							<th>출전수</th>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>