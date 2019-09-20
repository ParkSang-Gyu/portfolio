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
<script type="text/javascript">
$(document).ready(function () {
	$('button[name=btn1]').click(function () {
		var leagueNum = $('input[name=leagueNum]').val();
		var seasonStart = $('input[name=seasonStart]').val();
		var seasonEnd = $('input[name=seasonEnd]').val();
		var roundNum = $('input[name=roundNum]').val();
		var date = $('input[name=date]').val();
		var time = $('input[name=time]').val();
		var status = $('input[name=status]').val();
		var homeTeam = $('input[name=homeTeam]').val();
		var awayTeam = $('input[name=awayTeam]').val();
		var stadium = $('input[name=stadium]').val();
		$.ajax({
	        async:true,
	        type:'POST',
	        data:{"leagueNum":leagueNum,"seasonStart":seasonStart,"seasonEnd":seasonEnd,"roundNum":roundNum,
	        	"date":date,"time":time,"status":status,"homeTeam":homeTeam,"awayTeam":awayTeam,"stadium":stadium},
	        url:"<%=request.getContextPath()%>/admin",
	        dataType:"json",
	        contentType:"application/json; charset=UTF-8",
	        success : function(data){
	            alert('전송을 완료하였습니다');
			},
			error:function(request,status,error){
	    		console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	    		alert('전송을 실패하였습니다.');
			}
		})
	})
})
</script>
</head>
<body>
<h2>스케쥴 입력</h2>
	<form action="<%=request.getContextPath()%>/admin" method="post" id="scheduleData">
		<div>
			<label>리그번호</label>
			<input name="leagueNum" style="width: 30px;">
		</div>
		<div>
			<label>시작시즌</label>
			<input name="seasonStart" style="width: 50px;">
		</div>
		<div>
			<label>종료시즌</label>
			<input name="seasonEnd" style="width: 50px;">
		</div>
		<div>
			<label>라운드</label>
			<input name="roundNum" style="width: 30px;">
		</div>
		<div>
			<label>날짜</label>
			<input name="date" style="width: 50px;">
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
			<input name="homeTeam">
		</div>
		<div>
			<label>원정팀</label>
			<input name="awayTeam">
		</div>
		<div>
			<label>경기장</label>
			<input name="stadium">
		</div>
		<button name="btn1">입력</button>
	</form>
<h2>경기데이터 입력</h2>
	<form action="<%=request.getContextPath()%>/admin" method="post" id="matchData">
		<div>
			<label>홈팀득점자</label><br>
			<input name="HTGPlayer"><br>
			<input name="HTGPlayer"><br>
			<input name="HTGPlayer"><br>
			<input name="HTGPlayer"><br>
			<input name="HTGPlayer"><br>
			<input name="HTGPlayer"><br>
			<input name="HTGPlayer"><br>
			<input name="HTGPlayer"><br>
			<input name="HTGPlayer"><br>
			<input name="HTGPlayer">
		</div>
		<div>
			<label>홈팀어시스트</label><br>
			<input name="HTAPlayer"><br>
			<input name="HTAPlayer"><br>
			<input name="HTAPlayer"><br>
			<input name="HTAPlayer"><br>
			<input name="HTAPlayer"><br>
			<input name="HTAPlayer"><br>
			<input name="HTAPlayer"><br>
			<input name="HTAPlayer"><br>
			<input name="HTAPlayer"><br>
			<input name="HTAPlayer">
		</div>
		<div>
			<label>원정팀득점자</label><br>
			<input name="ATGPlayer"><br>
			<input name="ATGPlayer"><br>
			<input name="ATGPlayer"><br>
			<input name="ATGPlayer"><br>
			<input name="ATGPlayer"><br>
			<input name="ATGPlayer"><br>
			<input name="ATGPlayer"><br>
			<input name="ATGPlayer"><br>
			<input name="ATGPlayer"><br>
			<input name="ATGPlayer">
		</div>
		<div>
			<label>원정팀어시스트</label><br>
			<input name="ATAPlayer"><br>
			<input name="ATAPlayer"><br>
			<input name="ATAPlayer"><br>
			<input name="ATAPlayer"><br>
			<input name="ATAPlayer"><br>
			<input name="ATAPlayer"><br>
			<input name="ATAPlayer"><br>
			<input name="ATAPlayer"><br>
			<input name="ATAPlayer"><br>
			<input name="ATAPlayer">
		</div>
		<div>
			<label>홈팀선발</label><br>
			<input name="homeStarting"><br>
			<input name="homeStarting"><br>
			<input name="homeStarting"><br>
			<input name="homeStarting"><br>
			<input name="homeStarting"><br>
			<input name="homeStarting"><br>
			<input name="homeStarting"><br>
			<input name="homeStarting"><br>
			<input name="homeStarting"><br>
			<input name="homeStarting"><br>
			<input name="homeStarting">
		</div>
		<div>
			<label>홈팀교체</label><br>
			<input name="homeSub"><br>
			<input name="homeSub"><br>
			<input name="homeSub">
		</div>
		<div>
			<label>원정팀선발</label><br>
			<input name="awayStarting"><br>
			<input name="awayStarting"><br>
			<input name="awayStarting"><br>
			<input name="awayStarting"><br>
			<input name="awayStarting"><br>
			<input name="awayStarting"><br>
			<input name="awayStarting"><br>
			<input name="awayStarting"><br>
			<input name="awayStarting"><br>
			<input name="awayStarting"><br>
			<input name="awayStarting">
		</div>
		<div>
			<label>원정팀교체</label><br>
			<input name="awaySub"><br>
			<input name="awaySub"><br>
			<input name="awaySub">
		</div>
		<button name="btn2">입력</button>
	</form>
</body>
</html>
