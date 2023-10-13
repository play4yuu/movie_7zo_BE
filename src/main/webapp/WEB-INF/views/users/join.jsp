<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div id="join__wrap">
  <!-- 회원가입 큰 글자 -->
  <div class="main__boxofficeTitle">회원가입</div>
  <div class="join__subtitle">
    영화보러가죠에 가입하고 즐거운 영화생활 시작하세요!
  </div>
  
  <hr width="600px" color="#999999" class="join__hr" />
  
  <!-- 회원가입폼  -->
  <form id="joinForm" class="join__form-group" method="post" action="joinChk">
    <!-- 아이디 -->
    <label class="join__form-label">아이디</label>
    
    <div class="join__input_wrap">
      <input type="text" class="join__form-input" placeholder="최소 4글자 최대 12글자 " id="join__input_id" name="id" minlength="4" maxlength="12" />
      <input type="button" class="join__form-button" id="join__input_id_check" value="중복확인" />
    </div>
    
    <!-- 비밀번호 -->
    <div class="join__input_wrap">
      <label class="join__form-label">비밀번호</label>
      <input type="password" class="join__form-input" id="join__input_pw" placeholder="영대문자, 소문자, 숫자 6~12자" name="pw" minlength="6" maxlength="12" />
    </div>
    
    <!-- 비밀번호 재입력 -->
    <div class="join__input_wrap">
      <label class="join__form-label">비밀번호 재입력</label>
      <input type="password" class="join__form-input" id="join__input_pw_re" placeholder="비밀번호를 한번 더 입력해주세요" name="pw_re" minlength="6" maxlength="12" />
    </div>
    
    <!-- 이름 -->
    <div class="join__input_wrap">
      <label class="join__form-label">이름</label>
      <input type="text" class="join__form-input" id="join__input_name" placeholder="홍길동" name="name" minlength="2" maxlength="17" />
    </div>
    
    <!-- 휴대전화 -->
    <div class="join__input_wrap">
      <label class="join__form-label">휴대전화</label>
      <input type="text" class="join__form-input" placeholder="010-0000-0000" id="join__input_phone" name="phone" />
    </div>
    
    <!-- 닉네임 -->
    <div class="join__input_wrap">
      <label class="join__form-label">닉네임</label>
      <input type="text" class="join__form-input" placeholder="한글,영어,숫자 2~10글자" id="join__input_nickname" name="nickname" minlength="2" maxlength="10" />
      <input type="button" class="join__form-button" id="join__input_nickname_check" value="중복확인" />
    </div>
    
    <!-- 이메일 -->
    <div class="join__input_wrap">
      <label class="join__form-label">이메일</label>
      <input type="text" class="join__form-input join__form-email" id="join__input_email_id" placeholder="example" name="email_front" />
      <p class="join__email-at">@</p>
      <input type="text" class="join__form-input join__form-email" id="join__input_email_domain" placeholder="example.com" name="email_back" />
    </div>
    
    <!-- 확인버튼 -->
    <button type="submit" class="form_button-m" id="join__form-button">회원 가입하기</button>
  </form>
  
  <hr width="600px" color="#999999" class="join__hr" />

</div>

<script>
  // === ID중복검사 ===

  //ID 유효성 검사
  function isId(asValue) {
    var regExp = /^[a-zA-Z0-9]{4,12}$/;
    return regExp.test(asValue);
  }
  
  // (1) 아이디 중복체크
  const id_chk_btn = document.querySelector("#join__input_id_check");
  const id = document.getElementById("join__input_id")
  
  id_chk_btn.addEventListener("click", function () {
    console.log("입력id : " + id.value);
    let input_id = id.value;
    
    if (input_id === "") {
      alert("아이디를 입력해주세요.");
      return;
    } else if (!isId(input_id)) {
      alert("아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다.");
      return;
    }
    
    console.log ("아이디 체크 실행...");
    window.open("/users/idchk?id=" + input_id, "", "width=400, height=300");
    
  });
  
  
  // === 닉네임 중복검사 ===

</script>

<script>
  // === 회원가입 ===
  
  // 유효성검사
    function isId(asValue) {
        var regExp = /^[a-zA-Z0-9]{4,12}$/;
        return regExp.test(asValue);
    }
    
    function isPw(asValue) {
        var regExp = /^[a-zA-Z0-9]{6,12}$/;
        return regExp.test(asValue);
    }
    
    function isName(asValue) {
        var regExp = /^[가-힣]{2,17}$/;
        return regExp.test(asValue);
    }
    
    function isPhone(asValue) {
        var regExp = /^\d{3}-\d{3,4}-\d{4}$/;
        return regExp.test(asValue);
    }
    
    function isNickname(asValue) {
        var regExp = /^[가-힣a-zA-Z0-9]{2,10}$/;
        return regExp.test(asValue);
    }
    
    function isEmail(asValue) {
        var regExp = /^[a-zA-Z0-9]+@[a-zA-Z0-9]+(\.[a-zA-Z0-9]+){1,2}$/;
        return regExp.test(asValue);
    }
    
    const join_submit_btn = document.querySelector("#join__form-button");
  
</script>