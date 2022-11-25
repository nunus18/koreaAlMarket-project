<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style>
		span {
			color: #EE6A7B;
		}
	</style>

	<script src="/market/resources/js/httpRequest.js"></script>
	
	<script>
		function login(f) {
			var id = f.id.value;
			var pw = f.pw.value;
			if(id == '') {
				alert("아이디를 입력하세요.");
				return;
			}
			if(pw == '') {
				alert("비밀번호를 입력하세요.");
				return;
			}	
			
			f.method = "POST";
			f.action = "verify_login.do";
			f.submit();
			
			/* var url = "verify_login.do";
			var param = "id=" + id + "&pw=" + pw;
			sendRequest(url, param, callbackLogin, "POST"); */
		}
		
	/* 	function callbackLogin() {
			if(xhr.readyState == 4 && xhr.status == 200) {
				
				//data : "iv_id" or "iv_pw" or "success"
				var data = xhr.responseText;
				
				if(data == "iv_id") {
					alert("아이디가 틀렸습니다.");
					return;
				}
				if(data == "iv_pw") {
					alert("비밀번호가 틀렸습니다.");
					return;
				}
			}
		} */
	</script>

</head>
<body>
	<c:if test="${ sessionScope.vo ne null }">
		<jsp:include page="/WEB-INF/views/market/logout_header.jsp"></jsp:include>
	</c:if>
	<c:if test="${ sessionScope.vo eq null }">
		<jsp:include page="/WEB-INF/views/market/login_header.jsp"></jsp:include>
	</c:if>

	<div align="center">로그인</div>
	<form align="center">
		<div>
			<div>
				<c:if test="${ input_id ne null }">
					<input name="id" placeholder="아이디를 입력하세요" value="${ input_id }">
				</c:if>
				<c:if test="${ input_id eq null }">
					<input name="id" placeholder="아이디를 입력하세요">
				</c:if>
				
			</div>
			<div>
				<c:if test="${ input_pw ne null }">
					<input name="pw" type="password" placeholder="비밀번호를 입력하세요" value="${ input_pw }">
				</c:if>
				<c:if test="${ input_pw eq null }">
					<input name="pw" type="password" placeholder="비밀번호를 입력하세요">
				</c:if>
				
			</div>
			<div>
				<c:if test="${ login_result eq 'iv_id' }">
					<span>아이디가 틀렸습니다.</span>
				</c:if>
				<c:if test="${ login_result eq 'iv_pw' }">
					<span>비밀번호가 틀렸습니다.</span>
				</c:if>
				
			</div>
		</div>
		<div>
			<a href="find/id.do">아이디 찾기</a>
			<span>|</span>
			<a href="">비밀번호 찾기</a>
		</div>
		<div>
			<input type="button" value="로그인" onclick="login(this.form);"> <br>
			<input type="button" value="회원가입" onclick="location.href='signup_form.do'">
		</div>
		
	</form>
</body>
</html>