<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Comparison</title>
<style type="text/css">
.selectComparison{
	width: 1140px;
	height: 200px;
	background-color: #F1F0EE;
	position: relative;
	margin: 0;
	padding: 0;
}
.empty{
	margin: 0;
	padding: 0;
	width: 8%;
	height: 100%;
	float: left;
}
.selectContainer{
	height: 170px;
	margin: 0;
	padding: 0;
}
.comparison1,.comparison2,.comparison3,.comparison4{
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
.close{
	padding: 0;
	margin: 0;
}
.btn{
	padding: 0;
}
select{
	width: 100%;
	font-weight: bold;
    border: 2px solid #F1F0EE;
}
.plus{
	width: 150px;
	height: 60px;
	margin: 23px 0 0 950px;
}
.player{
	width: 1140px;
	height: 800px;
}
</style>
<script type="text/javascript">
$(document).ready(function () {
	/* var close = '<span class="close"><button class="btn"><span class="fas fa-window-close" style="font-size: 20px;margin-right: 9px;"></span></button></span>'
	$('.plus').click(function () {
		
		$('.comparisonSelect3').before(close)
		$('.comparisonSelect4').before(close)
	})
	$('.close').click(function () {
		$(this).siblings().remove()
		$('.comparison3').remove()
	}) */
	$('#league').change(function(){
		var league = $(this).val();
		$.ajax({
	        async:true,
	        type:'POST',
	        data:{"league" : league},
	        url:"./comparison",
	        dataType:"json",
	        contentType:"application/json; charset=UTF-8",
	        success : function(data){
	        	var str = '<option>시즌</option>'
	        	for(var i=0; i<data.seasonList.length; i++){
	        	   	str += '<option>'+data.seasonList[i]+'</option>'
	           	}
	           	$('#season').html(str);
	        }
	    });
	})
})
</script>
</head>
<body>
	<div class="container">
		<h2>Player Comparison</h2>
		<div class="selectComparison">
			<div class="empty"></div>
			<div class="selectContainer">
				<div class="comparison1">
					<div class="comparisonSelect1">
						<select id="league">
							<option>리그</option>
							<option value="Premier League">프리미어리그</option>
							<option value="La Liga">라리가</option>
							<option value="Bundes Liga">분데스리가</option>
							<option value="Serie A">세리에A</option>
						</select>
						<select id="season">
							<!-- <option>시즌</option>
							<option>19-20시즌</option>
							<option>18-19시즌</option>
							<option>17-18시즌</option>
							<option>16-17시즌</option>
							<option>15-16시즌</option>
							<option>14-15시즌</option>
							<option>13-14시즌</option>
							<option>12-13시즌</option> -->
						</select>
						<select id="team">
							<option>노리치</option>
							<option>뉴캐슬</option>
							<option>레스터시티</option>
							<option>리버풀</option>
							<option>맨체스터시티</option>
							<option>맨체스터유나이티드</option>
							<option>번리</option>
							<option>본머스</option>
							<option>브라이튼</option>
							<option>사우스햄튼</option>
							<option>셰필드유나이티드</option>
							<option>아스날</option>
							<option>아스톤빌라</option>
							<option>에버튼</option>
							<option>왓포드</option>
							<option>울버햄튼</option>
							<option>웨스트햄</option>
							<option>첼시</option>
							<option>크리스탈팰리스</option>
							<option>토트넘</option>
						</select>
						<select id="player">
							<option>모하메드 살라</option>
							<option>뉴캐슬</option>
							<option>레스터시티</option>
							<option>리버풀</option>
							<option>맨체스터시티</option>
							<option>맨체스터유나이티드</option>
							<option>번리</option>
							<option>본머스</option>
							<option>브라이튼</option>
							<option>사우스햄튼</option>
							<option>셰필드유나이티드</option>
							<option>아스날</option>
							<option>아스톤빌라</option>
							<option>에버튼</option>
							<option>왓포드</option>
							<option>울버햄튼</option>
							<option>웨스트햄</option>
							<option>첼시</option>
							<option>크리스탈팰리스</option>
							<option>토트넘</option>
						</select>
					</div>
				</div>
				<div class="comparison2">
					<div class="comparisonSelect2">
						<select>
							<option>프리미어리그</option>
							<option>라리가</option>
							<option>분데스리가</option>
							<option>세리에A</option>
						</select>
						<select>
							<option>19-20시즌</option>
							<option>18-19시즌</option>
							<option>17-18시즌</option>
							<option>16-17시즌</option>
							<option>15-16시즌</option>
							<option>14-15시즌</option>
							<option>13-14시즌</option>
							<option>12-13시즌</option>
						</select>
						<select>
							<option>노리치</option>
							<option>뉴캐슬</option>
							<option>레스터시티</option>
							<option>리버풀</option>
							<option>맨체스터시티</option>
							<option>맨체스터유나이티드</option>
							<option>번리</option>
							<option>본머스</option>
							<option>브라이튼</option>
							<option>사우스햄튼</option>
							<option>셰필드유나이티드</option>
							<option>아스날</option>
							<option>아스톤빌라</option>
							<option>에버튼</option>
							<option>왓포드</option>
							<option>울버햄튼</option>
							<option>웨스트햄</option>
							<option>첼시</option>
							<option>크리스탈팰리스</option>
							<option>토트넘</option>
						</select>
						<select>
							<option>모하메드 살라</option>
							<option>뉴캐슬</option>
							<option>레스터시티</option>
							<option>리버풀</option>
							<option>맨체스터시티</option>
							<option>맨체스터유나이티드</option>
							<option>번리</option>
							<option>본머스</option>
							<option>브라이튼</option>
							<option>사우스햄튼</option>
							<option>셰필드유나이티드</option>
							<option>아스날</option>
							<option>아스톤빌라</option>
							<option>에버튼</option>
							<option>왓포드</option>
							<option>울버햄튼</option>
							<option>웨스트햄</option>
							<option>첼시</option>
							<option>크리스탈팰리스</option>
							<option>토트넘</option>
						</select>
					</div>
				</div>
			</div>
			<span class="plus">
				<button class="btn">
					<span class="fas fa-plus-square" style="font-size: 40px;"></span>
				</button>
			</span>
		</div>
		<div class="player">
			<div class="player1"></div>
			<div class="player2"></div>
			<div class="player3"></div>
			<div class="player4"></div>
		</div>
	</div>
</body>
</html>