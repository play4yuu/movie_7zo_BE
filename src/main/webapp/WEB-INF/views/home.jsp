<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <section id="main__MovieRank" class="container">
      <div class="main__boxofficeTitle">박스오피스</div>

      <div id="main__MovieRank__wrap">
        <!-- 영화목록 개별-->
        
        <c:forEach var="mVO" items="${mlist }" begin="0" end="2" step="1"  varStatus="status">
        	 <div class="main__movieList">
          <div class="main__movieList__rankBox">
            <p class="main__movieList__rank">${status.count} </p>
          </div>

          	<a href="/movie/mymovie/detail?movie_id=${mVO.movie_id} "><img class="main__movieList__image" src="${mVO.poster_url }"></a>

          <div class="main__movieList__titleBox">
            <p class="main__moviceList__title">
              ${mVO.movie_name}
            </p>
        
            <a href="/movie/ticketing/ticketingHome" class="main__movieList__button">예매하기</a>
          </div>
          <div class="main__movieList__rateBox">
            <p class="main__movieList__rateStar">★★★★★</p>
            <p class="main__movieList__rateScore">4.8 / 5.0</p>
          </div>
        </div>
        </c:forEach>
        
       

        
        
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
          <a href="/movie/mymovie/search">
            <span class="material-icons"> search </span>영화 검색</a
          >
        </div>

        <div class="main__SubMenu__cell">
          <a href="/movie/ticketing/ticketingHome">
            <span class="material-icons"> book_online </span>예매하기</a
          >
        </div>

        <div class="main__SubMenu__cell">
          <a href="./PAGES/EXCHANGE/list.html">
            <span class="material-icons"> sync_alt </span>특전교환</a
          >
        </div>

        <div class="main__SubMenu__cell">
          <a href="/movie/debate/debateHome">
            <span class="material-icons"> forum </span>토론</a
          >
        </div>
      </div>
    </section>
    <script>
    	$(function(){
    		console.log(${logStatus});
    	})
    </script>
    <!--
	    <script src="/movie/js/file_insert_temp.js"></script>
     -->