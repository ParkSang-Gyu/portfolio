<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Comparison</title>
<style type="text/css">
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
.resultPlayer{
	display: inline-block;
    width: 80px;
    vertical-align: bottom;
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
</style>
<script type="text/javascript">
$(document).ready(function () {
	$('select[name=league]').change(function(){
		var league = $(this).val();
		var obj = $(this);
		$.ajax({
	        type:'POST',
	        data:league,
	        url:"<%=request.getContextPath()%>/comparison",
	        success : function(data){
	        	var str = '<option>시즌</option>'
	        	for(var i=0; i<data.seasonList.length; i++){
	        	   	str += '<option>'+data.seasonList[i]+'</option>'
	           	}
	           	obj.siblings('select[name=season]').html(str);
	        }
	    });
		$('select[name=season]').change(function(){
			var season = $(this).val();
			var obj = $(this);
			$.ajax({
		        type:'POST',
		        data:season,
		        url:"<%=request.getContextPath()%>/comparison",
		        success : function(data){
		        	var str = '<option>팀</option>'
		        	for(var i=0; i<data.teamList.length; i++){
		        	   	str += '<option>'+data.teamList[i]+'</option>'
		           	}
		           	obj.siblings('select[name=team]').html(str);
		        }
		    });
			$('select[name=team]').change(function(){
				var team = $(this).val();
				var obj = $(this);
				$.ajax({
			        type:'POST',
			        data:team,
			        url:"<%=request.getContextPath()%>/comparison",
			        success : function(data){
			        	var str = '<option>선수</option>'
			        	for(var i=0; i<data.playerList.length; i++){
			        	   	str += '<option>'+data.playerList[i]+'</option>'
			           	}
			           	obj.siblings('select[name=player]').html(str);
			        }
			    });
			})
		})
	})
})
</script>
</head>
<body>
	<div class="container">
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
					<div class="comparisonSelect1">
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
					<div class="comparisonSelect2">
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
					<div class="comparisonSelect3">
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
					<div class="comparisonSelect4">
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
			<div class="resultPlayer">
				<div id="comparisonTable">
					<div><span>Apps</span></div>
					<div><span>minutes</span></div>
					<div><span>goals</span></div>
					<div><span>assists</span></div>
					<div><span>yellow</span></div>
					<div><span>red</span></div>
					<div><span>psr</span></div>
					<div><span>rating</span></div>
					<div><span>motm</span></div>
				</div>
				<div class="player1">
					
				</div>
				<div class="player2">
				
				</div>
				<div class="player3">
				
				</div>
				<div class="player4">
				
				</div>
			</div>
		</div>
	</div>
</body>
</html>