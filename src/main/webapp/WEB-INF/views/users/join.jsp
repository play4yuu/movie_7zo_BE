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
      <div class="join__form-group">
        <label class="join__form-label">아이디</label>
        <form class="join__forminsert">
          <input
            type="text"
            class="join__form-input"
            placeholder="최소 4글자 최대 12글자 "
            id="join__input_id"
            minlength="4"
            maxlength="12"
          />
        </form>
      </div>

      <div class="join__form-group">
        <label class="join__form-label">비밀번호</label>
        <form class="join__forminsert">
          <input
            type="password"
            class="join__form-input"
            id="join__input_pw"
            placeholder="영대문자, 소문자, 숫자 6~12자"
            minlength="6"
            maxlength="12"
          />
        </form>
      </div>

      <div class="join__form-group">
        <label class="join__form-label">비밀번호 재입력</label>
        <form class="join__forminsert">
          <input
            type="password"
            class="join__form-input"
            id="join__input_pw_re"
            placeholder="비밀번호를 한번 더 입력해주세요"
            minlength="6"
            maxlength="12"
          />
        </form>
      </div>

      <div class="join__form-group">
        <label class="join__form-label">이름</label>
        <form class="join__forminsert">
          <input
            type="text"
            class="join__form-input"
            id="join__input_name"
            placeholder="홍길동"
            minlength="2"
            maxlength="17"
          />
        </form>
      </div>

      <div class="join__form-group">
        <label class="join__form-label">휴대전화</label>
        <form class="join__forminsert">
          <input
            type="text"
            class="join__form-input"
            placeholder="010-0000-0000"
            id="join__input_phone"
          />
        </form>
      </div>

      <div class="join__form-group">
        <label class="join__form-label">닉네임</label>
        <form class="join__forminsert">
          <input
            type="text"
            class="join__form-input"
            placeholder="한글,영어,숫자 2~10글자"
            id="join__input_nickname"
            minlength="2"
            maxlength="10"
          />
        </form>
      </div>

      <div class="join__form-group">
        <label class="join__form-label">성별</label>
        <form class="join__forminsert">
          <select name="sex" class="join__form-input" id="join__form_id">
            <option value=""></option>
            <option value="남자">남자</option>
            <option value="여자">여자</option>
            <option value="비공개">비공개</option>
          </select>
        </form>
      </div>

      <div class="join__form-group">
        <label class="join__form-label">이메일</label>
        <form class="join__formeail-wrap">
          <input
            type="text"
            class="join__form-input join__form-email"
            id="join__input_email_id"
            placeholder="example"
          />
          <p class="join__email-at">@</p>
          <input
            type="text"
            class="join__form-input join__form-email"
            id="join__input_email_domain"
            placeholder="example.com"
          />
        </form>
      </div>
      <!-- 확인버튼 -->

      <button class="form_button-m" id="join__form-button">
        회원 가입하기
      </button>

      <div id="auto_string">
        <button id="auto_input">자동값채우기</button>
      </div>
    </div>

    <hr width="600px" color="#999999" class="join__hr" />
    
        <script src="/movie/js/login_dialog.js"></script>