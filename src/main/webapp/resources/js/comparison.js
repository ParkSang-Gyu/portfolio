$(document).ready(function () {
	$('select[name=league]').change(function(){
		var league = $(this).val();
		var obj = $(this);
		$.ajax({
	        type:'POST',
	        data:league,
	        url:"/portfolio/comparison",
	        success : function(data){
	        	var str = '<option>시즌</option>'
	        	for(var i=0; i<data.seasonList.length; i++){
	        	   	str += '<option>'+data.seasonList[i]+'</option>'
	           	}
	           	obj.siblings('select[name=season]').html(str);
	        },
	    });
		$('select[name=season]').change(function(){
			var season = $(this).val();
			var obj = $(this);
			$.ajax({
		        type:'POST',
		        data:season,
		        url:"/portfolio/comparison",
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
			        url:"/portfolio/comparison",
			        success : function(data){
			        	var str = '<option>선수</option>'
			        	for(var i=0; i<data.playerList.length; i++){
			        	   	str += '<option>'+data.playerList[i]+'</option>'
			           	}
			           	obj.siblings('select[name=player]').html(str);
			        }
			    })
			})
			    $('select[name=player]').change(function () {
					var playerName = $(this).val();
					var objNum = $(this).parent().attr('id')
					$.ajax({
				        type:'POST',
				        async:false,
				        data:playerName,
				        url:"/portfolio/comparison",
				        dataType:"json",
				        success : function(data){
				        	console.log(objNum)
				        	var player = data.playerStat.player
				        	var team = data.playerStat.team
			        		var league = data.playerStat.league
		        			var nationality = data.playerStat.nationality
	        				var age = data.playerStat.age
        					var position = data.playerStat.position
    						var apps = data.playerStat.apps
							var minutes = data.playerStat.minutes
							var goals = data.playerStat.goals
							var assists = data.playerStat.assists
							var yellow = data.playerStat.yellow
							var red = data.playerStat.red
							var psr = data.playerStat.psr
							var rating = data.playerStat.rating
							var motm = data.playerStat.motm							

				        	switch(objNum){
				        		case '1':
				        				$('.player-info1').find('.player-name').html(player);
				        				$('.player-info1').find('.team-name').html(team);
				        				$('.player-info1').find('.tournament-name').html(league);
				        				$('.player-info1').find('.player-info-teamimage').html(player);
				        				$('.player-info1').find('.player-info-nationality').html(nationality);
				        				$('.player-info1').find('.player-info-age').html(age);
				        				$('.player-info1').find('.player-info-position').html(position);
				        				$('.player-info1').find('.player-data-apps').html(apps);
				        				$('.player-info1').find('.player-data-minutes').html(minutes);
				        				$('.player-info1').find('.player-data-goals').html(goals);
				        				$('.player-info1').find('.player-data-assists').html(assists);
				        				$('.player-info1').find('.player-data-yellow').html(yellow);
				        				$('.player-info1').find('.player-data-red').html(red);
				        				$('.player-info1').find('.player-data-psr').html(psr);
				        				$('.player-info1').find('.player-data-rating').html(rating);
				        				$('.player-info1').find('.player-data-motm').html(motm);break;
				        		case '2':$('.player-info2').html(data.playerStat.player);break;
				        		case '3':$('.player-info3').html(data.playerStat.player);break;
				        		case '4':$('.player-info4').html(data.playerStat.player);break;
				        	}
				        }
				    })
				})
			})
		})
})