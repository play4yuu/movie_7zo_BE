<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
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

        /* 폰트 사이즈 */
        --default-width: 1200px;
        --default-text-size: 16px;
        --header-font-size: 24px;
      }

      .container {
        display: flex;
        width: var(--defalt-width);
        height: 100%;

        flex-wrap: nowrap;
        /* border: 1px solid rgb(192, 0, 0); */
      }

      /* 로고부분 */
      #movie__search__body {
        background-color: #e6f7e7; /* 원하는 배경색으로 변경 가능 */
        font-size: 16px; /* 글꼴 크기 */
        color: #333; /* 글꼴 색상 */
        margin: 0; /* body의 기본 마진 제거 */
      }

      .search__title {
        font-size: 24px;
        font-weight: bold;

        margin: 50px 10px 40px 10px;
      }

      /* 박스 스타일을 추가합니다. */
      .container-box {
        padding: 20px; /* 내부 여백을 추가하여 박스 모양을 만듭니다. */
        margin: 20px auto;
        max-width: 800px;
        background-color: #5d16a2;
        border-radius: 5px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
      }
      .search-container {
        position: relative;

        text-align: center;
        margin: 0 auto 20px auto;
        width: 500px;
        padding: 20px; /* 내부 여백을 더 크게 설정 */
        background-color: #5d16a2;
        border-radius: 30px; /* 더 둥근 테두리 설정 */
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1), 0 6px 12px rgba(0, 0, 0, 0.1); /* 그림자 효과 추가 */

        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;

        margin-bottom: 30px;
      }

      #searchInput {
        width: 80%;
        padding: 10px 20px;
        border: 1px solid #5d16a2;
        border-radius: 30px;
        font-size: 16px;

        margin-bottom: 50px;
      }

      #searchButton {
        width: 18%;
        padding: 10px;
        background-color: #3498db;
        border: solid 1px #5d16a2;
        color: #fff;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 15px;

        position: absolute;
        right: 55px;
        bottom: 15px;
      }

      #searchButton:hover {
        background-color: #3498db;
      }

      #searchResults {
        margin-top: 20px;
        color: #333;
        width: 800px;
        margin: 0 auto;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
      }

      .result {
        height: auto;
        margin: 10px;
        padding: 15px 15px;
        box-sizing: border-box;
        border: solid 2px var(--point-color);
        border-radius: 10px;
        background-color: #f0f0f0; /* 검색 결과 박스의 배경색을 변경 */
        font-size: 20px;

        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
      }

      #searchResults > div > img {
        margin: 10px;
      }

      .container_movie_wrap {
        position: absolute;
        width: 300px;
        padding: 10px 0;
        margin: 20px auto;
        background-color: rgba(0, 0, 0, 0);
        color: white;
        /* box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); */
        /* border-radius: 5px; */
        font-size: 16px;
        margin-bottom: 30px;
        font-weight: bold;

        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: center;

        bottom: -12px;
        left: 55px;
      }

      .realtime_title {
        font-size: 18px;
        width: 50%;
        /* padding: 5px 100px; */
        /* margin-bottom: 10px; */
        margin-right: 50px;
      }

      .movie__search__ul {
        list-style: none;
        padding: 0;
      }

      /* li {
        margin: 5px 0;
        display: none; /* 초기에는 검색어 목록을 숨깁니다.
      } */

      #searchResults > div > p {
        font-size: 18px;
        font-weight: bold;
      }
      #realtime-search {
        width: 50%;
      }
    </style>
    
        <h2 class="search__title">영화 검색</h2>
    <!-- 검색 입력란, 검색 버튼 및 결과 표시 영역 -->
    <div class="search-container">
      <input
        type="text"
        id="searchInput"
        placeholder="영화 또는 인물명을 검색해주세요!"
      />

      <button id="searchButton">검색</button>

      <div class="container_movie_wrap">
        <h3 class="realtime_title">실시간 검색어</h3>
        <ul class="movie__search__ul" id="realtime-search"></ul>
        <ul class="movie__search__ul" id="searchKeywords"></ul>
      </div>
    </div>

    <!-- 검색 결과를 표시할 영역 -->
    <div id="searchResults" class="results-container"></div>
    <script>
      const searchInput = document.getElementById("searchInput");
      const searchButton = document.getElementById("searchButton");
      const searchResults = document.getElementById("searchResults");
      const realtimeSearch = document.getElementById("realtime-search");
      const searchKeywords = document.getElementById("searchKeywords");

      // 검색 버튼 클릭 이벤트 처리
      searchButton.addEventListener("click", function () {
        performSearch();
      });

      // Enter 키 누를 때 검색 실행
      searchInput.addEventListener("keyup", function (event) {
        if (event.key === "Enter") {
          performSearch();
        }
      });

      // 검색 실행 함수
      function performSearch() {
        const searchTerm = searchInput.value.toLowerCase();
        const results = [
          {
            imageUrl: "./img/oppenheimer.jpg",
            description: "오펜하이머",
            link: "detail.html", // 클릭 시 이동할 페이지 지정
          },
          {
            imageUrl: "./img/sleep.jpg",
            description: "잠",
            link: "index.html", // 클릭 시 이동할 페이지 지정
          },
          {
            imageUrl: "./img/venice.jpg",
            description: "베니스 유령 살인사건",
            link: "index.html", // 클릭 시 이동할 페이지 지정
          }
        ];

        // 검색 결과를 표시
        displayResults(results);
      }

      // 검색 결과를 화면에 표시하는 함수
      function displayResults(results) {
        searchResults.innerHTML = ""; // 이전 결과를 지웁니다.

        results.forEach((result) => {
          const resultContainer = document.createElement("div");
          resultContainer.classList.add("result");

          const image = document.createElement("img");
          image.src = result.imageUrl;
          image.width = 170; // 이미지 너비를 300px로 지정
          image.height = 234; // 이미지 높이를 300px로 지정

          const description = document.createElement("p");
          description.textContent = result.description;

          // 이미지 또는 설명을 클릭하면 지정된 페이지로 이동
          resultContainer.addEventListener("click", function () {
            window.location.href = result.link;
          });

          resultContainer.appendChild(image);
          resultContainer.appendChild(description);

          searchResults.appendChild(resultContainer);
        });
      }
      const keywords = [
        "1. 잠",
        "2. 오펜하이머",
        "3. 탕웨이",
        "4. 타겟",
        "5. 박해일",
        "6. 오즈의 마법사",
        "7. 헤어질 결심",
        "8. 엘리멘탈",
        "9. 봉준호",
        "10. 미션 임파서블",
      ];
      let currentKeywordIndex = -1;

      function updateRealtimeSearch() {
        // 검색어 인덱스를 1씩 증가하고, 끝까지 갔을 때 다시 처음부터 시작
        currentKeywordIndex = (currentKeywordIndex + 1) % keywords.length;
        const currentKeyword = keywords[currentKeywordIndex];

        // 화면에 검색어 업데이트
        realtimeSearch.textContent = `${currentKeyword}`;

        // 검색어 목록을 보여줍니다.
        showSearchKeywords();
      }

      // 검색어 목록을 보여주는 함수
      function showSearchKeywords() {
        const keywordItems = searchKeywords.querySelectorAll("li");
        keywordItems.forEach((item, index) => {
          if (index <= currentKeywordIndex) {
            item.style.display = "block";
          } else {
            item.style.display = "none";
          }
        });
      }

      // 페이지 로드 시 초기 검색어 업데이트
      updateRealtimeSearch();

      // 2.5초마다 검색어 업데이트
      setInterval(updateRealtimeSearch, 2500);
    </script>
    
    