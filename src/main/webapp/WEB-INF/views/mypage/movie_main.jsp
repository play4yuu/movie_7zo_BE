<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" type="text/css" href="/movie/css/mypage/mypage_main.css" />
<link rel="stylesheet" type="text/css" href="/movie/css/mypage/mypage_inquiry.css" />
<link rel="stylesheet" type="text/css" href="/movie/css/mypage/mypage_correction.css" />
<link rel="stylesheet" type="text/css" href="/movie/css/mypage/mypage_debate.css" />
<link rel="stylesheet" type="text/css" href="/movie/css/mypage/mypage_exchange.css" />



<div class="main__titleText">
  <h1>마이 페이지</h1>
</div>
<div id="mypage__wrap">
  <ul class="tab-buttons">
    <li><a href="mypage_info" data-tab="mypage_info">예매 정보</a></li>
    <li><a href="mypage_inquiry" data-tab="mypage_inquiry">1:1 문의</a></li>
    <li>
      <a href="mypage_correction" data-tab="mypage_correction">회원 정보</a>
    </li>
    <li><a href="mypage_debate" data-tab="mypage_debate">내 토론</a></li>
    <li>
      <a href="mypage_exchange" data-tab="mypage_exchange">내 특전 교환</a>
    </li>
  </ul>
  
  <div class="tab-content" id="mypage_info">
    <!-- 탭 1 내용 -->
    <p class="title">예매 정보</p>
    <div id="mypage_ticket_con_wrap">
      <!-- 여기서부터 복제 -->
      <div id="complete__ticket__con">
        <!-- 왼쪽부분 -->
        <div id="comp__left">
          <div id="comp__left__text"></div>
          <div id="comp__left__poster">
            <div
                    id="comp__left__poster__inner"
                    style="
                    background-image: url(https://i.namu.wiki/i/pMVIi7MS6YW04Gxkx-OGH1_PE5T7O4G5ti4N-INH0eMVplAAk6cxGSiHkn0-GfSKfC1nMTR40VmE6f7z8TQGvFX-Hf3_0RzMgIeh7XvW-MKmO9FvQGhYB1GhnouNSj45C76zxgKRCP5ByesV6q8_DQ.webp);
                  "
            ></div>
          </div>
          
          <div class="comp__dot_top"></div>
          <div class="comp__dot_down"></div>
        </div>
        
        <!-- 오른쪽부분 -->
        <div id="comp__right">
          <div id="comp__right__wrap">
            <li class="comp__light_text_wrap">
              <span class="comp__right__text__left"> 예매영화 </span>
              <span class="comp__right__text__right">오펜하이머</span>
            </li>
            
            <li class="comp__light_text_wrap">
              <span class="comp__right__text__left">관람극장/상영관 </span>
              <span class="comp__right__text__right"
              >CGV용산 / 홍길동 3관</span
              >
            </li>
            
            <li class="comp__light_text_wrap">
              <span class="comp__right__text__left">관람일시 </span>
              <span class="comp__right__text__right"
              >2020. 09. 09(토) 16:00 ~ 18:00
                  </span>
            </li>
            
            <li class="comp__light_text_wrap">
              <span class="comp__right__text__left">관람인원 </span>
              <span class="comp__right__text__right">성인 2명</span>
            </li>
            
            <li class="comp__light_text_wrap">
              <span class="comp__right__text__left">좌석번호 </span>
              <span class="comp__right__text__right">1관 1열 1번</span>
            </li>
            
            <li class="comp__light_text_wrap">
              <span class="comp__right__text__left">전화번호</span>
              <span class="comp__right__text__right">010-1234-5678</span>
            </li>
            
            <li class="comp__light_text_wrap">
              <span class="comp__right__text__left">결제금액 </span>
              <span class="comp__right__text__right">16,000원</span>
            </li>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <div class="tab-content" id="mypage_inquiry">
    <!-- 탭 2 내용 -->
    <div class="faq">
      <h3 class="title">자주 묻는 질문</h3>
      <div class="faq-item">
        <div
                class="Q"
                style="font-size: 18px; font-weight: bold; color: black"
        >
          관람등급 안내
        </div>
        <div class="answer">
          영화 및 비디오 진흥에 관한 법률(이하 영비법)을 준수합니다.<br />
          ■등급기준<br />
          · 전체 관람가 : 모든 연령의 관람객이 관람할 수 있는 영화<br />
          · 12세 관람가 : 만 12세 미만의 관람객은 관람할 수 없는 영화(보호자
          동반 시 12세 미만 관람가)<br />
          · 15세 관람가 : 만 15세 미만의 관람객은 관람할 수 없는 영화(보호자
          동반 시 15세 미만 관람가)<br />
          · 청소년 관람불가 : 만 18세 미만의 관람객은 관람할 수 없는 영화<br />
          영비법 29조에 따르면 [만 12세 이상 관람가/만 15세 이상 관람가]의
          등급이라도 부모 등 보호자를 동반하는 경우 어린이(유아) 동반이
          가능합니다.<br />
          반드시 보호자의 동반이 필요함을 양지하여 주시기 바랍니다.
        </div>
      </div>
      <hr />
      <div class="faq-item">
        <div
                class="Q"
                style="font-size: 18px; font-weight: bold; color: black"
        >
          개인정보는 어디에서 수정할 수 있나요?
        </div>
        <div class="answer">
          온라인 홈페이지 [마이 페이지]→[회원 정보]에서 가능합니다.
        </div>
      </div>
      <hr />
      <div class="faq-item">
        <div
                class="Q"
                style="font-size: 18px; font-weight: bold; color: black"
        >
          탈퇴하면 내 개인정보는 모두 삭제 되나요?
        </div>
        <div class="answer">
          탈퇴 즉시 고객님의 개인정보는 모두 삭제됩니다.<br />
          단, 전자상거래 및 소비자 권리 보호를 위해 개인정보 외의 거래정보
          등은 법률에서 정한 기간 동안 보관될 수 있습니다.
        </div>
      </div>
      <!-- 추가 질문과 답변을 위한 구조 -->
    </div>
    
    <%-- 1:1문의 안쓸거라 hidden 처리해둡니다--%>
    <div class="myqna hidden">
      <h3 class="title">내 1:1 문의</h3>
      <div class="question-list">
        <div class="question">
          <div class="question-title">
            카드 재발급했는데 취소가 안됩니다
          </div>
          <div class="question-content">안되는데 어떻게.... 해요...?</div>
          <div class="question-date">질문 일시: 2023-09-10</div>
          <div class="answer-status">답변 완료</div>
        </div>
        <div class="question">
          <div class="question-title">영화 시간표가 좀 다른것같아요</div>
          <div class="question-content">수정해주세영</div>
          <div class="question-date">질문 일시: 2023-09-11</div>
          <div class="answer-status">답변 대기 중</div>
        </div>
      </div>
      
      <button id="openModalBtn" class="hidden">1:1 문의하기</button>
      
      <!-- 모달 다이얼로그 -->
      <div id="myModal" class="modal">
        <div class="modal-content">
          <span class="close">&times;</span>
          <h3 class="title">1:1 문의하기</h3>
          <label for="modal-title"></label>
          
          <input
                  type="text"
                  id="modal-title"
                  placeholder="문의 제목을 입력하세요."
          />
          <label for="content"></label>
          
          <textarea
                  id="content"
                  placeholder="문의 내용을 입력하세요."
          ></textarea>
          
          <button id="sendBtn">등록</button>
        </div>
      </div>
    </div>
  </div>
  
  <div class="tab-content" id="mypage_correction">
    <!-- 탭 3 내용 -->
    
    <div class="inFor">
      <h3 class="title">회원 정보</h3>
      <div class="logFrms">
        <div class="logFrm">
          <label class="title_content" for="username">아이디</label>
          <input
                  class="txtfield"
                  id="username"
                  type="text"
                  name="username"
                  minlength="3"
                  maxlength="12"
          />
        </div>
        
        <div class="logFrm">
          <label class="title_content" for="password">비밀번호</label>
          <input
                  class="txtfield"
                  id="password"
                  type="password"
                  name="password"
                  minlength="6"
                  maxlength="15"
          />
        </div>
        
        <div class="logFrm">
          <label class="title_content" for="password_"
          >비밀번호 재입력</label
          >
          <input
                  class="txtfield"
                  id="password_"
                  type="password"
                  name="password_"
                  minlength="6"
                  maxlength="15"
          />
        </div>
        
        <div class="logFrm">
          <label class="title_content" for="nickname">닉네임</label>
          <input
                  class="txtfield"
                  id="nickname"
                  type="text"
                  name="nickname"
          />
        </div>
        
        <div class="logFrm">
          <label class="title_content" for="useremail_id">이메일</label>
          <input
                  class="txtfield"
                  id="useremail_id"
                  type="email"
                  name="useremail_id"
          />
          <span class="at"> @ </span>
          <input
                  class="txtfield"
                  id="useremail_domain"
                  type="email"
                  name="useremail_domain"
          />
        </div>
        
        <div class="logFrm">
          <label class="title_content" for="userphone">전화번호</label>
          <input
                  class="txtfield"
                  id="userphone"
                  type="tel"
                  name="userphone"
          />
        </div>
        
        <div class="buttons">
          <input
                  type="submit"
                  class="button"
                  id="btn_info"
                  value="정보 수정"
          />
          <input
                  type="button"
                  class="button"
                  id="btn_cancel"
                  value="취소"
          />
        </div>
      </div>
      
      <div class="delet">
        <h3 class="correction-title">회원 탈퇴</h3>
        <p>탈퇴시 모든 정보가 삭제됩니다.</p>
        <br />
        <input
                type="button"
                class="button"
                id="btn_delete"
                value="회원 탈퇴"
        />
      </div>
    </div>
  </div>
  
  <div class="tab-content" id="mypage_debate">
    <!-- 탭 4 내용 -->
    <div class="discussion-board">
      <h3 class="title">참여한 토론 목록</h3>
      <div class="posts">
        <div class="post">
          <h2>도라에몽 극장판 시리즈</h2>
          <h2>진구는 트롤인가? 천재인가?</h2>
          <p>
            사격은 천재인데... 웬만한 사건들이 진구때문인거보면 진구는
            트롤중에 트롤이라고 생각함. 솔직히 뭐만하면 다 얘때문이고,
            솔직히 맨날 뒷처리해주는 도라에몽이 젤 불쌍함.
          </p>
        </div>
        
        <div class="post">
          <h2>인셉션</h2>
          <h2>이 영화는 꿈인가? 현실인가?</h2>
          <p>
            저는 이게 꿈이라고 생각해요. 마지막 장면을 보면 아무리 생각해도
            꿈이라고 밖에 생각이 안들어요.
          </p>
        </div>
        
        <div class="post">
          <h2>영화 제목</h2>
          <h2>5G 네트워크의 미래</h2>
          <p>
            5G 기술은 우리의 통신을 혁신하고 있지만, 어떻게 이 기술을 미래에
            활용할 수 있을까요?
          </p>
        </div>
        <!-- 추가 게시물 -->
      </div>
      
      <div id="pagination">
        <!-- 페이지 이동 버튼이 표시될 위치 -->
      </div>
    </div>
    
    <!--<div class="search-bar">
	<input type="text" id="search-input" placeholder="검색...">
	<button id="search-button">검색</button>
-->
    <div class="button-container">
      <button id="add-post-button">게시글 등록</button>
    </div>
  </div>
  
  <div class="tab-content" id="mypage_exchange">
    <!-- 탭 5 내용 -->
    <div class="movie-gallery">
      <h3 class="gallery-title title">등록한 특전</h3>
      
      <div class="movie-cards">
        <div class="movie-card">
          <img
                  src="https://i.namu.wiki/i/z98MzK7NjRD10uE1FK-CoRfBDMcdsd6MijcObHh3X7HLptEq588WMqKWX8rrYC-c2gZpzk9Ie28G3xL5-bRAXEqNVF1mvTZGjvZhggZZ_4HV0yQiJSYA6eKhSSoUQ7HstUv47Gp5i_3eMfeapCWRzA.webp"
                  alt="Movie 1"
          />
          <div class="movie-info">
            <h2>스즈메의 문단속</h2>
            <p>교환 정보</p>
            <p>1주차 : 포스터</p>
            <p>CGV 아이맥스 포스터</p>
          </div>
          <div class="vertical-line"></div>
          <!-- 구분선 추가 -->
          <div class="booking-status">
            <span>거래 중</span>
          </div>
        </div>
        
        <div class="movie-card">
          <img
                  src="https://i.namu.wiki/i/jHpT_6yRLyh-U0Jnc9JVKUqtEambKbpp9-FkPpWU0ic2ek5juO-SBEGiJlWa_y80n77aaUNfoB2qYXdUNtCZWbt5POSb_Jyyz6hp-7bar2nBneOick-_Enb0I82P3UlUaVtJt-7qPy9tiVD7ltHRQQ.webp"
                  alt="Movie 2"
          />
          <div class="movie-info">
            <h2>스즈메의 문단속</h2>
            <p>교환 정보</p>
            <p>6주차 : PET스탠디+아트배경지</p>
            <p>5주차 : 책Ver.2</p>
          </div>
          <div class="vertical-line"></div>
          <!-- 구분선 추가 -->
          <div class="booking-status">
            <span>거래 완료</span>
          </div>
        </div>
      </div>
      <!-- 다른 영화 카드들도 추가 -->
    </div>
    <!-- 등록 버튼 추가 -->
    <div>
      <input
              type="button"
              class="button"
              id="btn_gallery"
              value="게시글 등록"
      />
    </div>
  </div>
</div>
<script>
  //서브메뉴
  $(document).ready(function () {
    // 초기에 첫 번째 탭 내용만 표시
    $(".tab-content").hide();
    $("#mypage_info").show();
    
    // 탭 클릭 시 해당 탭 내용 표시, 다른 탭 내용 숨김
    $(".tab-buttons li a").click(function (e) {
      e.preventDefault();
      
      // 모든 탭 내용 숨김
      $(".tab-content").hide();
      
      // 클릭한 탭에 해당하는 내용 표시
      var tabId = $(this).attr("data-tab");
      $("#" + tabId).show();
    });
  });
</script>

<script src="/movie/js/mypage/mypage_inquiry.js"></script>
<script src="/movie/js/mypage/mypage_correction.js"></script>
<script src="/movie/js/mypage/mypage_debate.js"></script>