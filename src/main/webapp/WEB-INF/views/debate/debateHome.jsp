<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <!-- Roboto 폰트를 불러옵니다 -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
</head>
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
      .poster-container {
	    display: flex;
	    justify-content: center;
		}
		
		.poster-container a img {
		    width: 200px; /* 원하는 이미지 크기로 조절하세요 */
		    margin: 0 10px; /* 사진 사이의 간격을 조절하세요 */
		}
		.content-wrapper {
		    display: flex;
		    flex-direction: column;
		}
		
		.debate-box {
		    border: 1px solid #000; /* 테두리 추가 */
		    padding: 20px; /* 내부 여백 추가 */
		    box-shadow: 0px 0px 10px rgba(0,0,0,0.5); /* 그림자 효과 추가 */
		    margin-top: 20px; /* 포스터와의 간격 조정 */
		    background-color: #f9f9f9; /* 배경색 설정 */
		    border-radius: 10px; /* 모서리 둥글게 설정 */
		
		    font-family: 'Roboto', sans-serif; /* Roboto 폰트 적용 */
		}
		
		.debate-box:hover {
		    background-color: #e6e6e6; /* 마우스 오버 시 배경색 변경 */
		}
		
    </style>
    <div id="debate__con">
    <div class="discussion-container">
        <div class="content-wrapper">
        <div class="poster-container">   
        	<c:forEach var="mVO" items="${mlist }" begin="0" end="3" step="1"  varStatus="status">
        		<a href="/movie/mymovie/info"><img src="${mVO.poster_url}"></a>
        	</c:forEach>         
        </div>                       
		
		    <div class="debate-box">
		        <a href="/movie/debate/debate?topic=1">1. 그대들은 어떻게 살것인가 - 토론 주제 1</a>
		    </div>
		    <div class="debate-box">
		        <a href="/movie/debate/debate?topic=2">2. 모노노케 히메 - 토론 주제 2</a>
		    </div>
		    <div class="debate-box">
		        <a href="/movie/debate/debate?topic=3">3. 엘리멘탈 - 토론 주제 3</a>
		    </div>
		    <div class="debate-box">
		        <a href="/movie/debate/debate?topic=4">4. 잠 - 토론 주제 4</a>
		    </div>
    </div>
</div>
</div>
