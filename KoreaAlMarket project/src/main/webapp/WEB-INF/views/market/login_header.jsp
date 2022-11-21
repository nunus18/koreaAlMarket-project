<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.headerContainer {
	display: flex;
	justify-content: space-between;
	background-color: #F8F9FA;
	font-family: 'Nanum Myeongjo', serif;
font-weight: 700;
}

.categoryContainer {
font-family: 'Nanum Myeongjo', serif;
font-weight: 700;
	display: flex;
	justify-content: space-between;
	margin: auto;
	background-color: #9FE7F6;
	font-size: 25px;
	height: 80px;
	letter-spacing: 0.2em;
	padding-top: 25px;
}

.alchol1 {
	margin-left: 300px;
}

.food3 {
	margin-right: 300px;
}

.name {
	font-size: 60px;
	margin-left: 30px;
	margin-top: 50px;
	padding-bottom: 15px;
}

.btn-outline-success {
	width: 100px;
}

.loginAndCart {
	margin-right: 50px;
	margin-top: 10px;
}
.login {
	margin-right: 10px;
}

.search {
	margin-top: 50px;
}

.d-flex {
	width: 500px;
}
</style>
<!-- 폰트를 사용하기위한 코드 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@400;700;800&display=swap"
	rel="stylesheet">
<!-- 부트스트랩 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</head>
<body>
<!--------------------------------------------------제목과 로그인----------------------------------------------------------------->
	<div class="headerContainer">
		<div class="name">신선노름</div>
<!--------------------------------------------------검색창 부트스트랩------------------------------------------------------------->
		<div class="search">
			<nav class="navbar navbar-light bg-light">
				<div class="container-fluid">
					<form class="d-flex">
						<input class="form-control me-2" type="search"
							placeholder="검색어를 입력해주세요." aria-label="Search">
						<button class="btn btn-outline-info" type="submit">검색</button>
					</form>
				</div>
			</nav>
		</div>
<!--------------------------------------------------로그인링크----------------------------------------------------------------->		
		<div class="loginAndCart">
			<span class="login">로그인</span>
		</div>
	</div>
<!--------------------------------------------------카테고리----------------------------------------------------------------->
	<div class="categoryContainer">
			<div class="alchol1">양조주</div>
			<div class="alchol2">증류주</div>
			<div class="alchol3">혼성주</div>
			<div class="food1">밀키트</div>
			<div class="food2">건안주</div>
			<div class="food3">과자</div>
	</div>
</body>
</html>