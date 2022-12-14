<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
	<style>
	
		* {
	    	box-sizing: border-box;
    		margin: 0;
		}
	
		div {
			display:block;
		}
	
		span:not(.gender) {
			color: #EE6A7B;
		}
		
		label {
		    font-weight: 500;
		    color: rgb(51, 51, 51);
		    line-height: 20px;
		}
		
		p.p-alert-m {
			font-size: 13px;
		    color: rgb(240, 63, 64);
		    margin-top: -4px;
		    margin-bottom: 0;
		}
		
		input[type=button] {
			cursor: pointer;
		}
		
		.css-main-container {
			min-width: 1050px;
		    margin-top: 50px;
		    margin-bottom: 60px;
		    background-color: rgb(255, 255, 255);
		}
		
		.css-page-title {
		    margin-bottom: 50px;
		    font-size: 28px;
		    line-height: 35px;
		    font-weight: 500;
		    text-align: center;
		    letter-spacing: -1px;
		    color: rgb(51, 51, 51);
		}
		
		.css-content-container {
		    width: 640px;
    		margin: 0px auto;
		}
		
		.css-content-header {
			padding-bottom: 10px;
		    border-bottom: 2px solid rgb(51, 51, 51);
		    font-size: 12px;
		    color: rgb(102, 102, 102);
		    line-height: 17px;
		    text-align: right;
		}
	
		.css-row {
		    display: inline-flex;
		    width: 100%;
		    padding: 10px 20px;
		}
		
		.css-rbtn {
		    width: 120px;
    		margin-left: 8px;
		}
		
		.css-ltitle {
			width: 139px;
    		padding-top: 12px;
		}
		
		.css-minput {
			width: 100%;
		    height: 46px;
		    padding: 0px 11px 1px 15px;
		    border-radius: 4px;
		    border: 1px solid rgb(221, 221, 221);
		    font-weight: 400;
		    font-size: 16px;
		    line-height: 1.5;
		    color: rgb(51, 51, 51);
		    outline: none;
		    box-sizing: border-box;
		}
		
		.css-minput.addr {
			height: 37px;
		}
		
/* 		.css-minput-container {
			display: flex;
			border: 1px solid #808080;
		    border-radius: 3px;
		    padding: 0px 15px;
		    height: 44;
		    width: 100%;
		} */
		
		.css-minput-birth {
			text-align: center;
		    font-size: 14px;
		    border: none;
			width: 100%;
		    height: 40px;
		    padding: 0px 11px 1px 15px;
		    border-radius: 4px;
		    font-weight: 400;
		    line-height: 38px;
		    color: rgb(51, 51, 51);
		    outline: none;
		    box-sizing: border-box;
		}
		
		.css-minput-span::after {
			content: "/";
			text-align: center;	
			color: #808080;
		}
		
		.css-buttons {
		    display: block;
		    padding: 0px 10px;
		    text-align: center;
		    overflow: hidden;
		    width: 100%;
		    height: 44px;
		    border-radius: 3px;
		    color: #9FE7F6;
		    background-color: rgb(255, 255, 255);
		    border: 1px solid #9FE7F6;
		}
		
		.css-buttons:disabled {
			border-color: rgb(221, 221, 221);
    		color: rgb(221, 221, 221);
		}
		
		.css-minput-container {
		    flex: 1 1 0%;
		}
		
		.css-minput-subcontainer {
			padding-bottom: 0px;
		}
		
		.css-minput-radio-container {
		    display: flex;
		    -webkit-box-pack: justify;
		    justify-content: space-between;
		    flex-direction: row;
		}
		
		.css-minput-birth-subcontainer {
			height: 44px;
		    display: flex;
		    -webkit-box-align: center;
		    align-items: center;
		    width: 100%;
		    border: 1px solid rgb(204, 204, 204);
		    border-radius: 3px;
		    padding: 0px 15px;
		}
		
		.css-minput-subsub {
			position: relative;
   			height: 48px;
		}
		
		.css-minput-subsub.birth {
			height: 40px;
		}
		
		.css-alert-m {
			display: none;
			padding: 10px 0px;
		}
		
		.hidden {
			display: none;
		}
		
		.css-radio {
			position: relative;
		    display: flex;
		    -webkit-box-align: center;
		    align-items: center;
		    padding: 12px 0px 9px;
		}
		
		.css-radio-shape.clicked {
			min-width: 24px;
		    min-height: 24px;
		    display: inline-block;
		    position: relative;
		    border-radius: 50%;
		    background-color: #9FE7F6;
		}
		
		.css-radio-shape {
		    min-width: 24px;
		    min-height: 24px;
		    display: inline-block;
		    position: relative;
		    border-radius: 50%;
		    background-color: white;
		    border: 1px solid rgb(221, 221, 221);
		}
		
		.css-radio-innershape {
		    width: 10px;
		    height: 10px;
		    position: absolute;
		    left: 50%;
		    top: 50%;
		    transform: translate(-50%, -50%);
		    border-radius: 50%;
		    background-color: white;
		}
		
		.css-radio-input {
			overflow: hidden;
		    width: 1px;
		    height: 1px;
		    clip: rect(0px, 0px, 0px, 0px);
		}
		
		.gender {
			margin-left: 12px;
		}
		
		.css-content-submit {
			display: flex;
		    -webkit-box-pack: center;
		    justify-content: center;
		    border-top: 1px solid rgb(247, 247, 247);
		    padding: 40px 0px;
		}
		
		.css-submit-button {
		    display: block;
		    padding: 0px 10px;
		    text-align: center;
		    overflow: hidden;
		    width: 240px;
		    height: 56px;
		    border-radius: 3px;
		    color: rgb(255, 255, 255);
		    background-color: #9FE7F6;
		    border: 0px none;
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

	<div class="css-main-container">
		
		<!-- ----------------------------------------------------- -->
		<div class="css-page-title">????????????</div>
		
		<!-- ----------------------------------------------------- -->
		<div class="css-content-container">
			
			<!-- ----------------------------------------------------- -->
			<div class="css-content-header">
				<span>*</span> ??????????????????
			</div>
			
			<!-- ----------------------------------------------------- -->
			<form>
				<div class="css-content-body">
				
					<!-- -------------------????????? ??????------------------------ -->
					<div class="css-row">
						<div class="css-ltitle">
							<label>
							?????????
							<span>*</span>
							</label>
						</div>
						<div class="css-minput-container">
							<div class="css-minput-subcontainer">
								<div class="css-minput-subsub">
									<input class="css-minput" name="id" type="text" oninput="validID(this);" maxlength="16" placeholder="???????????? ??????????????????">
								</div>
								
							</div>
							<div class="css-alert-m alertID">
								<p class="p-alert-m" id="alertID"></p>
							</div>
						</div>
						<div class="css-rbtn" >
							<input class="css-buttons" id="checkID_btn" type="button" value="????????????" onclick="checkID(this.form);">
						</div>
					</div>
					
					<!-- -------------------?????? ??????------------------------ -->
					<div class="css-row">
						<div class="css-ltitle">
							<label>
							????????????
							<span>*</span>
							</label>
						</div>
						<div class="css-minput-container">
							<div class="css-minput-subcontainer">
								<div class="css-minput-subsub">
									<input class="css-minput" name="pw" type="password" onkeyup="checkSafetyPW(this.form);" placeholder="??????????????? ??????????????????">
								</div>
							</div>
							<div class="css-alert-m alertPW">
								<p class="p-alert-m" id="alertPW"></p>
							</div>						
						</div>
						<div class="css-rbtn" ></div>
					</div>
					
					<!-- -------------------?????? ?????? ??????------------------------ -->
					<div class="css-row">
						<div class="css-ltitle">
							<label>
							??????????????????
							<span>*</span>
							</label>
						</div>
						<div class="css-minput-container">
							<div class="css-minput-subcontainer">
								<div class="css-minput-subsub">
									<input class="css-minput" name="c_pw" type="password" onkeyup="checkPW(this.form);" value="" placeholder="??????????????? ?????? ??? ??????????????????">
								</div>
							</div>
							<div class="css-alert-m alertCheckPW">
								<p class="p-alert-m" id="alertCheckPW"></p>
							</div>
						</div>
						<div class="css-rbtn" ></div>
					</div>
					
					<!-- -------------------?????? ??????------------------------ -->
					<div class="css-row">
						<div class="css-ltitle">
							<label>
							??????
							<span>*</span>
							</label>
						</div>
						<div class="css-minput-container">
							<div class="css-minput-subcontainer">
								<div class="css-minput-subsub">
									<input class="css-minput" name="name" type="text" placeholder="????????? ??????????????????">
								</div>
							</div>
						</div>
						<div class="css-rbtn" ></div>
					</div>
					
					<!-- -------------------????????? ??????------------------------ -->
					<div class="css-row">
						<div class="css-ltitle">
							<label>
							?????????
							<span>*</span>
							</label>
						</div>
						<div class="css-minput-container">
							<div class="css-minput-subcontainer">
								<div class="css-minput-subsub">
									<input class="css-minput" name="email" type="text" onkeyup="validEmail(this.form);" placeholder="???: sample@example.com">
								</div>
							</div>
							<div class="css-alert-m alertEmail">
								<p class="p-alert-m" id="alertEmail"></p>
							</div>
						</div>
						<div class="css-rbtn">
							<input class="css-buttons" id="checkEmail_btn" type="button" value="????????????" onclick="checkEmail(this.form);">
						</div>
					</div>
					
					<!-- -------------------????????? ?????? ??????------------------------ -->
					<div class="css-row">
						<div class="css-ltitle">
							<label>
							?????????
							<span>*</span>
							</label>
						</div>
						<div class="css-minput-container">
							<div class="css-minput-subcontainer">
								<div class="css-minput-subsub">
									<input class="css-minput" name="phone" type="text" placeholder="????????? ??????????????????" oninput="validPhone()">
								</div>
							</div>
						</div>
						<div>
							<div class="css-rbtn">
								<input class="css-buttons" id="get_sms" type="button" value="???????????? ??????" onclick="sendSms(this.form)">
							</div>
						</div>
					</div>
					<!-- -------------------???????????? ??????------------------------ -->
					<div class="css-row hidden">
						<div class="css-ltitle">
							<label>
							<span></span>
							</label>
						</div>
						<div class="css-minput-container">
							<div class="css-minput-subcontainer">
								<div class="css-minput-subsub">
									<input class="css-minput" id="input_sms" type="text" placeholder="???????????? 6??????" maxlength="6" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
								</div>
							</div>
						</div>
						<div>
							<div class="css-rbtn">
								<input class="css-buttons" id="check_sms" type="button" value="???????????? ??????" onclick="checkSms()">
								<input id="sms_ans" type="hidden">
							</div>
						</div>
					</div>
					<!-- -------------------?????? ??????------------------------ -->
					<div class="css-row rowAddr">
						<div class="css-ltitle">
							<label>
							??????
							<span>*</span>
							</label>
						</div>
						<div class="css-minput-container">
							<div class="css-minput-subcontainer">
								<div class="css-minput-subsub">
									<input class="css-minput addr" type="text" id="sample6_postcode" placeholder="????????????" readonly><br>
									
								</div>
							</div>
							<div class="css-minput-subcontainer">
								<div class="css-minput-subsub">
									<input class="css-minput addr" type="text" id="sample6_address" placeholder="??????" readonly>
								</div>
							</div>
							<div class="css-minput-subcontainer">
								<div class="css-minput-subsub">
									<input class="css-minput addr" type="text" id="sample6_detailAddress" placeholder="????????????">
								</div>
							</div>
						</div>
						<div class="css-rbtn">
							<input class="css-buttons" type="button" onclick="sample6_execDaumPostcode()" value="???????????? ??????">
						</div>
						<input type="hidden" name="addr" value="">
					</div>
					
					<!-- -------------------?????? ??????------------------------ -->
					<div class="css-row">
						<div class="css-ltitle">
							<label>
							??????
							<span>*</span>
							</label>
						</div>
						<div class="css-minput-container">
							<div class="css-minput-radio-container">
								<label class="css-radio" for="gender-male">
									<input class="css-radio-input" type="radio" id="gender-male" name="gender_radio" value="M" onclick="checkRadio()">
									<span id="male-radioShape" class="css-radio-shape">
										<div class="css-radio-innershape"></div>
									</span>
									<span class="gender">??????</span>
								</label>
								<label class="css-radio" for="gender-female">
									<input class="css-radio-input" type="radio" id="gender-female" name="gender_radio" value="F" onclick="checkRadio()">
									<span id="female-radioShape" class="css-radio-shape">
										<div class="css-radio-innershape"></div>
									</span>
									<span class="gender">??????</span>
								</label>
								<label class="css-radio" >
								
								</label>
								<input id="gender_result" type="hidden" name="gender" value="">
							</div>
						</div>
						<div class="css-rbtn"></div>
					</div>
					
					<!-- -------------------???????????? ??????------------------------ -->
					<div class="css-row">
						<div class="css-ltitle">
							<label>
							????????????
							<span>*</span>
							</label>
						</div>
						<div class="css-minput-container">
							<div class="css-minput-birth-subcontainer">
								<div class="css-minput-subcontainer">
									<div class="css-minput-subsub birth">
										<input class="css-minput-birth" id="birthYear" onkeyup="checkBirthYear();" placeholder="YYYY" maxlength="4" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
									</div>
								</div>
								<span class="css-minput-span"></span>
								<div class="css-minput-subcontainer">
									<div class="css-minput-subsub birth">
										<input class="css-minput-birth" id="birthMonth" onkeyup="checkBirthYear();" placeholder="MM" maxlength="2" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
									</div>
								</div>
								<span class="css-minput-span"></span>
								<div class="css-minput-subcontainer">
									<div class="css-minput-subsub birth">
										<input class="css-minput-birth" id="birthDay" onkeyup="checkBirthYear();" placeholder="DD" maxlength="2" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
									</div>
								</div>
							</div>
							<div class="css-alert-m alertBirth">
								<p class="p-alert-m" id="alertBirth"></p>
								<input type="hidden" id="birth" name="birth" value="">
							</div>
						</div>
						<div class="css-rbtn"></div>
					</div>
				</div>
				<!-- ------------------------------------------------ -->
				<div class="css-content-submit">
					<input class="css-submit-button" type="button" value="????????????" onclick="send(this.form);">
				</div>
			</form>
		</div>
	</div>
	
	<script src="/market/resources/js/httpRequest.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<script>
		var idFlag = false;
		var pwFlag = false;
		var c_pwFlag = false;
		var nameFlag = false;
		var emailFlag = false;
		var phoneFlag = false;
		var addrFlag = false;
		var genderFlag = false;
		var birthFlag = false;
		
		 
	</script>
	
	<script>
	    function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.
	
	                // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
	                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
	                var addr = ''; // ?????? ??????
	                var extraAddr = ''; // ???????????? ??????
	
	                //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
	                if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
	                    addr = data.roadAddress;
	                } else { // ???????????? ?????? ????????? ???????????? ??????(J)
	                    addr = data.jibunAddress;
	                }
	
	                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                // ????????? ???????????? ????????? ????????????.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    }
	</script>
	
	<script>
	
		//???????????? ??????
		function checkBirthYear() {
			var year = document.getElementById("birthYear").value;
			var month = document.getElementById("birthMonth").value;
			var day = document.getElementById("birthDay").value;
			
			var message = "";
			var today = new Date(); // ?????? ?????? ??????
			var curYear = today.getFullYear(); // ?????? ?????? ?????????
			
			birthFlag = false;
			
			if(year.length <= 3) {
				message = "????????? ?????? 4????????? ???????????? ??????????????????.";
			} else if(year.length == 4) {
				if(year < 1900) {
					message = "??????????????? ?????? ??????????????????.";
				} else if(year > curYear) {
					message = "??????????????? ????????? ?????????????????????.";
				} else if(curYear - year < 19) {
					message = "20??? ????????? ????????? ???????????????.";
				} else {
					//month ??????
					if(month < 1 || month > 12) {
						message = "????????? ?????? ????????? ??????????????????.";
					} else {
						
						//day ??????
						if(day < 1 || day > 31) {
							message = "????????? ?????? ????????? ??????????????????.";
						} else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
							message = "????????? ?????? ????????? ??????????????????.";
						} else if(month == 2) {
							
							var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
							if(day > 29 || (day == 29 && !isleap)) {
								message = "????????? ?????? ????????? ??????????????????.";
							} 
						}  	
					}	
				}
			}
			
			if(message == "") {
				var str = year.toString() + '/' + month.toString() + '/' + day.toString();
				document.getElementById("birth").value = str;
				document.getElementsByClassName("css-alert-m alertBirth")[0].style.display = "none";
			} else {
				document.getElementById("birth").value = "";
				document.getElementsByClassName("css-alert-m alertBirth")[0].style.display = "block";
			}
		
			document.getElementById("alertBirth").innerHTML = message;
			
			
		}
	
	</script>
	
	<script>
		
		//???????????? ??????
		function checkPW(f) {
			var pw = f.pw.value;
			var c_pw = f.c_pw.value;
			var message = "";
			
			if(!c_pw) {
				c_pwFlag = false;
				return;
			}
			if(c_pw != pw) {
				message = "????????? ???????????? ??????";
				document.getElementsByClassName("css-alert-m alertCheckPW")[0].style.display = "block";
				c_pwFlag = false;
			} else {
				document.getElementsByClassName("css-alert-m alertCheckPW")[0].style.display = "none";
				c_pwFlag = true;
			}
			
			document.getElementById("alertCheckPW").innerHTML = message;
	
		}
		
		//???????????? ??????
		function checkSafetyPW(f) {
			var pw = f.pw.value;
			var num = pw.search(/[0-9]/);
			var eng = pw.search(/[a-z]/);
			var spe = pw.search(/[~!@#$%^&*()_+|<>?:{}]/);
			var message = "";

			document.getElementsByClassName("css-alert-m alertPW")[0].style.display = "block";
			
			if (pw.length < 8 || pw.length > 20) {
				message = "8??? ?????? 20??? ????????? ??????";
				pwFlag = false;
			} else {
				if(num < 0 || eng < 0 || spe < 0) {
					message = "??????/??????/????????????(????????????)??? ??????";
					pwFlag = false;
				} else {
					document.getElementsByClassName("css-alert-m alertPW")[0].style.display = "none";
					pwFlag = true;
				}
			}
			
			document.getElementById("alertPW").innerHTML = message;
		}
		
		//id ????????????
		function checkID(f) {
			var id = f.id.value;
			var reg = /^[a-zA-Z0-9]*$/;
			
			if(id.length < 6 || id.length > 16 || !reg.test(id)) {
				alert("6??? ?????? 16??? ????????? ?????? ?????? ????????? ?????? ??????");
				return;
			}
			
			var url = "checkID.do";
			var param = "id=" + id;
			sendRequest(url, param, callback, "POST");
		}
		
		//id ????????? ??????
		function validID(id) {
			var message = "";
			var reg = /^[a-zA-Z0-9]*$/;
			var target = document.getElementById("checkID_btn");
			target.disabled = false;
			idFlag = false;
			
			document.getElementsByClassName("css-alert-m alertID")[0].style.display = "block";
			
			if(id.value.length < 5 || !reg.test(id.value)) {
				message = "6??? ?????? 16??? ????????? ?????? ?????? ????????? ?????? ??????";
			} else if(id.value.length == 16 || !reg.test(id.value)) {
				message = "6??? ?????? 16??? ????????? ?????? ?????? ????????? ?????? ??????";
				id.value = id.value.substr(0, 16);
			} else {
				document.getElementsByClassName("css-alert-m alertID")[0].style.display = "none";
			}
			
			document.getElementById("alertID").innerHTML = message;
			
		}
		
		//????????? ?????? ????????? ??????
		function validEmail(f) {
			var email = f.email.value;
			var message = "";
			
			var target = document.getElementById("checkEmail_btn");
			target.disabled = false;
			emailFlag = false;
			
			document.getElementsByClassName("css-alert-m alertEmail")[0].style.display = "inline-flex";	
			if(!email) {
				message = "???????????? ????????? ?????????.";
			} else if (!email_check(email)) {
				message = "????????? ????????? ?????? ??????????????????.";
			} else {
				document.getElementsByClassName("css-alert-m alertEmail")[0].style.display = "none";	
			}
			 
			document.getElementById("alertEmail").innerHTML = message;
				
		}
		
		
		//????????? ????????????
		function checkEmail(f) {
			var email = f.email.value;
			
			if(!email_check(email)) {
				alert("????????? ????????? ?????? ??????????????????.");
				return;
			}
		
			var url = "checkEmail.do";
			var param = "email=" + email;
			sendRequest(url, param, callbackEmail, "POST");
		}
		
		//????????? ?????? ????????? ??????
		function validPhone() {
			var target = document.getElementById("get_sms");
			target.disabled = false;
		}
		
		//sms ?????? ?????????
		function sendSms(f) {
			var userPhoneNo = f.phone.value; 
			var reg = /^[0-9]{10}/;
			
			if(!reg.test(userPhoneNo)) {
				alert("????????? ????????? ??????");
				return;
			} 
			
			var url = "sendSms.do";
			var param = "userPhoneNo=" + userPhoneNo;
			sendRequest(url, param, callbackSms, "POST");
		}
		
		//sms ????????????
		function checkSms() {
			var sms = document.getElementById("input_sms").value;
			var c_sms = document.getElementById("sms_ans").value;
			if(sms == c_sms) {
				alert("????????? ?????????????????????.");
				document.getElementsByClassName("css-row hidden")[0].style.display = "none";
				document.getElementById("get_sms").disabled = true;
				document.getElementById("input_sms").value = "";
				phoneFlag = true;
			} else {
				alert("??????????????? ???????????????");
			}
		}
		
		//?????? ?????? 
		function checkRadio() {
			if(document.getElementById('gender-male').checked) {
				document.getElementById('male-radioShape').className = "css-radio-shape clicked";
			} else {
				document.getElementById('male-radioShape').className = "css-radio-shape";
			}
			
			if(document.getElementById('gender-female').checked) {
				document.getElementById('female-radioShape').className = "css-radio-shape clicked";
			} else {
				document.getElementById('female-radioShape').className = "css-radio-shape";
			}
			
		}
		
		//??? ????????? (???????????? ??????)
		function send(f) {
			
			if(f.name.value != '') {
				nameFlag = true;
			}
			
			//addr check
			var detailAddress = document.getElementById("sample6_detailAddress").value;
			var address = document.getElementById("sample6_address").value;
			var postcode = document.getElementById('sample6_postcode').value;
			
			if(detailAddress != '' && address != '' && postcode != '') {
				f.addr.value = postcode + ' ' + address + ' ' + detailAddress; 
				addrFlag = true;
			}
			
			//gender select check
			var ele = document.getElementsByName('gender_radio');
			
			for(i = 0; i < ele.length; i++) {
				if(ele[i].checked) {
					 document.getElementById("gender_result").value = ele[i].value;
				}
			}
			
			if(f.gender.value != '') {
				genderFlag = true;
			} 
			
			//birth check
			if(f.birth.value != '') {
				birthFlag = true;
			}
			
			if(!idFlag) {
				alert("???????????? ???????????????.");
			} else if(!pwFlag) {
				alert("??????????????? ???????????????.");
			} else if(!c_pwFlag) {
				alert("???????????? ????????? ???????????????.");
			} else if(!nameFlag) {
				alert("????????? ???????????????.");
			} else if(!emailFlag) {
				alert("???????????? ???????????????.");
			} else if(!phoneFlag) {
				alert("??????????????? ???????????????.");
			} else if(!addrFlag) {
				alert("????????? ???????????????.");
			} else if(!genderFlag) {
				alert("????????? ???????????????.");
			} else if(!birthFlag) {
				alert("??????????????? ???????????????.");
			} else {
				f.method = "post";
				f.action = "signup.do";
				f.submit();
			} 
		}
		
		//????????? ????????? ??????
		function email_check(email) {

			var reg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

			return reg.test(email);

		}
		
		
		//id ???????????? ?????? ??????
		function callback() {
			if(xhr.readyState == 4 && xhr.status == 200) {
				
				var data = xhr.responseText;
				
				if(data == "exists") {
					alert("?????? ???????????? ??????????????????.");
				} else if(data == "d_exists") {
					alert("?????? ????????? ??????????????????.");
					var target = document.getElementById("checkID_btn");
					target.disabled = true;
					idFlag = true;
				}
			}
		}
		
		function callbackEmail() {
				if(xhr.readyState == 4 && xhr.status == 200) {
				
				var data = xhr.responseText;
				
				if(data == "exists") {
					alert("?????? ???????????? ????????? ?????????.");
				} else if(data == "d_exists") {
					alert("?????? ????????? ????????? ?????????.");
					var target = document.getElementById("checkEmail_btn");
					target.disabled = true;
					emailFlag = true;
				}
			}
		}
		
		function callbackSms() {
			if(xhr.readyState == 4 && xhr.status == 200) {
				
				var data = xhr.responseText;
				document.getElementById("sms_ans").value = data;
				document.getElementsByClassName("css-row hidden")[0].style.display = "inline-flex";
			}
		}
		
	</script>	
	
</body>
</html>