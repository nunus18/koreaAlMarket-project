<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>

<link rel="stylesheet" href="/market/resources/css/menu.css">
<script src="/market/resources/js/subMenuSelect.js"></script>

<style>
.mainContent{
	
    
    display: flex;
    justify-content: center;
    
    text-align: center;
	font-size: 60px;
	/* margin-ton: 50%;
	margin-bottom: 10px; */
	font-family: 'Nanum Myeongjo', serif;
	font-weight: 700;
	align-
</style>
	<!-- 부트스트랩 -->
<!-- <script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous"> -->
</head>

<body>
	<c:if test="${ sessionScope.vo ne null }">
		<jsp:include page="/WEB-INF/views/market/logout_header.jsp"></jsp:include>
	</c:if>
	<c:if test="${ sessionScope.vo eq null }">
		<jsp:include page="/WEB-INF/views/market/login_header.jsp"></jsp:include>
	</c:if>
 	<br>
 	<div class="mainContent">
	::: 추천 주류 :::
	</div>

  
	<!--------------------------------------------------주류내용----------------------------------------------------------------->
	
			<div class="carousel-wrapper">
				<div class="carousel">
			
				<c:forEach var="vo" items="${r_list}" >	 
			
					<div class="content">
						
						<!-- 이미지 클릭시 상세페이지로 넘어가기 -->
						<img class="img" src="resources/img/${ vo.product_idx }.jpg" 
							onclick="location.href='product.do'">
						<div class="name">이름 : ${ vo.name }</div>
						<div class="volume">별점 : ${ vo.star }</div>
						<div class="price">가격 : ${ vo.price }</div>
					</div>
					
				</c:forEach>
				</div>
			</div>
</body>
</html> 