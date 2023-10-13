<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <style>
      @import url("/movie/css/reset.css");
      /* CSS 스타일링 */

      body {
        position: relative;
      }
      #debate__con {
        display: flex;
        flex-direction: column;
        justify-content: center; /* 수평 가운데 정렬 */
        align-items: center; /* 수직 가운데 정렬 */
        width: 1200px;
        min-height: 70vh; /* 최소 화면 높이를 100vh로 설정 */
        margin: 0 auto; /* 바디 마진 초기화 */
        overflow-x: hidden; /* 가로 스크롤 막기 */
      }

      .discussion-container {
        position: relative;
        display: flex;
        flex-direction: row;
        text-align: left; /* 텍스트를 왼쪽 정렬로 설정 */
        /* margin-right: 50px; */
        align-items: center;
        justify-content: center;
        width: 1000px;
      }

      /* 사용할때 앞에 나오는 점 없애기 */
      .discussion-container ul {
        list-style: none;
        padding: 0;
      }
      .chat-container {
        display: flex;
        flex-direction: column;
        align-items: flex-end; /* 수직 오른쪽 정렬 */
        background-color: rgb(154, 179, 189); /* 배경 색상을 하늘색으로 설정 */
        text-align: left;
        max-width: 1200px;

        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
      }

      .chat-box {
        width: 500px; /* 채팅 박스의 넓이를 500px로 설정 */
        height: 400px; /* 채팅 박스의 높이를 250px로 설정 */
        border: 1px solid #171f38;
        overflow-y: scroll;
        display: block; /* 초기에 채팅 박스를 보이게 설정 */
      }

      #chat-box {
        padding: 20px 10px;
        z-index: 6;
        border: none;
        overflow: auto;
      }

      .message-input {
        width: 98.5%; /* 메시지 입력창의 넓이를 100%로 설정 */
        height: 50px; /* 메시지 입력창의 높이를 조절 */
        background-color: #fff;
      }

      /* 사용자 스타일링 */
      .user {
        font-weight: bold;
      }

      /* 찬성 색상 클래스 */
      .positive {
        color: green;
        background-color: #cfc; /* 찬성에 대한 배경 색상 */
      }

      /* 반대 색상 클래스 */
      .negative {
        color: red;
        background-color: #fcc; /* 반대에 대한 배경 색상 */
      }

      /* 선택 창 스타일링 */
      #user-type {
        width: 100px; /* 선택 창의 넓이를 조절 */
        height: 30px; /* 선택 창의 높이를 조절 */

        padding: 3px;

        position: absolute;
        bottom: 90px;
        left: 15px;
        border-radius: 10px;
        border: 1px solid #aaa;
      }

      /* 시간 스타일링 */
      .timestamp {
        font-size: 12px;
        color: #888;
        margin-left: 10px;
      }

      /* 사용자 이름 스타일링 */
      .username {
        font-weight: bold;
      }

      /* 찬성 메시지 스타일링 */
      .positive-message {
        color: green;
      }

      /* 반대 메시지 스타일링 */
      .negative-message {
        color: red;
      }

      /* 토론 주제 선택 목록 스타일링 */
      #discussion-list {
        list-style-type: none;
        padding: 0;
        margin-top: 20px;
      }

      #discussion-list li {
        margin-bottom: 10px;
        margin-right: 0px;
      }

      #discussion-list li a {
        text-decoration: none;
        color: #333;
        font-weight: bold;
      }

      /* 토론 주제 목록 표 스타일 */
      #debate_table {
        border-collapse: collapse;
        width: 100%;
      }

      #debate_table,
      th,
      td {
        border: 1px solid #ddd;
      }

      th,
      td {
        padding: 8px;
        text-align: left;
      }

      th {
        background-color: #f2f2f2;
      }

      /* 링크 스타일 */
      a {
        text-decoration: none;
      }

      #discussion_con_left {
        display: flex;
        flex-direction: column;
        justify-content: center;
        width: 55%;
        height: 250px;
      }

      #discussion_con_right {
        width: 20%;
        height: 250px;
      }

      #discussion_con_left > h1 {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 10px;
      }

      .debate_rule {
        line-height: 1.5;
        font-size: 14px;
      }

      #chat-box > p {
        font-size: 18px;
        font-weight: bold;

        margin-bottom: 10px;
      }

      #message {
        border: none;
        width: 90%;

        border-radius: 50px;

        padding: 0px 15px;
        margin-left: 10px;
        margin-bottom: 50px;
      }

      #chat-container {
        display: flex;
        flex-direction: column;
        border: 1px solid #171f38;
        border-radius: 10px;
      }

      #back-button {
        position: absolute;
        width: 80px;
        height: 30px;

        bottom: 15px;
        left: 15px;
        border-radius: 30px;
        border: none;
      }

      #debate_btn_submit {
        border: none;
        width: 60px;
        height: 30px;
        border-radius: 20px;

        position: absolute;
        bottom: 15px;
        right: 15px;
      }
    </style>
    
     <div id="debate__con">
      <div class="discussion-container">
        <div id="discussion_con_left">
          <h1>토론을 시작하시겠습니까?</h1>
          <ul class="debate_rule">
            <li>(1) 기본적인 예의에 어긋난 행위 금지</li>
            <li>(2) 커뮤니티의 존립 목적에 반하는 활동 금지</li>
            <li>(3) 아이디 도용 금지</li>
            <li>(4) 닉네임의 사용 제한</li>
            <li>
              (5) 커뮤니티내 게시글 및 답글(댓글)은 자유 공유가 원칙 입니다
            </li>
            <li>(6) 불편신고</li>
            <li>(7) 개선 및 건의 등의 의견</li>
          </ul>
        </div>

        <div id="discussion_con_right">
          <!-- 토론 주제 선택 목록 -->
          <ul id="discussion-list">
            <table id="debate_table">
              <tr>
                <th>
                  <a href="javascript:void(0);" onclick="">토론방 입장하기</a>
                </th>
              </tr>
              <tr>
                <td>
                  <a href="#" onclick="startDiscussion('토론 주제 1')"
                    >토론주제 1입니다</a
                  >
                </td>
              </tr>
              <tr>
                <td>
                  <a href="#" onclick="startDiscussion('토론 주제 2')"
                    >토론주제 2입니다</a
                  >
                </td>
              </tr>
              <tr>
                <td>
                  <a href="#" onclick="startDiscussion('토론 주제 3')"
                    >토론주제 3입니다</a
                  >
                </td>
              </tr>
              <tr>
                <td>
                  <a href="#" onclick="startDiscussion('토론 주제 4')"
                    >토론주제 4입니다</a
                  >
                </td>
              </tr>
              <tr>
                <td>
                  <a href="#" onclick="startDiscussion('토론 주제 5')"
                    >토론주제 5입니다</a
                  >
                </td>
              </tr>
            </table>
          </ul>
        </div>
      </div>
    </div>

    <div class="chat-container" id="chat-container" style="display: none">
      <div class="chat-box" id="chat-box">
        <!-- 채팅 내용 -->
      </div>
      <input
        type="text"
        id="message"
        placeholder="메시지를 입력하세요"
        class="message-input"
      />
      <button id="debate_btn_submit" onclick="sendMessage()">전송</button>

      <!-- 선택 사항 (찬성 또는 반대 선택) -->
      <select id="user-type" class="positive">
        <option value="positive" class="positive">찬성</option>
        <option value="negative" class="negative">반대</option>
      </select>

      <!-- 뒤로 가기 버튼을 chat-container 내부에 추가 -->
      <button id="back-button" onclick="goBack()" style="display: none">
        뒤로 가기
      </button>
    </div>

    <script>
      // startDiscussion 메시지가 한 번만 뜨도록 설정
      var discussionStarted = false;

      // 토론 주제를 클릭하여 해당 토론의 채팅 창을 엽니다.
      function startDiscussion(topic) {
        var chatBox = document.getElementById("chat-box");

        // startDiscussion 메시지가 아직 한 번도 뜨지 않은 경우에만 실행
        if (!discussionStarted) {
          chatBox.innerHTML = "<p>토론 주제: " + topic + "</p>";
          discussionStarted = true;

          // "뒤로 가기" 버튼을 표시
          document.getElementById("back-button").style.display = "block";

          // "토론방 입장하기" 클릭 시 "discussion-list"를 숨김
          document.getElementById("discussion-list").style.display = "none";
        }

        // 채팅창을 보이게 설정
        document.getElementById("chat-container").style.display = "block";

        // 스크롤 위치를 맨 위로 설정 (startDiscussion 메시지가 고정됨)
        chatBox.scrollTop = 0;

        // 스크롤 이벤트 리스너 등록 (스크롤을 감지하여 startDiscussion 메시지가 고정 상태를 유지)
        chatBox.addEventListener("scroll", handleScroll);
      }

      // "뒤로 가기" 버튼 클릭 시 토론 주제 선택 목록을 다시 표시
      function goBack() {
        // 채팅창을 숨김
        document.getElementById("chat-container").style.display = "none";

        // 토론 주제 선택 목록을 표시
        document.getElementById("discussion-list").style.display = "block";

        // "뒤로 가기" 버튼을 숨김
        document.getElementById("back-button").style.display = "none";

        // 토론 상태 초기화
        discussionStarted = false;
      }

      // JavaScript 코드
      function sendMessage() {
        var message = document.getElementById("message").value;
        var chatBox = document.getElementById("chat-box");
        var userType = document.getElementById("user-type").value;
        var username = "John"; // 사용자 이름 (나중에 DB에서 가져올 수 있음)

        // 사용자 유형에 따른 스타일 클래스 추가
        var userClass =
          userType === "positive" ? "positive-message" : "negative-message";

        // 현재 시간을 얻어옴
        var currentTime = new Date();
        var hours = currentTime.getHours();
        var minutes = currentTime.getMinutes();
        var timestamp = hours + ":" + (minutes < 10 ? "0" : "") + minutes;

        // 새 메시지를 상단에 추가 (사용자 이름, 메시지, 시간 함께 표시)
        chatBox.innerHTML =
          '<p><span class="username">' +
          username +
          '</span>: <span class="message ' +
          userClass +
          '">' +
          message +
          '</span><span class="timestamp">' +
          timestamp +
          "</span></p>" +
          chatBox.innerHTML;

        // 스크롤 위치를 이전 위치로 복원
        chatBox.scrollTop = chatBox.scrollHeight - chatBox.scrollTop;

        // 입력 필드를 초기화
        document.getElementById("message").value = "";
      }

      // Enter 키 이벤트 처리
      document
        .getElementById("message")
        .addEventListener("keyup", function (event) {
          if (event.key === "Enter") {
            sendMessage();
          }
        });
    </script>