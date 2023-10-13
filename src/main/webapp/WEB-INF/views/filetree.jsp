<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <style>
      @import url("https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css");
      body {
        display: flex;
        flex-direction: column;

        width: 1200px;
        height: 1300px;

        justify-content: flex-start;
        align-items: flex-start;
      }

      h2 {
        font-size: 20px;
        font-weight: bold;
        margin-bottom: 10px;
      }

      .dan_wrap {
        display: flex;
        flex-direction: column;

        width: 600px;
        height: auto;

        margin: 30px 15px 20px 15px;

        justify-content: center;
        align-items: flex-start;
      }

      .dan {
        display: flex;
        flex-direction: row;
        margin: 5px 0px;
      }

      .btn {
        width: 100px;
        height: 25px;

        display: flex;
        margin-right: 3px;
        align-items: center;
        justify-content: center;
      }
    </style>
  
    <div class="dan_wrap">
      <h2>페이지 트리</h2>
      <div class="dan">
        <a href="/movie/">
          <button class="btn">홈페이지</button>
        </a>
      </div>

      <div class="dan">
        <a href="/movie/mymovie/info">
          <button class="btn">영화</button>
        </a>
        <a href="/movie/mymovie/search">
          <button class="btn">영화검색</button>
        </a>
        <a href="/movie/mymovie/detail">
          <button class="btn">영화상세정보</button>
        </a>
      </div>

      <div class="dan">
        <a href="/movie/mypage/movie_main">
          <button class="btn">마이페이지</button>
        </a>
      </div>

      <div class="dan">
        <a href="/movie/users/join">
          <button class="btn">회원가입</button>
        </a>
        <a href="/movie/users/search"> 
          <button class="btn">ID/PW찾기</button>
        </a>
        <a href="/movie/users/login"> 
          <button class="btn">로그인 테스트</button>
        </a>
      </div>

      <div class="dan">
        <a href="/movie/ticketing/ticketingHome">
          <button class="btn">예매</button>
        </a>
        <a href="/movie/ticketing/seat">
          <button class="btn">좌석선택</button>
        </a>
        <a href="/movie/ticketing/payment">
          <button class="btn">결제</button>
        </a>
        <a href="/movie/ticketing/bookingCon">
          <button class="btn">예매완료</button>
        </a>
      </div>

      <div class="dan">
        <a href="/movie/debate/debateHome">
          <button class="btn">토론 홈</button>
        </a>
        <!-- <a href="./PAGES/DEBATE/reg.html">
          <button class="btn">토론 등록</button>
        </a> -->
      </div>

      <div class="dan">
        <a href="/PAGES/EXCHANGE/list.html">
          <button class="btn">특전교환 홈</button>
        </a>
        <a href="/PAGES/EXCHANGE/write.html">
          <button class="btn">특전교환 등록</button>
        </a>
        <a href="/PAGES/EXCHANGE/view.html">
          <button class="btn">특전교환 view</button>
        </a>
      </div>

      <div class="dan">
        <a href="/movie/theater/theaterHome">
          <button class="btn">극장</button>
        </a>
        <a href="/movie/theater/schedule">
          <button class="btn">스케쥴</button>
        </a>
      </div>
    </div>

    <div class="dan_wrap">
      <h2>작성자별 보기</h2>
      <p>광엽</p>

      <p>연주</p>

      <p>다솜</p>

      <p>석영</p>

      <p>세준</p>

      <p>효준</p>
    </div>