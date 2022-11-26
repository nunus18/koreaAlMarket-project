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

.box{
  appearance: none;
  text-align-last: center;
  font-size: 25px;
  width : 200px;
  background-color: #9FE7F6;
  font-family: 'Nanum Myeongjo', serif;
  font-weight: 700;
  
  
}

.selectBox{
	display: flex;
    justify-content: center;
    heigth: 200px;
    
}

.mainContent{
	
    
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



</style>

	<!-- 부트스트랩 -->
	<!-- <link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
		crossorigin="anonymous">
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script> -->




</head>

<body>
	<c:if test="${ sessionScope.vo ne null }">
		<jsp:include page="/WEB-INF/views/market/logout_header.jsp"></jsp:include>
	</c:if>
	<c:if test="${ sessionScope.vo eq null }">
		<jsp:include page="/WEB-INF/views/market/login_header.jsp"></jsp:include>
	</c:if>
 	<br>
 	<div class="mainContent" style="height:200px;">
	::: 주류 :::
	</div>
	<br>
	<!--------------------------------------------------카테고리----------------------------------------------------------------->
	<!-- <div class="submenuContainer">
			<div ><a href="#">가격</a></div>
			<div ><a href="#">도수</a></div>
			<div ><a href="#">용량</a></div>
			<div ><a href="#">별점</a></div>
	</div> -->
	
	<div class="selectBox">
		<select class="box" id="price" name="price" onchange="price()" style="height:80px;">
		  <option selected>가격</option>
		  <option value="1"> ~ 1만원 </option>
		  <option value="2"> 1만원 ~ 3만원 </option>
		  <option value="3"> 3만원 ~ 5만원 </option>
		  <option value="4"> 5만원 이상 </option>
		</select>
  
  
		  <select class="box" id="degree" onchange="degree()">
			  <option selected>도수</option>
			  <option value="1"> ~ 5도 </option>
			  <option value="2"> 5도 ~ 10도 </option>
			  <option value="3"> 10도 이상 </option>
		  </select>
		  
		  <select class="box" id="volume" onchange="volume()">
			  <option selected>용량</option>
			  <option value="1"> ~ 100ml </option>
			  <option value="2"> 100ml ~ 300ml </option>
			  <option value="3"> 300ml 이상 </option>
		  </select>
		  
		  <select class="box" id="star" onchange="star()">
			  <option selected>별점</option>
			  <option value="1">5점</option>
			  <option value="2">4점</option>
			  <option value="3">3점</option>
			  <option value="4">2점</option>
			  <option value="5">1점</option>
		  </select>
	  </div>
  
  <!-- 부트스트랩 select 화면에 한줄로 꽉참 -->
  <!-- <select class="form-select form-select-lg mb-3" aria-label="Default select example">
  <option selected>별점</option>
  <option value="1">5점</option>
  <option value="2">4점</option>
  <option value="3">3점</option>
  <option value="4">2점</option>
  <option value="5">1점</option>
  </select>
  </div> -->
  
	<!--------------------------------------------------주류내용----------------------------------------------------------------->
		<c:if test="${ idx % 3 == 0 }">
			<div class="menu_box">
				<c:forEach var="vo" items="${m_list}" >
				<!-- 서브메뉴를 선택하면 변해야할 코드 ( 아직 하는중 ) -->
					<!-- 선택안한 화면 -->
					<div class="content">
						<!-- 이미지 클릭시 상세페이지로 넘어가기 -->
						<img class="img" src="resources/img/${ vo.product_idx }.jpg" 
							onclick="location.href='product.do'">
							
						<div class="name">이름 : ${ vo.name }</div>
						<div class="volume">용량 : ${ vo.volume }</div>
						<div class="price">가격 : ${ vo.price }</div>
					</div>
						
				</c:forEach>
			</div>
		</c:if>
		
		<c:if test="${ idx % 3 == 0 || product == 1 }">
			<div class="menu_box">
				<c:forEach var="vo" items="${m_list}" >
				<!-- 서브메뉴를 선택하면 변해야할 코드 ( 아직 하는중 ) -->
					<!-- ~ 10000원 -->
					<div class="content">
						<!-- 이미지 클릭시 상세페이지로 넘어가기 -->
						<img class="img" src="resources/img/${ vo.product_idx }.jpg" 
							onclick="location.href='product.do'">
							
						<div class="name">이름 : ${ vo.name }</div>
						<div class="volume">용량 : ${ vo.volume }</div>
						<div class="price">가격 : ${ vo.price <= 10000 }</div>
					</div>
						
				</c:forEach>
			</div>
		</c:if>
			
					
				

</body>
</html>