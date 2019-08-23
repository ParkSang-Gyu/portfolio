<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function () {
	$('#leagueName').change(function () {
		location.href = '<%=request.getContextPath()%>/comparison?leagueName='+$(this).val();
	})
}
</script>
</head>
<body>
	<div class="container">
		<h2>Player Comparison</h2>
		<div>
			<select id="leagueName">
				<option <c:if test="${leagueName == 프리미어리그}">selected</c:if>>프리미어리그</option>
				<option <c:if test="${leagueName == 라리가}">selected</c:if>>라리가</option>
				<option <c:if test="${leagueName == 분데스리가}">selected</c:if>>분데스리가</option>
				<option <c:if test="${leagueName == 세리에A}">selected</c:if>>세리에A</option>
			</select>
		</div>
	</div>
</body>
</html>