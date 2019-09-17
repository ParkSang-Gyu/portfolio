$(document).ready(function () {
	var box = [$('.player-box1'),$('.player-box2'),$('.player-box3'),$('.player-box4')];
	var cnt = [];
	var click = 1;
	var num = 0;
	$('select[name=league]').change(function(){
		var league = $(this).val();
		var obj = $(this);
		$.ajax({
	        type:'POST',
	        data:league,
	        url:"/portfolio/comparison",
	        success : function(data){
	        	var str = '<option>시즌</option>';
	        	for(var i=0; i<data.seasonList.length; i++){
	        	   	str += '<option>'+data.seasonList[i]+'</option>';
	           	}
	           	obj.siblings('select[name=season]').html(str);
	        },
	    });
	});
	$('select[name=season]').change(function(){
		var season = $(this).val();
		var obj = $(this);
		$.ajax({
	        type:'POST',
	        data:season,
	        url:"/portfolio/comparison",
	        success : function(data){
	        	var str = '<option>팀</option>';
	        	for(var i=0; i<data.teamList.length; i++){
	        	   	str += '<option>'+data.teamList[i]+'</option>';
	           	}
	           	obj.siblings('select[name=team]').html(str);
	        }
	    });
	});
	$('select[name=team]').change(function(){
		var team = $(this).val();
		var obj = $(this);
		$.ajax({
	        type:'POST',
	        data:team,
	        url:"/portfolio/comparison",
	        success : function(data){
	        	var str = '<option>선수</option>';
	        	for(var i=0; i<data.playerList.length; i++){
	        	   	str += '<option>'+data.playerList[i]+'</option>';
	           	}
	           	obj.siblings('select[name=player]').html(str);
	        }
	    })
	});
	$('select[name=player]').change(function () {
		num = $(this).parent().attr('id');
		var search = cnt.indexOf(num);
		if(search == -1){
			cnt.push(num);
			cnt.sort();
		}
	})
    $('.plus-btn').click(function () {
    	click++;
		if(click == 2){
			$('.comparisonSelect3').removeClass('display-none');
			$('.comparisonSelect3').siblings().removeClass('display-none');
		}
		if(click == 3){
			$('.comparisonSelect3').removeClass('display-none');
			$('.comparisonSelect3').siblings().removeClass('display-none');
			$('.comparisonSelect4').removeClass('display-none');
			$('.comparisonSelect4').siblings().removeClass('display-none');
		}
	})
	$('.compare').click(function () {
		var index = 0;
		$('select[name=player]').each(function(){
			var playerName = $('select[name=player]').eq(index).val();
			if(/*playerName != null && */playerName !=''){
				$.ajax({
			        async:false,
					type:'POST',
			        data:playerName,
			        url:"/portfolio/comparison",
			        success : function(data){
			        	var player = data.playerStat.player;
			        	var team = data.playerStat.team;
		        		var league = data.playerStat.league;
		    			var nationality = data.playerStat.nationality;
						var age = data.playerStat.age;
						var position = data.playerStat.position;
						var apps = data.playerStat.appearances;
						var minutes = data.playerStat.minutes;
						var goals = data.playerStat.goals;
						var assists = data.playerStat.assists;
						var yellow = data.playerStat.yellowCard;
						var red = data.playerStat.redCard;
						var psr = data.playerStat.psr;
						var rating = data.playerStat.rating;
						var motm = data.playerStat.motm;
						if(index == 0){
							$('.player-info1').find('.player-name').html(player);
							$('.player-info1').find('.team-name').html(team);
							$('.player-info1').find('.tournament-name').html(league);
							$('.player-info1').find('.player-info-nationality').html(nationality);
							$('.player-info1').find('.player-info-age').html(age);
							$('.player-info1').find('.player-info-position').html(position);
							$('.player-stat1').find('.player-data-apps').html(apps);
							$('.player-stat1').find('.player-data-minutes').html(minutes);
							$('.player-stat1').find('.player-data-goals').html(goals);
							$('.player-stat1').find('.player-data-assists').html(assists);
							$('.player-stat1').find('.player-data-yellow').html(yellow);
							$('.player-stat1').find('.player-data-red').html(red);
							$('.player-stat1').find('.player-data-psr').html(psr);
							$('.player-stat1').find('.player-data-rating').html(rating);
							$('.player-stat1').find('.player-data-motm').html(motm);
							box[0].removeClass('display-none');
						}else if(index == 1){
							$('.player-info2').find('.player-name').html(player);
			  			    $('.player-info2').find('.team-name').html(team);
			  			    $('.player-info2').find('.tournament-name').html(league);
			  			    $('.player-info2').find('.player-info-nationality').html(nationality);
			  			    $('.player-info2').find('.player-info-age').html(age);
			  			    $('.player-info2').find('.player-info-position').html(position);
			  			    $('.player-stat2').find('.player-data-apps').html(apps);
			  			    $('.player-stat2').find('.player-data-minutes').html(minutes);
			  			    $('.player-stat2').find('.player-data-goals').html(goals);
			  			    $('.player-stat2').find('.player-data-assists').html(assists);
			  			    $('.player-stat2').find('.player-data-yellow').html(yellow);
			  			    $('.player-stat2').find('.player-data-red').html(red);
			  			    $('.player-stat2').find('.player-data-psr').html(psr);
			  			    $('.player-stat2').find('.player-data-rating').html(rating);
			  			    $('.player-stat2').find('.player-data-motm').html(motm);
			  			    box[1].removeClass('display-none');
						}else if(index == 2){
							$('.player-info3').find('.player-name').html(player);
			  			    $('.player-info3').find('.team-name').html(team);
			  			    $('.player-info3').find('.tournament-name').html(league);
			  			    $('.player-info3').find('.player-info-nationality').html(nationality);
			  			    $('.player-info3').find('.player-info-age').html(age);
			  			    $('.player-info3').find('.player-info-position').html(position);
			  			    $('.player-stat3').find('.player-data-apps').html(apps);
						    $('.player-stat3').find('.player-data-minutes').html(minutes);
						    $('.player-stat3').find('.player-data-goals').html(goals);
						    $('.player-stat3').find('.player-data-assists').html(assists);
						    $('.player-stat3').find('.player-data-yellow').html(yellow);
						    $('.player-stat3').find('.player-data-red').html(red);
						    $('.player-stat3').find('.player-data-psr').html(psr);
						    $('.player-stat3').find('.player-data-rating').html(rating);
						    $('.player-stat3').find('.player-data-motm').html(motm);
						    if(click == 2){
						    	box[2].removeClass('display-none');
						    }
						    /*var search = cnt.indexOf("3");
							if(search != -1){
								box[2].removeClass('display-none');
							}*/
						}else if(index == 3){
							$('.player-info4').find('.player-name').html(player);
			  			    $('.player-info4').find('.team-name').html(team);
			  			    $('.player-info4').find('.tournament-name').html(league);
			  			    $('.player-info4').find('.player-info-nationality').html(nationality);
						    $('.player-info4').find('.player-info-age').html(age);
						    $('.player-info4').find('.player-info-position').html(position);
						    $('.player-stat4').find('.player-data-apps').html(apps);
						    $('.player-stat4').find('.player-data-minutes').html(minutes);
						    $('.player-stat4').find('.player-data-goals').html(goals);
						    $('.player-stat4').find('.player-data-assists').html(assists);
						    $('.player-stat4').find('.player-data-yellow').html(yellow);
						    $('.player-stat4').find('.player-data-red').html(red);
						    $('.player-stat4').find('.player-data-psr').html(psr);
						    $('.player-stat4').find('.player-data-rating').html(rating);
						    $('.player-stat4').find('.player-data-motm').html(motm);
						    if(click == 3){
						    	box[2].removeClass('display-none');
						    	box[3].removeClass('display-none');
						    }
						    /*var search = cnt.indexOf("4");
							if(search != -1){
								box[3].removeClass('display-none');
							}*/
						}	
			        }
		        })
		        index++;
			}
		})
    	if(cnt.length != 0){
			$('.resultPlayer').removeClass('display-none');
			$('.stat-explanation').removeClass('display-none');
		}
	})
	$('.closeComparison').click(function () {
		$(this).addClass('display-none');
		$(this).siblings().addClass('display-none');
		click--;
		num = $(this).siblings().attr('id');
		if(num == 3){
			cnt.splice(cnt.indexOf("3"),1);
			box[2].addClass('display-none');
		}else if(num == 4){
			cnt.splice(cnt.indexOf("4"),1);
			box[3].addClass('display-none');
		}
		console.log(click)
	})
})



























