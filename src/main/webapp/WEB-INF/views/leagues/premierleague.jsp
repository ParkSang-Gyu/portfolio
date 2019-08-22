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
tr{
	height: 10px;
	line-height: 5px;
}
.schedules{
	width: 1140px;
	height: 50%;
}
.round{
	float: right;
	position: absolute;
	padding-left: 1005px;
}
.tables{
	width: 1140px;
	height: 100%;
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
		<div class="main">
			<div class="schedules">
				<h2>Premier League Fixtures</h2>
				<div class="round">
					<select id="roundNum">
			        	<option <c:if test="${roundNum == 1}">selected</c:if>>1</option>
			        	<option <c:if test="${roundNum == 2}">selected</c:if>>2</option>		   
			        </select>
				</div>
				<table class="table table-striped table-hover">			 
			      	<tr>
			      		<th class="date">August, 10, 2019</th>
			      	</tr>
			      	<c:forEach var="tmp" items="${schedule}">
				      	<tr>
					        <td>${tmp.time}</td>
					        <td>${tmp.status}</td>
					        <td><a href="<%=request.getContextPath()%>/teams?team=${tmp.hometeam}">${tmp.hometeam}</a></td>
					        <td>${tmp.result}</td>
					        <td><a href="<%=request.getContextPath()%>/teams?team=${tmp.awayteam}">${tmp.awayteam}</a></td>
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
			      			<th class="text-center">순위</th>
			      			<th class="text-center">팀</th>
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
		      			<c:forEach var="tmp" items="${teamTable}">
		      				<tr>
		      					<td class="text-center">1</td>
			      				<td class="text-center">${tmp.name}</td>
			      				<td class="text-center">${tmp.played}</td>
			      				<td class="text-center">${tmp.win}</td>
			      				<td class="text-center">${tmp.draw}</td>
			      				<td class="text-center">${tmp.lose}</td>
			      				<td class="text-center">${tmp.goalFor}</td>
			      				<td class="text-center">${tmp.goalAgainst}</td>
			      				<td class="text-center">${tmp.goalDifference}</td>
			      				<td class="text-center">${tmp.points}</td>
		      				</tr>
	      				</c:forEach>
		      		</tbody>		    
		  		</table>
			</div>
			<div class="standings">
			
			</div>
		</div>
	</div>
</body>
</html>