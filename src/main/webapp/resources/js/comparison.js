$(document).ready(function () {
	var box = [$('.player-box1'),$('.player-box2'),$('.player-box3'),$('.player-box4')];
	var closeBtn = [$('#x1'),$('#x2'),$('#x3'),$('#x4')];
	var cnt = [];
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
    	var playerName = $(this).val();
		var objNum = $(this).parent().attr('id');
		$.ajax({
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
	        	switch(objNum){
	        		case '1': $('.player-info1').find('.player-name').html(player);
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
    						  cnt[0] = objNum;
    						  break;
	        		case '2': $('.player-info2').find('.player-name').html(player);
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
				  			  cnt[1] = objNum;
				  			  break;
	        		case '3': $('.player-info3').find('.player-name').html(player);
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
    						  cnt[2] = objNum;
    						  break;
	        		case '4': $('.player-info4').find('.player-name').html(player);
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
    						  cnt[3] = objNum;
    						  break;
        		}
	        }
        })
    })
	$('.summary').click(function () { 
    	for(var i=0;i<4;i++){
    		if(cnt[i] == i+1){
    			$('.resultPlayer').removeClass('display-none');
    			$('.stat-explanation').removeClass('display-none');
    			box[i].removeClass('display-none');
    			closeBtn[i].removeClass('display-none');
    		}
    	}
    	console.log(cnt);
	})
	$('.close').click(function () {
		$(this).parent().parent().addClass('display-none');
		if(sizeof(cnt) == 0){
			$('.resultPlayer').addClass('display-none');
			$('.stat-explanation').addClass('display-none');
		}
	})
})



























