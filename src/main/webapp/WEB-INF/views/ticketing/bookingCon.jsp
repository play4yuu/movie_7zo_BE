<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

   <div class="container" id="booking_comp_con">
      <p class="main__boxofficeTitle">예매 완료</p>

      <div id="complete__ticket__con">
        <!-- 왼쪽부분 -->
        <div id="comp__left">
          <div id="comp__left__text">
            <p class="comp__left__text__numText">티켓 예매번호</p>
            <p id="comp__left__text__num">123-45678-90123</p>
          </div>
          <div id="comp__left__poster">
            <img  id="comp__left__poster__inner" src="${mVO.poster_url}">
          </div>

          <div class="comp__dot_top"></div>
          <div class="comp__dot_down"></div>
        </div>

        <!-- 오른쪽부분 -->
        <div id="comp__right">
          <div id="comp__right__wrap">
            <p id="comp__right__title">예매가 완료되었습니다!</p>
            <hr class="comp__hr" />

            <li class="comp__light_text_wrap">
              <span class="comp__right__text__left"> 예매영화 </span>
              <span class="comp__right__text__right">${mVO.movie_name }</span>
            </li>

            <li class="comp__light_text_wrap">
              <span class="comp__right__text__left">관람극장/상영관 </span>
              <span class="comp__right__text__right">CGV${tVO.theater_name } / 홍길동 ${sVO.screen_id}관</span>
            </li>

            <li class="comp__light_text_wrap">
              <span class="comp__right__text__left">관람일시 </span>
              <span class="comp__right__text__right">${sVO.show_date } ${sVO.show_start }~${sVO.show_end }</span>
            </li>

            <li class="comp__light_text_wrap">
              <span class="comp__right__text__left">관람인원 </span>
              <span class="comp__right__text__right">${rVO.nomal+rVO.child+rVO.senior }명</span>
            </li>

            <li class="comp__light_text_wrap">
              <span class="comp__right__text__left">좌석번호 </span>
              <span class="comp__right__text__right">${rVO.seat}</span>
            </li>


            <li class="comp__light_text_wrap">
              <span class="comp__right__text__left">결제금액 </span>
              <span class="comp__right__text__right">${rVO.price}원</span>
            </li>
          </div>
        </div>
      </div>
    </div>

    <div id="comp__btn-wrap">
      <button class="comp__btn" id="comp__btn_home">
        <a href="/movie/"> 홈으로 </a>
      </button>
      <button class="comp__btn" id="comp__btn_list">
        <a href="/movie/mypage/movie_main"> 예매내역 </a>
      </button>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>


    <script src="/movie/js/file_insert_temp.js"></script>

    <script>
      const poster_img = document.querySelector("#comp__left__poster__inner");

      function img_insert() {
        poster_img.style.backgroundImage =
          "url(https://i.namu.wiki/i/pMVIi7MS6YW04Gxkx-OGH1_PE5T7O4G5ti4N-INH0eMVplAAk6cxGSiHkn0-GfSKfC1nMTR40VmE6f7z8TQGvFX-Hf3_0RzMgIeh7XvW-MKmO9FvQGhYB1GhnouNSj45C76zxgKRCP5ByesV6q8_DQ.webp)";
      }

      img_insert();
    </script>