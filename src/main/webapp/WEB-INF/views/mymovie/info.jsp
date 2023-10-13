<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <style>
      @import url("https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css");
	  	
      /* css의 변수 : root
      var(--white) 같이 쓰시면됩니다 */
      :root {
        /* 기본적인 색상 */
        --white: #fff;
        --black: #000;

        /* 네모박스용? 색상 */
        --gray-darker: #404040;
        --gray-light: #e0e0e0;

        /* 포인트컬러 */
        --point-color: #5d16a2;

        /* 폰트 사이즈 */
        --defalt-width: 1200px;
        --defalt-text-size: 16px;
        --header-font-size: 24px;
      }

      .container {
        display: flex;
        width: var(--defalt-width);
        height: 100%;
        margin: 0 auto;
        flex-wrap: nowrap;
        /*border: 1px solid #5d16a2;*/
      }
      

      #page1,
      #page2 {
        width: 70%;
        height: 100%;
        margin: 0 auto;
      }
      #page2 {
        display: none;
      }
      hr {
        padding: 0;
        margin: 0 auto;
      }
      
      .grid {
        display: grid;
        align-items: center;
        grid-template-columns: repeat(4, 25%);
        grid-gap: 1px;
        list-style-type: none;
        background: #e0e0e0;
      }
      .grid li {
        padding: 10px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        text-align: center;
      }
	  img{
	  	width: 100%;
  		height: 100%;
  		
	  }
       #d1 > h2 {
         height: auto; */
         /* height: 50px; */
         display: flexbox; */
         font-size: 2em; */
         color: white; */
         align-items: center; */
         justify-content: center; */
         text-align: left; */
         margin: 10px 0 0 0; */
         padding: 10px 10px; */
       } 

      h2 {
        height: 50px;
        font-size: 2em;
      }

      .bottombutton {
        position: fixed;
        bottom: 10px;
        right: 10px;
        z-index: 1;
      }
      .bottom-right-button {
        margin-bottom: 10px;
      }

     
      #d1 > h2 {
        border: 1px solid #5d16a2;
        background: #5d16a2;
        font-weight: bold;
      }
      .top-s {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px 0;
      }
      .bg {
        display: flex;
        gap: 10px;
      }
      .search-s {
        display: flex;
        gap: 10px;
        align-items: center;
      }
      #hr1 {
        background: #5d16a2;
        height: 1px;
        border: 0;
      }
     
      #button1,
      #button2 {
        border: none;
        width: 100px;
        height: 40px;

        font-size: 20px;
        font-weight: bold;

        background-color: white;
      }
	 #movieList {
	/*         padding: 20px 0px; */
	      }
	      
      #movieList > li > div {
/*         font-size: 18px; */
/*         font-weight: bold; */
/*         width: 80%; */
      }
      
/*       #movielist > li { */
/*         list-style-type: none; */
/*         position: relative; */
/*       } */

      #search {
        padding: 5px 5px;
        border: var(--gray-darker) 1px solid;
        border-radius: 5px;
      }
      .movie-item {
 		 position: relative; /* 부모 요소에 대한 상대 위치 설정 */
	  }

		.movie-id {
		  position: absolute; 
		  top: 0; 
		  left: 0;
		  margin: 0;
		  color: #FFD700;
		  padding: 5px 10px;
		  font-size: 2em;
		  font-weight: bold; 
		}
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    
        <div class="container">
        
      <div id="page1">
        <div id="d1">
          <div class="top-s">
            <div class="bg">
              <input
                type="button"
                value="상영중"
                id="button1"
                onclick="showSection('page1')"
              />
              <input
                type="button"
                value="상영예정"
                id="button2"
                onclick="showSection('page2')"
              />
            </div>
            <div class="search-s">
              <label for="search"><b id="b1">검색</b></label>
              <input
                type="text"
                placeholder="검색어를 입력하세요"
                id="search"
              />
              <input
                type="submit"
                value="검색"
                alt="검색어를 입력하세요"
                onclick="search()"
              />
            </div>
          </div>
          <hr />
          <h2>상영중</h2>
        </div>
        <!--api사진-->
        <ul class="p1 grid">
         <c:forEach var="mVO" items="${movies}">
            <c:if test="${mVO.movie_id <= 12}">
                <li style="cursor: pointer">
                    <div class="movie-item" data-movieid="${mVO.movie_id}">
                        <div class="inofo_movie_poster">
                            <img src="${mVO.poster_url}" />
                            <h3 class="movie-id">${mVO.movie_id}</h3>
                        </div>
                        <div class="inofo_movie_title">${mVO.movie_name}</div>
                    </div>
                </li>
            </c:if>
        </c:forEach>
        </ul>
      </div>
      <div id="page2">
        <div id="d1">
          <div class="top-s">
            <div class="bg">
              <input
                type="button"
                value="상영중"
                id="button1"
                onclick="showSection('page1')"
              />
              <input
                type="button"
                value="상영예정"
                id="button2"
                onclick="showSection('page2')"
              />
            </div>
            <div class="search-s">
              <label for="search"><b id="b1">검색</b></label>
              <input
                type="text"
                placeholder="검색어를 입력하세요"
                id="search"
              />
              <input
                type="submit"
                value="검색"
                alt="검색어를 입력하세요"
                onclick="search()"
              />
            </div>
          </div>
          <hr />
          <h2>상영예정</h2>
          <br />
        </div>
        <!--api사진-->
        <ul class="p2 grid">
        <c:forEach var="mVO" items="${movies}">
            <c:if test="${mVO.movie_id >= 13 && mVO.movie_id <= 24}">
                <li style="cursor: pointer">
                    <div class="inofo_movie_poster"><img src='${mVO.poster_url}' /></div>
                    <div class="inofo_movie_title">${mVO.movie_name}</div>
                    <br/>
                    <div class="inofo_movie_date">개봉일: ${mVO.show_date}</div>
                </li>
            </c:if>
        </c:forEach>  
        </ul>
<!-- ------------------------------------------------------------------------------------------ -->
      </div>
      <div class="bottombutton">
        <input
          type="button"
          class="bottom-right-button"
          value="상영중"
          onclick="showSection('page1')"
        />
        <input
          type="button"
          class="bottom-right-button"
          value="상영예정"
          onclick="showSection('page2')"
        />
      </div>
    </div>
    <script>
      function showSection(sectionId) {
        document.getElementById("page1").style.display = "none";
        document.getElementById("page2").style.display = "none";

        const element = document.getElementById(sectionId);
        if (element) {
          element.style.display = "block";
        }
      }

      function search() {
        const search = document.getElementById("search");
        const searchEmpty = search.value.trim();

        if (searchEmpty == "") {
          alert("검색어를 입력해 주세요.");
        }
      }
      
      function viewMovieDetails(movie_id) {
    	    
    	    const movieDetailURL = `/mymovie/detail?movie_id=${movie_id}`;
    	    window.location.href = movieDetailURL;
    	  }

    	  document.addEventListener("DOMContentLoaded", function () {
    	    const movieItems = document.querySelectorAll(".movie-item");
    	    movieItems.forEach((item) => {
    	      item.addEventListener("click", function () {
    	        const movieId = this.getAttribute("data-movieid");
    	        viewMovieDetails(movieId);
    	      });
    	    });
    	  });
    </script>
    