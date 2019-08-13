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
		.info{
			width: 1140px;
			height: 300px;
		}
		.stat{
			width: 1140px;
			height: 300px;
		}
		.squad{
			width: 1140px;
			height: 600px;
		}
	</style>

</head>
<body>
	<div class="info">
		<img alt="사진을 불러올 수 없습니다." src="${pageContext.request.contextPath}/resources/img/teams/liverpool.png">
	</div>
	<div class="stat">
		팀스탯
	</div>
	<div class="squad">
		팀스쿼드
	</div>
</body>
</html>