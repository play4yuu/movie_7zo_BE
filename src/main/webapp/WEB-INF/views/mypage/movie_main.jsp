<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <link rel="stylesheet" type="text/css" href="/movie/css/mypage/mypage_main.css" />
    <link rel="stylesheet" type="text/css" href="/movie/css/mypage/mypage_inquiry.css" />
    <link rel="stylesheet" type="text/css" href="/movie/css/mypage/mypage_correction.css" />
    <link rel="stylesheet" type="text/css" href="/movie/css/mypage/mypage_debate.css" />
    <link rel="stylesheet" type="text/css" href="/movie/css/mypage/mypage_exchange.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    
    <!--     <meta name="viewport" content="width=device-width, initial-scale=1.0" /> -->
    <style>
      @import url("https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css"); 
    </style>
    
        <div class="main__titleText">
      <h1>마이 페이지</h1>
    </div>
    <div id="mypage__wrap">
      <ul class="tab-buttons">
        <li><a href="mypage_info" data-tab="mypage_info">예매 정보</a></li>
        <li><a href="mypage_inquiry" data-tab="mypage_inquiry">자주 묻는 질문</a></li>
        <li>
          <a href="mypage_correction" data-tab="mypage_correction">회원 정보</a>
        </li>
        <li><a href="mypage_debate" data-tab="mypage_debate">내 토론</a></li>

      </ul>

      <div class="tab-content" id="mypage_info">
        <!-- 탭 1 내용 -->
        <p class="title">예매 정보</p>
        <div id="mypage_ticket_con_wrap">
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
              반드시 보호자의 동반이 필요함을 양지하여 주시기 바랍니다.<br />
              단, 청소년 관람불가 영화는 보호자 동반과 관계없이 만 18세 미만이거나
              연령 조건을 만족하여도 초중고 재학 중인 청소년 및 영유아 관람이 절대
              불가합니다. 영화관 현장에서 연령확인 불가 시 입장이 제한될 수 있습니다.<br />
              또한 상영등급에 맞지 않는 영화를 관람하거나 무단입장을 하는 경우
              형사처벌 및 손해 배상의 대상이 될 수 있습니다.
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
          <hr />
          <div class="faq-item">
            <div
              class="Q"
              style="font-size: 18px; font-weight: bold; color: black"
            >
              회원가입은 어떻게 하나요?
            </div>
            <div class="answer">
              온라인 홈페이지 우측 상단의 [회원가입] 버튼을 누르면 회원에
              가입할 수 있습니다.<br />
             
            </div>
          </div>
           <hr />
          <div class="faq-item">
            <div
              class="Q"
              style="font-size: 18px; font-weight: bold; color: black"
            >
              회원탈퇴는 어떻게 하나요?
            </div>
            <div class="answer">
              회원 탈퇴를 원하실 경우, 온라인 홈페이지 [마이 페이지]→[회원 정보]
              →[회원 탈퇴]버튼을 클릭하여 회원 탈퇴가 가능합니다.<br />
            </div>
          </div>
          <hr />
          <div class="faq-item">
            <div
              class="Q"
              style="font-size: 18px; font-weight: bold; color: black"
            >
              아이디/비밀번호를 잃어버렸어요.
            </div>
            <div class="answer">
              고객님의 회원정보는 온라인 홈페이지 우측 상단의 아이디/비밀번호 찾기를
              클릭하시면 찾으실 수 있습니다.<br />
             
            </div>
          </div>
          <!-- 추가 질문과 답변을 위한 구조 -->
        </div>
      </div>

	<form method="POST" action="/mypage/update">
      <div class="tab-content" id="mypage_correction">
        <!-- 탭 3 내용 - 회원 정보 -->

         <div class="inFor">
          <h3 class="title">회원 정보</h3>
          <div class="logFrms">
            <div class="logFrm">
              <label class="title_content" for="userid">아이디</label>
              <input
                class="txtfield"
                id="userid"
                type="text"
                name="id"
                value="${user.id }"
                minlength="3"
                maxlength="12"
                disabled
              />
            </div>

            <div class="logFrm">
              <label class="title_content" for="userpw">비밀번호</label>
              <input
                class="txtfield"
                id="userpw"
                type="password"
                name="pw"
                value="${user.pw }"
                minlength="6"
                maxlength="15"
                placeholder="영대문자, 소문자, 숫자 6~12자"
              />
            </div>

            <div class="logFrm">
              <label class="title_content" for="userpw2"
                >비밀번호 재입력</label
              >
              <input
                class="txtfield"
                id="userpw2"
                type="password"
                name="pw2"
                minlength="6"
                maxlength="15"
                placeholder="비밀번호를 한 번 더 입력"
              />
            </div>

            <div class="logFrm">
              <label class="title_content" for="username">이름</label>
              <input
                class="txtfield"
                id="username"
                type="text"
                name="name"
                value="${user.name }"
                disabled
              />
            </div>
            
             <div class="logFrm">
              <label class="title_content" for="userphone">전화번호</label>
              <input
                class="txtfield"
                id="userphone"
                type="tel"
                name="phone"
                value="${user.phone }"
                placeholder="010-0000-0000"
              />
            </div>
            
             <div class="logFrm">
              <label class="title_content" for="nickname">닉네임</label>
              <input
                class="txtfield"
                id="nickname"
                type="text"
                name="nickname"
                value="${user.nickname }"
                placeholder="한글, 영어, 숫자 2~10글자"
              />
            </div>
            
            <div class="logFrm">
           	 <label class="title_content" for="gender">성별</label>
              <select class="txtselect" id="gender" name="gender">
				  <option 
				 	 value="female" >여자</option>
				  <option 
				 	 value="male" >남자</option>
				  <option 
				 	 value="private" >비공개</option>
			</select>
            </div>

            <div class="logFrm">
              <label class="title_content" for="useremail_id">이메일</label>
              <input
                class="txtfield"
                id="useremail_id"
                type="text"
                name="email"
                value="${user.email }"
                placeholder="example@gmail.com"
              />

            </div>
			<!-- 회원 정보 버튼 --> 
		
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
			<!-- 회원 탈퇴 -->
			<br />
			<hr />
          <div class="delet">
            <h3 class="delet-title">회원 탈퇴</h3>
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
	</form>
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
    
    <script src="<c:url value='/js/mypage/mypage_inquiry.js' />"></script>
    <script src="<c:url value='/js/mypage/mypage_correction.js'/>"></script>
    <script src="<c:url value='/js/mypage/mypage_debate.js'/>"></script>