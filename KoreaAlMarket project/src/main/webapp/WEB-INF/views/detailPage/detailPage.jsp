<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품상세페이지</title>
<link rel="stylesheet" href="/market/resources/css/product.css">
<style>
.submenuContainer {
	display: flex; /* 내용 한줄로 */
	height: 80px;
	width: 800px;
	font-size: 25px;
	background-color: #9FE7F6;
	font-family: 'Nanum Myeongjo', serif;
	font-weight: 700;
	margin: auto; /* div를 가운데 */
	text-align: left; /* text를 가운데 */
	justify-content: space-around;
	letter-spacing: 0.2em; /* 글자사이 간격  */
	padding-top: 25px; /* 위에서부터 간격 */
}

.mainContent {
	display: flex;
	justify-content: center;
	text-align: center;
	font-size: 60px;
	/* margin-ton: 50%;
	margin-bottom: 10px; */
	font-family: 'Nanum Myeongjo', serif;
	font-weight: 700;
	align-items: center;
}

.box {
	appearance: none;
	text-align-last: center;
	font-size: 25px;
	width: 200px;
	background-color: #9FE7F6;
	font-family: 'Nanum Myeongjo', serif;
	font-weight: 700;
}

.selectBox {
	display: flex;
	justify-content: center;
	heigth: 200px;
}
</style>
<script type="text/javascript">
function in_cart(){

	if(sessionScope.vo ne null)
	
}
</script>
</head>
<body>

	<c:if test="${ sessionScope.vo ne null }">
		<jsp:include page="/WEB-INF/views/market/logout_header.jsp"></jsp:include>
	</c:if>
	<c:if test="${ sessionScope.vo eq null }">
		<jsp:include page="/WEB-INF/views/market/login_header.jsp"></jsp:include>
	</c:if>
	<br>

	<div class="line"></div>
	<div class="content_top">
		<div class="ct_left_area">
			<img class="img" src="resources/img/${ productVo.product_idx }.jpg">
		</div>
		<div class="ct_right_area">
			<div class="title">
				<h1>${productVo.name}</h1>
			</div>
			<div class="line"></div>
			<div class="author">
				<span> ${productVo.p_type} </span> <span>|</span> <span>
					${productVo.degree}도 </span> <span>|</span> <span> 유통기한
					${productVo.expiration_date} </span>
			</div>
			<div class="line"></div>
			<div class="price">판매가 : ${ productVo.price } 원</div>
			<div class="line"></div>
			<div class="button">
				<div class="button_quantity">
					<div class="product_number">남은 수량 : ${ productVo.product_number }
						개</div>
					주문수량 <select id="cnt" name="cnt" onchange="su();">
						<option value="0">수량을 선택해주세요</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select> </span>
				</div>
				<div class="button_set">
					<c:if test="${ sessionScope.vo ne null }">
						<a class="btn_cart" onclick="in_cart()">장바구니 담기</a>
					</c:if>
					<c:if test="${ sessionScope.vo eq null }">
						<a class="btn_cart" onclick="location.href='login.do'">장바구니 담기</a>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	<div class="line"></div>
	<!-- 술댓글로 바꿔야함 -->
	<div class="content_middle">리뷰</div>

</body>
</html>