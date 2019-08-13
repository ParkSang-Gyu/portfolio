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
			$('#roundNum').change(function () {
				location.href = '<%=request.getContextPath()%>/premierleague?roundNum='+$(this).val();
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
		        	<option selected>정규라운드</option>
		        	<option <c:if test="${roundNum == 1}">selected</c:if>>1</option>
		        	<option <c:if test="${roundNum == 2}">selected</c:if>>2</option>		   
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
				        <td><a href="<%=request.getContextPath()%>/teams?team=${tmp.hometeam}">${tmp.hometeam}</a></td>
				        <td>${tmp.result}</td>
				        <td><a href="<%=request.getContextPath()%>/teams?team=${tmp.awayteam}">${tmp.awayteam}</a></td>
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