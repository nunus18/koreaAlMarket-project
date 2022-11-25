<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style>
		.css-findid-box {
		    min-width: 1050px;
		    padding: 50px 0px;
		    background-color: white;
		}
		
		.css-findid-title {
		    padding-bottom: 30px;
		    font-weight: 500;
		    font-size: 28px;
		    text-align: center;
		}
		
		.css-findid-main {
			max-width: 400px;
		    padding: 0px 10px 6px;
		    margin: auto;
		    position: relative;
		    background-color: white;
		}
		
		.css-findid-form {
			padding: 24px 20px;
		}
		
		.css-findid-info {
			padding-bottom: 12px;
		}
		
		.css-findid-verify {
			margin-top: 18px;
		}
		
		.css-findid-verify-btn:disabled {
			background-color: rgb(200, 200, 200);
		}
		
		.css-findid-verify-btn {
		    display: block;
		    padding: 0px 10px;
		    text-align: center;
		    overflow: hidden;
		    width: 100%;
		    height: 52px;
		    border-radius: 4px;
		    color: rgb(255, 255, 255);
		    background-color: #9FE7F6;
		    border: 0px none;
		}
		
		.css-findid-info-title {
			display: inline-block;
		    padding: 8px 0px 11px;
		    font-size: 14px;
		    font-weight: 500;
		    line-height: 19px;
		    color: rgb(51, 51, 51);
		}
		
		.css-findid-input-name {
			width: 100%;
		    height: 46px;
		    padding: 0px 11px 1px 15px;
		    border-radius: 4px;
		    border: 1px solid rgb(221, 221, 221);
		    font-weight: 400;
		    font-size: 16px;
		    line-height: 1.5px;
		    color: rgb(51, 51, 51);
		    outline: none;
		    box-sizing: border-box;
		}
		
		.css-findid-input-phone {
		    width: 100%;
		    height: 46px;
		    padding: 0px 11px 1px 15px;
		    border-radius: 4px;
		    border: 1px solid rgb(221, 221, 221);
		    font-weight: 400;
		    font-size: 16px;
		    line-height: 44px;
		    color: rgb(51, 51, 51);
		    outline: none;
		    box-sizing: border-box;
		}
		
	
	</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/market/login_header.jsp"></jsp:include>
	
	<div class="css-findid-box">
		<div class="css-findid-title">아이디 찾기</div>
		<div class="css-findid-main">
			<div></div>
			<form class="css-findid-form">
				<div class="css-findid-info">
					<div class="css-findid-name">
						<label for="name" class="css-findid-info-title">이름</label>
					</div>
					<div>
						<input class="css-findid-input-name" type="text" placeholder="이름을 입력해주세요">
					</div>
				</div>
				<div class="css-findid-info">
					<div class="css-findid-phone">
						<label for="phone" class="css-findid-info-title">휴대폰 번호</label>
					</div>
					<div>
						<input class="css-findid-input-phone" type="text" placeholder="휴대폰 번호를 입력해주세요">
					</div>
				</div>
				<div class="css-findid-verify">
					<input class="css-findid-verify-btn" type="button" value="인증번호 받기" disabled>
				</div>
			</form>
		</div>
	</div>
	
</body>
</html>