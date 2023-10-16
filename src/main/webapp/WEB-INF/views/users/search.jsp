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
  <div class="search_con" id="search__con__id">
    <div class="main__titleText">아이디 찾기
    </div>
    
    <form method="get" onsubmit="return processFormData()" action="" >
      <input type="hidden" name="search_type" value="id">
      
      <label class="join__form-label">이름</label>
      <input
              type="text"
              class="join__form-input"
              id="search-id__input_name"
              name="name"
      />
      <label class="join__form-label">이메일</label>
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
      return true;
    }
    
    
    id_search_submit.addEventListener("click", function () {
      let name = document.querySelector('#search-id__input_name').value;
      const email = document.querySelector('#search-id__input_email').value;
      
      window.open("searchResult?name=" + name +"&email=" + email , "", "width=500, height=300");
    });
  
  
  </script>
  
<%-- ID찾기 끝 --%>
  
  
  
  <div class="search_con" id="search__con__pw">
    <!-- pw찾기 구현 -->
    
    <div for="main__titleText">비밀번호 찾기</div>
    
    <form method="post" action="">
      <input type="hidden" name="search_type" value="pw">
      
      <label for="search__pw-input_id">아이디</label>
      <input
              type="text"
              class="join__form-input"
              id="search__pw-input_id"
              placeholder="아이디를 입력해주세요"
              name="pw_id"
      />
      
      <label for="search__pw-input-phone">휴대전화</label>
      <input
              type="text"
              class="join__form-input"
              id="search__pw-input-phone"
              placeholder="010-0000-0000"
      />
      
      <label for="search-pw__input_email">이메일</label>
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
  
  </script>
  
  
  <!-- ID/PW 찾기부분 끝 -->
  <hr width="600px" color="#999999" class="join__hr" />
  
<%--  <script src="<c:url value="/js/search_cheak.js"/>"></script>--%>
