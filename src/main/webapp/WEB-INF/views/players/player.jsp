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
	</style>

</head>
<body>
	<h2>Player Information</h2>
	<div class="info">
		<div class="img">
			<img alt="사진을 불러올 수 없습니다." src="${pageContext.request.contextPath}/resources/img/players/${name}.jpg">
		</div>
		<c:forEach var="tmp" items="${playerInfo}">
			<div class="information1 name">이름</div><div class="information2 name">${tmp.name}</div>
			<div class="information1 name" style="padding-left: 10px;">국적</div><div class="information2 name" style="padding-left: 20px;">${tmp.nationality}</div><br>
			<div class="information1 league">생년월일</div><div class="information2 league">${tmp.birth}</div>
			<div class="information1 league" style="padding-left: 10px;">등번호</div><div class="information2 league" style="padding-left: 20px;">${tmp.backNum}</div><br>
			<div class="information1">포지션</div><div class="information2">${tmp.position}</div>
			<div class="information1" style="padding-left: 10px;">팀</div><div class="information2" style="padding-left: 20px;">${tmp.team}</div>
		</c:forEach>
	</div>
	<div class="stat">
		선수스탯
	</div>
</body>
</html>