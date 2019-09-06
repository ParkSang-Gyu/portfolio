<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Comparison</title>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
.container{
	width: 1140px;
	
}
.container-box{
	width: 100%;	
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
.container-middle{
	width: 1140px;
	height: 200px;
	background-color: #F1F0EE;
	position: relative;
	margin: 0;
	padding: 0;
}
.selectContainer{
	height: 170px;
	margin: 0;
	padding: 0;
}
.comparison{
	width: 23%;
	padding-bottom: 15px;
	position: relative;
	float: left;
	margin: 0;
	padding: 0;
}
.comparisonSelect1,.comparisonSelect2,.comparisonSelect3,.comparisonSelect4{
	    margin: 24px 7px 15px 7px;
	    padding: 0;
}
select{
	width: 100%;
	font-weight: bold;
    border: 2px solid #F1F0EE;
}
.summary{
	width: 60px;
	height: 30px;
	display: inline-block;
	margin-top: 60px;
	margin-left: 12px;
	padding: 0;
	float: left;
}
.container-bottom{
	width: 1140px;
	height: 600px;
	margin: 0;
	padding: 0;
}
.close-btn{
	height: 24px;
}
.close{
	display: inline-block;
	width: 259px;
	float: left;
}
i{
	float: right;
}
.resultPlayer{
	display: inline-block;
    width: 80px;
    margin-right: 2px; 
}
#comparisonTable{
	font-weight: bold;
    width: 100%;
    text-align: right;
    padding-right: 3px;
    display: inline-block;
}
#comparisonTable div{
    border-bottom: 1px lightgray dotted;
    text-align: right;
}
#comparisonTable span{
	text-align: right;
}
.player-box1,.player-box2,.player-box3,.player-box4{
	display: inline-block;
    width: 260px;
    padding-right: 1px;
    border: 1px solid gray;
}
.player-info{
	text-align: center;
    width: 100%;
}
.player-info-top{
	text-align: center;
    background-color: #DAD8DA;
    border-radius: 10px 10px 0 0;
    padding-top: 10px;
    padding-bottom: 5px;
}
.player-info-bottom{
	background-color: #F1F1F1;
}
.player-stat{
	display: inline-block;
    text-align: center;
    padding-top: 10px;
    background-color: #F1F1F1;
    width: 100%;
    visibility: visible;
}
.player-info-top{
	text-align: center;
    background-color: #DAD8DA;
    border-radius: 10px 10px 0 0;
    padding-top: 10px;
    padding-bottom: 5px;
}
.player-info-bottom{
	background-color: #F1F1F1;
}
.player-info-left{
	width: 120px;
	height: 150px;
    display: inline-block;
    vertical-align: top;
}
.player-info-right{
	width: 124px;
    display: inline-block;
    vertical-align: top;
}
.stat-explanation{
	width: 1140px;
	margin-top: 10px;
	border: 1px solid gray;
}
.stat-explanation th{
	width: 380px;
	font-style: italic;
	text-align: left;
	line-height: normal;
	color: #808080;
	font-weight: normal;
}
.display-none{
	display: none;
}
</style>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/comparison.js"></script>
</head>
<body>
	<div class="container-box">
		<div class="container-top">
			<button type="button" class="btn btn-dark dropdown-toggle list1" data-toggle="collapse" data-target="#leaguelist">leaguelist</button>	
		 	<button type="button" class="btn btn-dark dropdown-toggle list2" data-toggle="collapse" data-target="#tournamentlist">tournamentlist</button>	
			<a href="<%=request.getContextPath()%>/statistics"><button type="button" class="btn btn-dark">statistics</button></a>
			<a href="<%=request.getContextPath()%>/comparison"><button type="button" class="btn btn-dark">comparison</button></a><br>	
			<div class="collapse" id="leaguelist">
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/premierleague?roundNum=1">Premier League</a>
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/laliga?roundNum=1">La Liga</a>
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/bundesliga?roundNum=1">Bundes Liga</a>
			   	<a class="dropdown-item" href="<%=request.getContextPath()%>/seriea?roundNum=1">Serie A</a>
		  	</div>
		  	<div class="collapse" id="tournamentlist">
		   		<a class="dropdown-item" href="<%=request.getContextPath()%>/championsLeague">Champions League</a>
		   		<a class="dropdown-item" href="<%=request.getContextPath()%>/europaLeague">Europa League</a>
		 	</div>
	 	</div>
		<h2>Player Comparison</h2>
		<div class="container-middle">
			<div class="selectContainer">
				<div class="comparison">
					<div class="comparisonSelect1" id="1">
						<select name="league">
							<option>리그</option>
							<option value="PremierLeague">프리미어리그</option>
							<option value="LaLiga">라리가</option>
							<option value="BundesLiga">분데스리가</option>
							<option value="SerieA">세리에A</option>
						</select>
						<select name="season"></select>
						<select name="team"></select>
						<select name="player"></select>
					</div>
				</div>
				<div class="comparison">
					<div class="comparisonSelect2" id="2">
						<select name="league">
							<option>리그</option>
							<option value="PremierLeague">프리미어리그</option>
							<option value="LaLiga">라리가</option>
							<option value="BundesLiga">분데스리가</option>
							<option value="SerieA">세리에A</option>
						</select>
						<select name="season"></select>
						<select name="team"></select>
						<select name="player"></select>
					</div>
				</div>
				<div class="comparison">
					<div class="comparisonSelect3" id="3">
						<select name="league">
							<option>리그</option>
							<option value="PremierLeague">프리미어리그</option>
							<option value="LaLiga">라리가</option>
							<option value="BundesLiga">분데스리가</option>
							<option value="SerieA">세리에A</option>
						</select>
						<select name="season"></select>
						<select name="team"></select>
						<select name="player"></select>
					</div>
				</div>
				<div class="comparison">
					<div class="comparisonSelect4" id="4">
						<select name="league">
							<option>리그</option>
							<option value="PremierLeague">프리미어리그</option>
							<option value="LaLiga">라리가</option>
							<option value="BundesLiga">분데스리가</option>
							<option value="SerieA">세리에A</option>
						</select>
						<select name="season"></select>
						<select name="team"></select>
						<select name="player"></select>
					</div>
				</div>
				<div class="summary">
					<button class="btn btn-dark">비교</button>
				</div>
			</div>
		</div>
		<div class="container-bottom">
			<div class="resultPlayer display-none">
				<div id="comparisonTable">
					<div><span>Apps</span></div>
					<div><span>Minutes</span></div>
					<div><span>Goals</span></div>
					<div><span>Assists</span></div>
					<div><span>Yellow</span></div>
					<div><span>Red</span></div>
					<div><span>Psr</span></div>
					<div><span>Rating</span></div>
					<div><span>Motm</span></div>
				</div>
			</div>
			<div class="player-box1 display-none" id="5">
				<div class="close-btn">
					<div class="close display-none" id="x1"><i class="fas fa-window-close"></i></div>
				</div>
				<div class="player-info1">
					<div class="player-info-top">
						<div class="player-name"></div>
						<div class="team-name"></div>
						<div class="tournament-name"></div>
					</div>
					<div class="player-info-bottom">
						<div class="player-info-left">
							<img alt="사진을 불러올 수 없습니다." src="${pageContext.request.contextPath}/resources/img/players/${playerName}.jpg">
						</div>
						<div class="player-info-right">
							<div class="player-info-teamimage">
								<img alt="사진을 불러올 수 없습니다." src="${pageContext.request.contextPath}/resources/img/teams/${team}.png">
							</div>
							<div class="player-info-nationality"></div>
							<div class="player-info-age"></div>
							<div class="player-info-position"></div>
						</div>
					</div>
				</div>
				<div class="player-stat1">
						<div class="player-stat-box">
							<div class="player-data-apps"></div>
							<div class="player-data-minutes"></div>
							<div class="player-data-goals"></div>
							<div class="player-data-assists"></div>
							<div class="player-data-yellow"></div>
							<div class="player-data-red"></div>
							<div class="player-data-psr"></div>
							<div class="player-data-rating"></div>
							<div class="player-data-motm"></div>
						</div>
					</div>
			</div>
			<div class="player-box2 display-none" id="6">
				<div class="close-btn">
					<div class="close display-none" id="x2"><i class="fas fa-window-close"></i></div>
				</div>
				<div class="player-info2">
					<div class="player-info-top">
						<div class="player-name"><strong></strong></div>
						<div class="team-name"></div>
						<div class="tournament-name"></div>
					</div>
					<div class="player-info-bottom">
						<div class="player-info-left">
							<img alt="사진을 불러올 수 없습니다." src="${pageContext.request.contextPath}/resources/img/players/${playerName}.jpg">
						</div>
						<div class="player-info-right">
							<div class="player-info-teamimage">
								<img alt="사진을 불러올 수 없습니다." src="${pageContext.request.contextPath}/resources/img/teams/${team}.png">
							</div>
							<div class="player-info-nationality"></div>
							<div class="player-info-age"></div>
							<div class="player-info-position"></div>
						</div>
					</div>
				</div>
				<div class="player-stat2">
					<div class="player-stat-box">
						<div class="player-data-apps"></div>
						<div class="player-data-minutes"></div>
						<div class="player-data-goals"></div>
						<div class="player-data-assists"></div>
						<div class="player-data-yellow"></div>
						<div class="player-data-red"></div>
						<div class="player-data-psr"></div>
						<div class="player-data-rating"></div>
						<div class="player-data-motm"></div>
					</div>
				</div>
			</div>
			<div class="player-box3 display-none" id="7">
				<div class="close-btn">
					<div class="close display-none" id="x3"><i class="fas fa-window-close"></i></div>
				</div>
				<div class="player-info3">
					<div class="player-info-top">
						<div class="player-name"><strong></strong></div>
						<div class="team-name"></div>
						<div class="tournament-name"></div>
					</div>
					<div class="player-info-bottom">
						<div class="player-info-left">
							<img alt="사진을 불러올 수 없습니다." src="${pageContext.request.contextPath}/resources/img/players/${playerName}.jpg">
						</div>
						<div class="player-info-right">
							<div class="player-info-teamimage">
								<img alt="사진을 불러올 수 없습니다." src="${pageContext.request.contextPath}/resources/img/teams/${team}.png">
							</div>
							<div class="player-info-nationality"></div>
							<div class="player-info-age"></div>
							<div class="player-info-position"></div>
						</div>
					</div>
				</div>
				<div class="player-stat3">
					<div class="player-stat-box">
						<div class="player-data-apps"></div>
						<div class="player-data-minutes"></div>
						<div class="player-data-goals"></div>
						<div class="player-data-assists"></div>
						<div class="player-data-yellow"></div>
						<div class="player-data-red"></div>
						<div class="player-data-psr"></div>
						<div class="player-data-rating"></div>
						<div class="player-data-motm"></div>
					</div>
				</div>
			</div>
			<div class="player-box4 display-none" id="8">
				<div class="close-btn">
					<div class="close display-none" id="x4"><i class="fas fa-window-close"></i></div>
				</div>
				<div class="player-info4">
					<div class="player-info-top">
						<div class="player-name"><strong></strong></div>
						<div class="team-name"></div>
						<div class="tournament-name"></div>
					</div>
					<div class="player-info-bottom">
						<div class="player-info-left">
							<img alt="사진을 불러올 수 없습니다." src="${pageContext.request.contextPath}/resources/img/players/${playerName}.jpg">
						</div>
						<div class="player-info-right">
							<div class="player-info-teamimage">
								<img alt="사진을 불러올 수 없습니다." src="${pageContext.request.contextPath}/resources/img/teams/${team}.png">
							</div>
							<div class="player-info-nationality"></div>
							<div class="player-info-age"></div>
							<div class="player-info-position"></div>
						</div>
					</div>
				</div>
				<div class="player-stat4">
					<div class="player-stat-box">
						<div class="player-data-apps"></div>
						<div class="player-data-minutes"></div>
						<div class="player-data-goals"></div>
						<div class="player-data-assists"></div>
						<div class="player-data-yellow"></div>
						<div class="player-data-red"></div>
						<div class="player-data-psr"></div>
						<div class="player-data-rating"></div>
						<div class="player-data-motm"></div>
					</div>
				</div>
			</div>
			<div class="stat-explanation display-none">
				<table>
					<tr>
						<th>
							<strong>Apps</strong>
							: 출전경기수
						</th>
						<th>
							<strong>Minutes</strong>
							: 출전시간
						</th>
						<th>
							<strong>Goals</strong>
							: 득점
						</th>
					</tr>
					<tr>
						<th>
							<strong>Assists</strong>
							: 어시스트
						</th>
						<th>
							<strong>Yellow</strong>
							: 옐로우 카드
						</th>
						<th>
							<strong>Red</strong>
							: 레드 카드
						</th>
					</tr>
					<tr>
						<th>
							<strong>Psr</strong>
							: 패스성공률
						</th>
						<th>
							<strong>Rating</strong>
							: 평점
						</th>
						<th>
							<strong>Motm</strong>
							: 경기 최우수선수 선정
						</th>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>