$(document).ready(function(){
	$('a').addClass('color-black')
	$('.list1').click(function(){
   		$('#leaguelist').collapse('show')
   		$('#tournamentlist').collapse('hide')
   	})
   	$('.list2').click(function(){
   		$('#tournamentlist').collapse('show')
   		$('#leaguelist').collapse('hide')
   	})
   	$('.stat thead th').click(function () {
   		var league = Premier;
   		var drop = $(this).attr('id')
   		var obj = $(this)
   		$.ajax({
	        type:'POST',
	        data:league,drop,
	        url:"/portfolio/teams",
	        success : function(data){
	        	var 
	        	$('.stat tbody td').html()
	        },
	    })
	})
})
