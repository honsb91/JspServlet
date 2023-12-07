<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<style>
.gradient-custom {
	/* fallback for old browsers */
	background: #6a11cb;
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1),
		rgba(37, 117, 252, 1));
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(106, 17, 203, 1),
		rgba(37, 117, 252, 1))
}
</style>
<html>
<title>Insert title here</title>

<%@ include file="/include/header.jsp"%>
<section class="vh-100 gradient-custom">
	<div class="container py-5 h-100">
		<div
			class="row d-flex justify-content-center align-items-center h-100">
			<div class="col-12 col-md-8 col-lg-6 col-xl-5">
				<div class="card bg-dark text-white" style="border-radius: 1rem;">
					<div class="card-body p-5 text-center">
						<div class="mb-md-5 mt-md-4 pb-5">
							<h2 class="fw-bold mb-2 text-uppercase">Login</h2>
							<form method="post">
								<div class="form-outline form-white mb-4">
									<input type="text" id="user_id" name="user_id"
										class="form-control form-control-lg" placeholder="아이디 입력" /> <label
										class="form-label" for="user_id">id</label>
								</div>
								<div class="form-outline form-white mb-4">
									<input type="password" id="user_pw" name="user_pw"
										class="form-control form-control-lg" placeholder="비밀번호 입력" 
										onkeypress="if (event.keyCode==13) login()"/>
									<label class="form-label" for="user_pw">Password</label>
								</div>
								<a class="btn btn-outline-light btn-lg px-5" onclick="login();">Login</a>
							</form>
							<div class="d-flex justify-content-center text-center mt-4 pt-1">
								<a href="#!" class="text-white"><i
									class="fab fa-facebook-f fa-lg"></i></a> <a href="#!"
									class="text-white"><i
									class="fab fa-twitter fa-lg mx-4 px-2"></i></a> <a href="#!"
									class="text-white"><i class="fab fa-google fa-lg"></i></a>
							</div>
						</div>
						<div>
							<p class="mb-0">
								Don't have an account? <a href="joinpage.me"class="text-white-50 fw-bold">Sign Up</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
	function login() {
 		if($('#user_id').val() ==''){
 			alert('아이디를 입력해주세요.');
 			$('#user_id').focus();
 			return;
 		}else if($('#user_pw').val() ==''){
 			alert('비밀번호를 입력해주세요.');
 			$('#user_pw').focus();
 			return;
 		}
 		// 비동기 방식 : 페이지를 새로 요청 x -> Controller 나 다른 API에 데이터만 따로 요청을 하는 형태 
 		// XMLHttpRequest 객체 , Http 객체 : 코드가 조금 복잡함
 		// Jquery : Ajax
 		// type : json..
 		// method : post
 		// url : 어디에 요청할껀지.
 		// data : 어떤것을 전송할껀지.
 		// success : 실행되는 펑션
 		// error : 실행되는 펑션
 		
 		$.ajax({
 			method : 'post' , 
 			url : 'login.me',
 			data : { user_id:$('#user_id').val() , user_pw:$('#user_pw').val()},
 			success : function (res) {
 				if (res == '1') {
 					location.href ='/mvc';
				}else{
					alert('로그인 실패');
					$('#user_id').focus();
				}
			},
			error : function (req , text) {
				alert(req.status + ' 오류 ! 다시 로그인 시도를 해주세요!');
			}
 		});
	}

</script>

<%@ include file="/include/footer.jsp"%>
</html>