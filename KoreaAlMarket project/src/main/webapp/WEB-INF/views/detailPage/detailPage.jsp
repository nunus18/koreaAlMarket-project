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
			<img class="img" src="resources/img/${ vo.product_idx }.jpg">
		</div>
	<div class="ct_right_area">
		<c:forEach var="po" items="${p_list}">
			<div class="title">
				<h1>${po.name}</h1>
			</div>
			<div class="line"></div>
			<div class="author">
				<span> ${po.p_type} </span> <span>|</span> <span>
					${po.degree}도 </span> <span>|</span> <span> 유통기한
					${po.expiration_date} </span>
			</div>
			<div class="line"></div>
			<div class="price">판매가 : ${ po.price } 원</div>
			<div class="line"></div>
			<div class="button">
				<div class="button_quantity">
					주문수량 <input type="text" value="1"> <span>
						<button>+</button>
						<button>-</button>
					</span>
				</div>
				<div class="button_set">
					<a class="btn_cart">장바구니 담기</a> <a class="btn_buy">바로구매</a>
				</div>
			</div>
		</c:forEach>
	</div>
	</div>
	<div class="line"></div>
	<!-- 술댓글로 바꿔야함 -->
	<div class="content_middle">
		<div class="book_intro">${goodsInfo.bookIntro}</div>
		<div class="book_content">${goodsInfo.bookContents }</div>
	</div>
	<div class="line"></div>
	<div class="content_bottom">리뷰</div>

</body>
</html>