<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<style>
  #index_wrap {
    min-height: 100%;
    position: relative;
    padding-bottom: 140px;
  }
  
  #footer {
    position: absolute;
    bottom: 0;
    z-index: -1;
  }
  
</style>



    <section id="main__MovieRank" class="container">
      <div class="main__boxofficeTitle">박스오피스</div>

      <div id="main__MovieRank__wrap">
        <!-- 영화목록 개별-->
        <div class="main__movieList">
          <div class="main__movieList__rankBox">
            <p class="main__movieList__rank">#1</p>
          </div>

          <div class="main__movieList__image"></div>
          <div class="main__movieList__titleBox">
            <p class="main__moviceList__title">
              오펜하이머 ddㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
            </p>
            <button class="main__movieList__button">예매하기</button>
          </div>
          <div class="main__movieList__rateBox">
            <p class="main__movieList__rateStar">★★★★★</p>
            <p class="main__movieList__rateScore">4.8 / 5.0</p>
          </div>
        </div>
        <div class="main__movieList">
          <div class="main__movieList__rankBox">
            <p class="main__movieList__rank">#2</p>
          </div>

          <div class="main__movieList__image"></div>
          <div class="main__movieList__titleBox">
            <p class="main__moviceList__title">도라에몽 극장판...</p>
            <button class="main__movieList__button">예매하기</button>
          </div>
          <div class="main__movieList__rateBox">
            <p class="main__movieList__rateStar">★★★★★</p>
            <p class="main__movieList__rateScore">4.8 / 5.0</p>
          </div>
        </div>
        <div class="main__movieList">
          <div class="main__movieList__rankBox">
            <p class="main__movieList__rank">#3</p>
          </div>

          <div class="main__movieList__image"></div>
          <div class="main__movieList__titleBox">
            <p class="main__moviceList__title">달마야 놀자</p>
            <button class="main__movieList__button">예매하기</button>
          </div>
          <div class="main__movieList__rateBox">
            <p class="main__movieList__rateStar">★★★★★</p>
            <p class="main__movieList__rateScore">4.8 / 5.0</p>
          </div>
        </div>
      </div>
    </section>

    <script>
      // 이미지 누르면 detail 페이지로 들어가게 하는거
      const movieList = document.querySelectorAll(".main__movieList__image");

      movieList.forEach((movie) => {
        movie.addEventListener("click", () => {
          location.href = "./PAGES/MOVIE/detail.html";
        });
      });

      //예매하기 버튼 누르면 예매하기쪽으로 들어가게 하는거
      const movieListBtn = document.querySelectorAll(
        ".main__movieList__button"
      );
      movieListBtn.forEach((movieBtn) => {
        movieBtn.addEventListener("click", () => {
          location.href = "./PAGES/TICKETING/home.html";
        });
      });

      const movie_titles = document.querySelectorAll(
        ".main__moviceList__title"
      );

      movie_titles.forEach((title) => {
        title.addEventListener("click", () => {
          location.href = "./PAGES/MOVIE/detail.html";
        });
      });
    </script>

    <!-- ★하단 서브메뉴들 -->
    <section id="main__SubMenu">
      <div class="main__SubMenu__wrap">
        <div class="main__SubMenu__cell">
          <a href="./PAGES/MOVIE/search.html">
            <span class="material-icons"> search </span>영화 검색</a>
        </div>

        <div class="main__SubMenu__cell">
          <a href="./PAGES/TICKETING/home.html">
            <span class="material-icons"> book_online </span>예매하기</a>
        </div>

        <div class="main__SubMenu__cell">
          <a href="./PAGES/EXCHANGE/list.html">
            <span class="material-icons"> sync_alt </span>특전교환</a>
        </div>

        <div class="main__SubMenu__cell">
          <a href="./PAGES/DEBATE/home.html">
            <span class="material-icons"> forum </span>토론</a>
        </div>
      </div>
    </section>
  

<%--<script src="/movie/js/file_insert_temp.js"></script>--%>