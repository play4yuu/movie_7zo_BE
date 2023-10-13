<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <div id="search__modal__con" class="">
      <!-- 타이틀 -->
      <div id="search__modal__title">아이디 찾기</div>
      <hr class="search__modal__hr" />
      <!-- 내용 -->
      <div id="search__modal__textwrap">
        <p id="search__modal__text__top">입력하신 정보 어쩌구</p>
        <p id="search__modal__text__middle">ghdrlfehd**</p>
        <p id="search__modal__text__bottom">어쩌구 저쩌구 샬라샬라</p>
      </div>
      <!-- 확인버튼 -->
      <button id="search__modal__btn">확인</button>
    </div>

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
      <div class="search_con" id="search__con__id">
        <!-- id찾기 구현 -->
        <div class="main__titleText">아이디 찾기</div>

        <div class="join__form-group">
          <label class="join__form-label">이름</label>
          <form class="join__forminsert">
            <input
              type="text"
              class="join__form-input"
              id="search-id__input_name"
            />
          </form>
        </div>

        <div class="join__form-group">
          <label class="join__form-label">이메일</label>
          <form class="join__formeail-wrap">
            <input
              type="text"
              class="join__form-input join__form-email"
              id="search-id__input_email_id"
            />
            <p class="join__email-at">@</p>
            <input
              type="text"
              class="join__form-input join__form-email"
              id="search-id__input_email_domain"
            />
          </form>
        </div>

        <button id="search__id-btn" class="form_button-m search__form-btn">
          확인
        </button>
      </div>
      <div class="search_con" id="search__con__pw">
        <!-- pw찾기 구현 -->

        <div class="main__titleText">비밀번호 찾기</div>
        <div class="join__form-group">
          <label class="join__form-label">아이디</label>
          <form class="join__forminsert">
            <input
              type="text"
              class="join__form-input"
              id="search__pw-input_id"
              placeholder="아이디를 입력해주세요"
            />
          </form>
        </div>

        <div class="join__form-group">
          <label class="join__form-label">휴대전화</label>
          <form class="join__forminsert">
            <input
              type="text"
              class="join__form-input"
              id="search__pw-input-phone"
              placeholder="010-0000-0000"
            />
          </form>
        </div>

        <div class="join__form-group">
          <label class="join__form-label">이메일</label>
          <form class="join__formeail-wrap">
            <input
              type="text"
              class="join__form-input join__form-email"
              id="search__pw-input-email-id"
            />
            <p class="join__email-at">@</p>
            <input
              type="text"
              class="join__form-input join__form-email"
              id="search__pw-input-email-domain"
            />
          </form>
        </div>

        <button id="search__pw-btn" class="form_button-m search__form-btn">
          확인
        </button>
      </div>
    </div>
    <hr width="600px" color="#999999" class="join__hr" />
    
    <script src="/movie/js/searchjs/mainpage.js"></script>
    <script src="/movie/js/searchjs/login_dialog.js"></script>
    <script src="./movie/js/searchjs/search_cheak.js"></script>
    <script src="/movie/js/searchjs/file_insert_temp.js"></script>
    
    