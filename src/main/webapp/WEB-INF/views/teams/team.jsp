<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		*{
			box-sizing: border-box;
		}
		.container{
			width: 1140px;
			padding: 0;
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
			height: 300px;
		}
		.squad{
			width: 1140px;
			height: 600px;
		}
	</style>
</head>
<body>
	<div class="container">
		<h2>Team Information</h2>
		<div class="info">
			<div class="img">
				<img alt="사진을 불러올 수 없습니다." src="${pageContext.request.contextPath}/resources/img/teams/${name}.png">
			</div>
			<c:forEach var="tmp" items="${teamInfo}">
				<div class="information1 name">이름</div><div class="information2 name">${tmp.name}</div>
				<div class="information1 name" style="padding-left: 10px;">창단연도</div><div class="information2 name" style="padding-left: 20px;">${tmp.establishment}</div><br>
				<div class="information1 league">리그</div><div class="information2 league">${tmp.league}</div>
				<div class="information1 league" style="padding-left: 10px;">경기장</div><div class="information2 league" style="padding-left: 20px;">${tmp.stadium}</div><br>
				<div class="information1">연고지</div><div class="information2">${tmp.hometown}</div>
				<div class="information1" style="padding-left: 10px;">감독</div><div class="information2" style="padding-left: 20px;">${tmp.coach}</div>
			</c:forEach>
		</div>
		<div class="stat">
			팀스탯
		</div>
		<h2>Team Squad</h2>
		<div class="squad">
			<table class="table table-striped table-hover">
		      	<thead>
			      	<tr>
			      		<th>순위</th>
			      		<th>이름</th>
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
				        <td>1</td>
				        <c:forEach var="tmp" items="${playerInfo}">
				        	<td><a href="<%=request.getContextPath()%>/teams?team=${tmp.hometeam}">Andrew Robertson</a></td>		        			       
			      		</c:forEach>
			      	</tr>
			      	<tr>
				        <td>2</td>
				        <td><a href="#">Roberto Firmino</a></td>		        			       
			      	</tr>
			      	<tr>
				        <td>3</td>
				        <td><a href="#">Mohamed salah</a></td>		        			       
			      	</tr>
			      	<tr>
				        <td>4</td>
				        <td><a href="#">Trent Alexander-Arnold</a></td>		        			       
			      	</tr>
			      	<tr>
				        <td>5</td>
				        <td><a href="#">Sadio Mane</a></td>		        			       
			      	</tr>
		      	</tbody>	    
	  		</table>
		</div>
	</div>
</body>
</html>