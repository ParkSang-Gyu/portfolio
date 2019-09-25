<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
.container{
	min-width: 1140px;
	padding: 0;
	position: relative;
}
.btn{
	border-radius: 0;
	margin-right: 0;
}
#roundNum{
	float: right;
}
#round{
	display: inline-block;
	float: right;
}
.schedules,.tables,.standings{
	width: 1140px;
	position: relative;
}
th,td{
	font-size: 12px;
	text-align: center;
}
button{
	background-color: white;
	border: white;
}
.goalStandings{
	width: 340px;
	display: inline-block;
}
.assistStandings{
	width: 410px;
	display: inline-block;
}
.ratingStandings{
	width: 370px;
	display: inline-block;
}
.assistStandings,.ratingStandings{
	margin-left: 5px;
}
</style>
<script type="text/javascript">
$(document).ready(function () {
	$('a').addClass('color-black')
	$('#roundNum').change(function () {
		location.href = '<%=request.getContextPath()%>/LaLiga?roundNum='+$(this).val();
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
		 	<%-- <button type="button" class="btn btn-dark dropdown-toggle list2" data-toggle="collapse" data-target="#tournamentlist">tournamentlist</button>	
			<a href="<%=request.getContextPath()%>/statistics"><button type="button" class="btn btn-dark">statistics</button></a> --%>
			<a href="<%=request.getContextPath()%>/comparison"><button type="button" class="btn btn-dark">comparison</button></a><br>	
			<div class="collapse" id="leaguelist">
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/PremierLeague?roundNum=1">Premier League</a>
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/LaLiga?roundNum=1">La Liga</a>
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/BundesLiga?roundNum=1">Bundes Liga</a>
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/SerieA?roundNum=1">Serie A</a>
		  	</div>
		  	<%-- <div class="collapse" id="tournamentlist">
		   		<a class="dropdown-item" href="<%=request.getContextPath()%>/championsLeague">Champions League</a>
		   		<a class="dropdown-item" href="<%=request.getContextPath()%>/europaLeague">Europa League</a>
		 	</div> --%>
	 	</div>
		<div class="main">
			<div class="schedules">
				<h2>La Liga Fixtures</h2>
				<div class="schedule">
					<select id="roundNum">
			        	<option <c:if test="${roundNum == 1}">selected</c:if>>1</option>
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
				<h2>La Liga Table</h2>
				<table class="table table-striped table-hover">			 
			      	<thead>
			      		<tr>
			      			<th><button class="ranking" value="ranking">순위</button></th>
			      			<th><button class="team" value="team">팀</button></th>
			      			<th><button class="played" value="played">경기수</button></th>
			      			<th><button class="win" value="win">승</button></th>
			      			<th><button class="draw" value="draw">무</button></th>
			      			<th><button class="lose" value="lose">패</button></th>
			      			<th><button class="goalFor" value="goalFor">득점</button></th>
			      			<th><button class="goalAgainst" value="goalAgainst">실점</button></th>
			      			<th><button class="goalDifference" value="goalDifference">득실차</button></th>
			      			<th><button class="points" value="points">승점</button></th>
			      		</tr>
		      		</thead>
		      		<tbody>
		      			<c:forEach var="tmp" items="${teamTable}">
		      				<tr>
		      					<td class="ranking">${tmp.ranking}</td>
			      				<td class="team"><a href="<%=request.getContextPath()%>/teams?team=${tmp.name}">${tmp.name}</a></td>
			      				<td class="played">${tmp.played}</td>
			      				<td class="win">${tmp.win}</td>
			      				<td class="draw">${tmp.draw}</td>
			      				<td class="lose">${tmp.lose}</td>
			      				<td class="goalFor">${tmp.goalFor}</td>
			      				<td class="goalAgainst">${tmp.goalAgainst}</td>
			      				<td class="goalDifference">${tmp.goalDifference}</td>
			      				<td class="points">${tmp.points}</td>
		      				</tr>
	      				</c:forEach>
		      		</tbody>		    
		  		</table>
			</div>
			<div class="standings">
				<h2>La Liga Standings</h2>
				<div class="goalStandings">
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>순위</th>
								<th>선수</th>
								<th>팀</th>
								<th>득점</th>
								<th>출전수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="tmp" items="${goals}">
								<tr>
									<td>${tmp.ranking}</td>
									<td><a href="<%=request.getContextPath()%>/players?player=${tmp.player}">${tmp.player}</a></td>
									<td><a href="<%=request.getContextPath()%>/teams?team=${tmp.team}">${tmp.team}</a></td>
									<td>${tmp.goals}</td>
									<td>${tmp.appearances}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="assistStandings">
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>순위</th>
								<th>선수</th>
								<th>팀</th>
								<th>어시스트</th>
								<th>출전수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="tmp" items="${assists}">
								<tr>
									<td>${tmp.ranking}</td>
									<td><a href="<%=request.getContextPath()%>/players?player=${tmp.player}">${tmp.player}</a></td>
									<td><a href="<%=request.getContextPath()%>/teams?team=${tmp.team}">${tmp.team}</a></td>
									<td>${tmp.assists}</td>
									<td>${tmp.appearances}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="ratingStandings">
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>순위</th>
								<th>선수</th>
								<th>팀</th>
								<th>평점</th>
								<th>출전수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="tmp" items="${rating}">
								<tr>
									<td>${tmp.ranking}</td>
									<td><a href="<%=request.getContextPath()%>/players?player=${tmp.player}">${tmp.player}</a></td>
									<td><a href="<%=request.getContextPath()%>/teams?team=${tmp.team}">${tmp.team}</a></td>
									<td>${tmp.rating}</td>
									<td>${tmp.appearances}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>