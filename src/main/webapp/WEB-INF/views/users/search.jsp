<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- ID/PW 찾기부분 시작 -->

<div class="main__boxofficeTitle">ID/PW찾기</div>
<hr width="600px" color="#999999" class="join__hr" />
<div class="container" id="search__con">
  <div id="search_con_tab">
    <!-- 상단 탭구현 -->
    <div class="search__tab" id="search__tab__id">
      <span class="search__tab__text">아이디 찾기</span>
    </div>
    
    <div class="search__tab" id="search__tab__pw">
      <span class="search__tab__text">비밀번호 찾기</span>
    </div>
  </div>
  
  
  
  <!-- id찾기 구현 -->
  <div class="main__titleText">아이디 찾기</div>
  <div class="search_con" id="search__con__id">
    
    <%--  ID찾기 form  --%>
    <form>
      <input type="hidden" name="search_type" value="id" id="id_search_form">
      
      <label for="search-id__input_name" class="join__form-label">이름</label>
      <input
              type="text"
              class="join__form-input"
              id="search-id__input_name"
              name="name"
      />
      <label for="search-id__input_email" class="join__form-label">이메일</label>
      <input
              type="text"
              class="join__form-input"
              id="search-id__input_email"
              name="email"/>
      
      <button type="submit"
              class="form_button-m search__form-btn"
              id="search_id_submit"> 확인
      </button>
    </form>
  
  </div>
  
  <script>
    // ID찾기 관련 스크립트
    const id_search_submit = document.querySelector('#search_id_submit');
    
    function processFormData() {
      const id_name = document.querySelector('#search-id__input_name');
      const id_email = document.querySelector('#search-id__input_email');
      
      if (id_name.value === "") {
        alert("이름을 입력해주세요");
        id_name.focus();
        return false;
      }
      
      if (id_email.value === "") {
        alert("이메일을 입력해주세요");
        id_email.focus();
        return false;
      }
      console.log("id찾기 유효성검사 통과")
      return true;
    }
    
    
    id_search_submit.addEventListener("click", function (event) {
      event.preventDefault();
      if ( !processFormData()) {
        return;
      }
      
      let search_type = document.querySelector('input[name="search_type"]').value;
      let name = document.querySelector('#search-id__input_name').value;
      let email = document.querySelector('#search-id__input_email').value;
      
      window.open("searchResult?name=" + name +"&email=" + email + "&search_type=" + search_type , "", "width=550, height=250");
    });
    
    
    /*
    // ajax로 받는법
    id_search_submit.addEventListener("click", function (event) {
      console.log("id_submit 클릭");
      event.preventDefault();
      
      if ( !processFormData()) {
        console.log("유효성 검사 실패")
        return;
      } else {
        console.log("유효성 검사 통과");
      }

      let search_type = document.querySelector('input[name="search_type"]').value;
      let name = document.querySelector('#search-id__input_name').value;
      let email = document.querySelector('#search-id__input_email').value;

      //받은값 확인
      console.log("받은 값 : " + search_type, name, email);

      $.ajax({
        url: "searchResult",
        type: "get",
        data: {
          name: name,
          email: email,
          search_type: search_type,
        },
        success: function (data) {
          console.log(data);
          if (data === "fail") {
            alert("일치하는 정보가 없습니다.");
          } else {
            console.log("백엔드에서 가져온 result_id:", data.result_id);
            alert("아이디는 " + data + " 입니다.");
          }
        },
        error: function (request, status, error) {
          console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
      });

    });
           -->  받는건 성공했는데 그냥 새창 띄우려구요...
  
  */
  </script>
  
  <%-- ID찾기 끝 --%>
  
  
  
  <div class="main__titleText">비밀번호 찾기</div>
  <!-- pw찾기 -->
  <div class="search_con" id="search__con__pw">
    <form id="pw_search_form">
      <input type="hidden" name="search_type" value="pw">
      
      <label for="search__pw-input_id" class="join__form-label">아이디</label>
      <input
              type="text"
              class="join__form-input"
              id="search__pw-input_id"
              placeholder="아이디를 입력해주세요"
              name="pw_id"
      />
      
      <label for="search__pw-input-phone" class="join__form-label">휴대전화</label>
      <input
              type="text"
              class="join__form-input"
              id="search__pw-input-phone"
              placeholder="010-0000-0000"
      />
      
      <label for="search-pw__input_email" class="join__form-label">이메일</label>
      <input
              type="text"
              class="join__form-input"
              id="search-pw__input_email"
              name="email"
      />
      
      <button type="submit" id="search__pw-btn" class="form_button-m search__form-btn">
        확인
      </button>
    </form>
  
  </div>
  
  <script>
    //PW찾기 관련 스크립트
    
    const pw_form = document.querySelector('#pw_search_form');
    const pw_search_submit = document.querySelector('#search__pw-btn');
    
    function processFormData_pw() {
      const pw_id = document.querySelector('#search__pw-input_id');
      const pw_phone = document.querySelector('#search__pw-input-phone');
      const pw_email = document.querySelector('#search-pw__input_email');
      
      if (pw_id.value === "") {
        alert("아이디를 입력해주세요");
        pw_id.focus();
        return false;
      }
      
      if (pw_phone.value === "") {
        alert("휴대전화번호를 입력해주세요");
        pw_phone.focus();
        return false;
      }
      
      if (pw_email.value === "") {
        alert("이메일을 입력해주세요");
        pw_email.focus();
        return false;
      }
      console.log("pw찾기 유효성검사 통과")
      return true;
    }
    
    pw_search_submit.addEventListener("click", function (event) {
      event.preventDefault()
      if ( !processFormData_pw()) {
        return;
      }
      
      let search_type = document.querySelector('input[name="search_type"]').value;
      let id = document.querySelector('#search__pw-input_id').value;
      let phone = document.querySelector('#search__pw-input-phone').value;
      let email = document.querySelector('#search-pw__input_email').value;
      
      window.open("searchResult?id=" + id +"&phone=" + phone + "&email=" + email + "&search_type=pw" , "", "width=550, height=250");
    });
  
  </script>
  
  
  <!-- ID/PW 찾기부분 끝 -->
  <hr width="600px" color="#999999" class="join__hr" />
  
  <%--  <script src="<c:url value="/js/search_cheak.js"/>"></script>--%>
</div>