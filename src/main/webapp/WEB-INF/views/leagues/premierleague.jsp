<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
	*{
		box-sizing: border-box;
	}
	tr{
		height: 26px;
	}
	.round{
		float: right;
		position: absolute;
		padding-left: 1005px;
	}
	</style>
	<script type="text/javascript">
		$(document).ready(function () {
			$('option').change(function () {
				var round = $(this).html();
				
			})
		})
	</script>
</head>
<body>
	<div class="main">
		<div class="schedules">
			<h1>Premier League Fixtures</h1>
			<div class="round">
				<select id="roundNum">
		        	<option>정규라운드
		        	<option>1<option>2<option>3<option>4<option>5
		        	<option>6<option>7<option>8<option>9<option>10
		        	<option>11<option>12<option>13<option>14<option>15
		        	<option>16<option>17<option>18<option>19<option>20
		        	<option>21<option>22<option>23<option>24<option>25
		        	<option>26<option>27<option>28<option>29<option>30
		        	<option>31<option>32<option>33<option>34<option>35
		        	<option>36<option>37<option>38		   
		        </select>
			</div>
			<table class="table table-striped table-hover">			 
		      	<tr>
		      		<th class="date">August, 10, 2019</th>
		      	</tr>
		      	<c:forEach var="tmp" items="${schedule}">			      	
			      	<tr>
				        <td>${tmp.time}</td>
				        <td>${tmp.status}</td>
				        <td>${tmp.hometeam}</td>
				        <td>${tmp.result}</td>
				        <td>${tmp.awayteam}</td>
				        <td>${tmp.stadium}</td>			        			       
			      	</tr>			      	
		      	</c:forEach>			    
	  		</table>
		</div>
		<div class="tables">
		
		</div>
		<div class="standings">
		
		</div>
	</div>
</body>
</html>