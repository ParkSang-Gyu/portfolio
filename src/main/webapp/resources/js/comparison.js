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
			    /*$('select[name=player]').change(function () {
					var player = $(this).val();
					$.ajax({
				        type:'POST',
				        data:player,
				        url:"/portfolio/comparison",
				        success : function(data){
				        	var name = data.playerStat.player
				        	$('player1-name').html(name)
				        	console.log(name)
				        }
				    })
				})*/
			})
		})
	})
})