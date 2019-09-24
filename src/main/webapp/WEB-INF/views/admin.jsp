<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>관리자페이지</title>
<style type="text/css">
div{
	display: inline-block;
}
</style>
</head>
<body>
<h2>스케쥴 입력</h2>
	<form action="<%=request.getContextPath()%>/admin-insert" method="post" id="scheduleInsert">
		<div>
			<label>리그번호</label>
			<input name="leagueNum" style="width: 20px;">
		</div>
		<div>
			<label>시작시즌</label>
			<input name="seasonStart" style="width: 40px;">
		</div>
		<div>
			<label>라운드</label>
			<input name="roundNum" style="width: 25px;">
		</div>
		<div>
			<label>날짜</label>
			<input name="date" style="width: 55px;">
		</div>
		<div>
			<label>시간</label>
			<input name="time" style="width: 50px;">
		</div>
		<div>
			<label>완료여부</label>
			<input name="status" style="width: 30px;">
		</div>
		<div>
			<label>홈팀</label>
			<input name="homeTeam" style="width: 135px;">
		</div>
		<div>
			<label>홈팀득점</label>
			<input name="homeTeamGoal" style="width: 40px;">
		</div>
		<div>
			<label>스코어</label>
			<input name="score" style="width: 40px;">
		</div>
		<div>
			<label>원정팀득점</label>
			<input name="awayTeamGoal" style="width: 40px;">
		</div>
		<div>
			<label>원정팀</label>
			<input name="awayTeam" style="width: 135px;">
		</div>
		<div>
			<label>경기장</label>
			<input name="stadium" style="width: 190px;">
		</div><br>
		<button name="btn1">입력</button>
	</form>
<h2>스케쥴 업데이트</h2>
	<form action="<%=request.getContextPath()%>/admin-update" method="post" id="scheduleUpdate">
		<div>
			<label>리그번호</label>
			<input name="leagueNum" style="width: 20px;">
		</div>
		<div>
			<label>시작시즌</label>
			<input name="seasonStart" style="width: 40px;">
		</div>
		<div>
			<label>라운드</label>
			<input name="roundNum" style="width: 25px;">
		</div>
		<div>
			<label>완료여부</label>
			<input name="status" style="width: 30px;">
		</div>
		<div>
			<label>홈팀</label>
			<input name="homeTeam" style="width: 135px;">
		</div>
		<div>
			<label>홈팀득점</label>
			<input name="homeTeamGoal" style="width: 40px;">
		</div>
		<div>
			<label>스코어</label>
			<input name="score" style="width: 40px;">
		</div>
		<div>
			<label>원정팀득점</label>
			<input name="awayTeamGoal" style="width: 40px;">
		</div><br>
		<button name="btn2">입력</button>
	</form>
<h2>경기 상세 결과 입력</h2>
	<form>
		<div>
			<label>경기번호</label><br>
			<input name="matchNum">
		</div>
		<div>
			<label>팀</label><br>
			<input name="team">
		</div>
		<div>
			<label>이름</label><br>
			<input name="player">
		</div>
		<div>
			<label>선발</label><br>
			<input name="homeStarting">
		</div>
		<div>
			<label>교체</label><br>
			<input name="homeSub">
		</div>
		<div>
			<label>출전시간</label><br>
			<input name="playingTime">
		</div>
		<div>
			<label>득점</label><br>
			<input name="homeGoal">
		</div>
		<div>
			<label>어시스트</label><br>
			<input name="homeAssist">
		</div>
		<div>
			<label>옐로카드</label><br>
			<input name="homeYc">
		</div>
		<div>
			<label>레드카드</label><br>
			<input name="homeRc">
		</div>
		<div>
			<label>패스시도</label><br>
			<input name="homePassApt">
		</div>
		<div>
			<label>패스성공</label><br>
			<input name="homePassScc">
		</div>
		<div>
			<label>평점</label><br>
			<input name="rating">
		</div><br>
		<button name="btn3">입력</button>
	</form>
</body>
</html>
