<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<title>Insert title here</title>

<%@ include file="/include/header.jsp"%>
<section class="vh-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container w-150 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-4">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">회원가입</h2>

              <form>

                <div class="form-outline mb-4">
                  <input type="text" id="user_id" name ="user_id" class="form-control form-control-lg" />
                  <label class="form-label" for="user_id">아이디</label>
                </div>
                <div class="form-outline mb-4">
                  <input type="password" id="user_pw" name="user_pw" class="form-control form-control-lg" />
                  <label class="form-label" for="user_pw">비밀번호</label>
                </div>
                <div class="form-outline mb-4">
                  <input type="password" id="user_pwchk" class="form-control form-control-lg" />
                  <label class="form-label" for="user_pwchk ">비밀번호 확인</label>
                </div>
                <div class="form-outline mb-4">
                  <input type="text" id="name" name="name" class="form-control form-control-lg" />
                  <label class="form-label" for="name">이름</label>
                </div>
                <div class="form-outline mb-4">
                  <input type="email" id="email" name="email" class="form-control form-control-lg" />
                  <label class="form-label" for="email">이메일</label>
                </div>
                
                <a class="btn btn-success btn-lg mb-1" id="btn_post">주소찾기</a>

                <div class="form-outline mb-4">
                  <input type="text" id="address"  name="address" class="form-control form-control-lg" />
                  <label class="form-label" for="address">주소</label>
                </div>
                <div class="form-outline mb-4">
                  <input type="text" id="post" name="post" class="form-control form-control-lg" />
                  <label class="form-label" for="post">주소2</label>
                </div>
                <a class="btn btn-success btn-lg mb-1">회원가입</a>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	$('#btn_post').click(function () {
		    new daum.Postcode({
		        oncomplete: function(data) {
		        	$('#address').val(data.address);
		        	$('#post').val(data.zonecode);
		        	
		        }
		    }).open();
	});

</script>


<%@ include file="/include/footer.jsp"%>
</html>