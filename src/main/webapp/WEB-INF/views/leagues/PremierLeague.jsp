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
	float: right;
	margin: 0 5px 0 0;
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
	var str = '';
	var roundNum = $('#roundNumOri').val();
	var num = [];
	for(var i=1; i<39; i++){
		num += i;
		if(roundNum == i){
	   		str += '<option selected>'+i+'</option>';
		}
	   	else{
	   		str += '<option>'+i+'</option>';
	   	}
   	}
	$('#roundNum').html(str);
	$('a').addClass('color-black')
	$('#roundNum').change(function () {
		location.href = '<%=request.getContextPath()%>/PremierLeague?roundNum='+$(this).val();
	})
	$('.list1').click(function(){
   		$('#leaguelist').collapse('show')
   		$('#tournamentlist').collapse('hide')
   	})
   	$('.list2').click(function(){
   		$('#tournamentlist').collapse('show')
   		$('#leaguelist').collapse('hide')
   	}) 
	// 테이블 헤더 클릭시 정렬 
	function sortContent(index) {
	    var table = document.getElementsByClassName('.tbl');
	
	    sortType = (sortType =='asc')?'desc' : 'asc';
	
	    var checkSort = true;
	    var rows = table[0].rows;
	
	    while (checkSort) { // 현재와 다음만 비교하기때문에 위치변경되면 다시 정렬해준다.
	        checkSort = false;
	
	        for (var i = 1; i < (rows.length - 1); i++) {
	            var fCell = rows[i].cells[index].innerHTML.toUpperCase();
	            var sCell = rows[i + 1].cells[index].innerHTML.toUpperCase();
	
	            var row = rows[i];
	
	            // 오름차순<->내림차순 ( 이부분이 이해 잘안됬는데 오름차순이면 >, 내림차순이면 <
	            //                        이고 if문의 내용은 동일하다 )
	            if ( (sortType == 'asc' && fCell > sCell) || 
	                    (sortType == 'desc' && fCell < sCell) ) {
	
	                row.parentNode.insertBefore(row.nextSibling, row);
	                checkSort = true;
	            }
	        }
	    }
	}
	$('.tbl th').click(function () {
		$('#standing').sortContent()
	})
   	/*$('.tbl th').click(function () {
   		$('table.tbl').each(function() {
   	        var $table = $(this);
   	        //참고용 소스이다.
   	        //테이블 헤더 정렬 : start table sort
   	        $('.tbl th', $table).each(function(column) {
   	            //해더의 CSS클래스가 sort-alpha로 설정되어있다면, ABC순으로 정렬
   	            if ($(this).is('.sort-alpha')) {
   	                var direction = -1;
   	                //클릭시 정렬 실행 : 토글링으로 변경
   	                $(this).click(function() {
   	                direction = -direction;
   	                var rows = $table.find('#standing>tr').get(); //현재 선택된 헤더관련 행 가져오기
   	                    //자바스크립트의 sort 함수를 사용해서 오름차순 정렬
   	                    rows.sort(function(a, b) {
   	                        var keyA = $(a).children('td').eq(column).text().toUpperCase();
   	                        var keyB = $(b).children('td').eq(column).text().toUpperCase();
   	                        if (keyA < keyB) return -direction;
   	                        if (keyA > keyB) return direction;
   	                        return 0;
   	                    });
   	                    //정렬된 행을 테이블에 추가
   	                    $.each(rows, function(index, row) {
   	                            $table.children('#standing').append(row) });
   	                    $table.alternateRowColors(); //재정렬
   	                });
   	            }
   	        }); //end table sort
   	    });
	})*/
    
   		/* var league = 'PremierLeague';
		$.ajax({
	        async:false,
			type:'POST',
	        data:{'league' : league},
	        url:"/portfolio/PremierLeague",
	        success : function(data){
	        	var tableNum = 0;
	        	for(var i=0;i<data.rank.length;i++){
	        		if(tableNum == i){
	        			$('#rank').html(data.rank[i].rank);
			        	$('#name').html(data.rank[i].name);
			        	$('#played').html(data.rank[i].played);
			        	$('#win').html(data.rank[i].win);
			        	$('#draw').html(data.rank[i].draw);
			        	$('#lose').html(data.rank[i].lose);
			        	$('#goalFor').html(data.rank[i].goalFor);
			        	$('#goalAgainst').html(data.rank[i].goalAgainst);
			        	$('#goalDifference').html(data.rank[i].goalDifference);
			        	$('#points').html(data.rank[i].points);
	        		}
	        		tableNum++;
	        	}
	        },
	        error:function(request,status,error){
	            console.log( request.responseText ); // 실패 시 처리
	           }
	    }); */
})
</script>
</head>
<body>
	<input type="hidden" value="${roundNum}" id="roundNumOri">
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
				<h2>Premier League Fixtures</h2>
				<div class="schedule">
					<select id="roundNum"></select>
					<span id="round">라운드</span>
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
				<table class="tbl table table-striped table-hover">			 
			      	<thead>
			      		<tr>
			      			<th class="sort-alpha"><button class="rank" value="rank">순위</button></th>
			      			<th class="sort-alpha"><button class="team" value="team">팀</button></th>
			      			<th class="sort-alpha"><button class="played" value="played">경기수</button></th>
			      			<th class="sort-alpha"><button class="win" value="win">승</button></th>
			      			<th class="sort-alpha"><button class="draw" value="draw">무</button></th>
			      			<th class="sort-alpha"><button class="lose" value="lose">패</button></th>
			      			<th class="sort-alpha"><button class="goalFor" value="goalFor">득점</button></th>
			      			<th class="sort-alpha"><button class="goalAgainst" value="goalAgainst">실점</button></th>
			      			<th class="sort-alpha"><button class="goalDifference" value="goalDifference">득실차</button></th>
			      			<th class="sort-alpha"><button class="points" value="points">승점</button></th>
			      		</tr>
		      		</thead>
		      		<tbody  id="standing">
		      			<c:forEach var="tmp" items="${teamTable}">
		      				<tr id="standingTable">
		      					<td id="rank">${tmp.rank}</td>
			      				<td id="name"><a href="<%=request.getContextPath()%>/teams?team=${tmp.name}">${tmp.name}</a></td>
			      				<td id="played">${tmp.played}</td>
			      				<td id="win">${tmp.win}</td>
			      				<td id="draw">${tmp.draw}</td>
			      				<td id="lose">${tmp.lose}</td>
			      				<td id="goalFor">${tmp.goalFor}</td>
			      				<td id="goalAgainst">${tmp.goalAgainst}</td>
			      				<td id="goalDifference">${tmp.goalDifference}</td>
			      				<td id="points">${tmp.points}</td>
		      				</tr>
	      				</c:forEach>
		      		</tbody>		    
		  		</table>
			</div>
			<div class="standings">
				<h2>Premier League Standings</h2>
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
									<td>${tmp.rank}</td>
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
									<td>${tmp.rank}</td>
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
									<td>${tmp.rank}</td>
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