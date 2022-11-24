<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.imgContainer {
	display: inline-block;
}

.img {
	display: flex;
	justify-content: center;
	margin-top: 50px;
}
</style>

</head>

<body>
	<c:if test="${ sessionScope.vo ne null }">
		<jsp:include page="/WEB-INF/views/market/logout_header.jsp"></jsp:include>
	</c:if>
	<c:if test="${ sessionScope.vo eq null }">
		<jsp:include page="/WEB-INF/views/market/login_header.jsp"></jsp:include>
	</c:if>

<div id = "recommand">
	<c:forEach var="vo" items="${ list }">
		<div>${ vo.name }</div>
	</c:forEach>
</div>

</body>
</html>