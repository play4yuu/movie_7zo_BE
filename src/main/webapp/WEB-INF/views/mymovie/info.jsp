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
      #movielist > li {
        list-style-type: none;
        position: relative;
      }
      .grid {
        display: grid;
        align-items: center;
        grid-template-columns: repeat(4, 25%);
        grid-gap: 1px;
        list-style-type: none;
        /* padding: auto; */
        /* margin: auto; */
        /* grid-column-gap: 10px; */
        /* grid-row-gap: 20px; */
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

      #d1 > h2 {
        height: auto;
        /* height: 50px; */
        display: flexbox;
        font-size: 2em;
        color: white;
        align-items: center;
        justify-content: center;
        text-align: left;
        margin: 10px 0 0 0;
        padding: 10px 10px;
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

      /* 모달 스타일 */
      .modal {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.4);
        overflow: auto;
      }

      .modal-content {
        background-color: #fefefe;
        margin: 15% auto;
        padding: 20px;
        border: 1px solid #5d16a2;
        width: 500px;
        height: 200px;
      }
      .modal-title {
        align-self: flex-start; /* 좌측 상단 정렬 */
      }

      .modal-details {
        align-self: flex-start; /* 좌측 정렬 */
      }
      /* 모달 닫기 버튼 스타일 */
      .close {
        color: #aaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
      }

      .close:hover,
      .close:focus {
        color: black;
        text-decoration: none;
        cursor: pointer;
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

      #movieList {
        padding: 20px 0px;
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

      #movieList > li > div {
        font-size: 18px;
        font-weight: bold;
        width: 80%;
      }

      #search {
        padding: 5px 5px;
        border: var(--gray-darker) 1px solid;
        border-radius: 5px;
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
        <ul class="p1 grid" id="movieList">
          <li style="cursor: pointer">
            <div class="inofo_movie_poster" onclick="window.open('detail.html')"></div>
            <div class="inofo_movie_title">영화이름</div>
          </li>
          <li style="cursor: pointer">
            <div class="inofo_movie_poster"></div>
            <div class="inofo_movie_title">영화이름</div>
          </li>
          <li style="cursor: pointer">
            <div class="inofo_movie_poster"></div>
            <div class="inofo_movie_title">영화이름</div>
          </li>
          <li style="cursor: pointer">
            <div class="inofo_movie_poster"></div>
            <div class="inofo_movie_title">영화이름</div>
          </li>
          <li style="cursor: pointer">
            <div class="inofo_movie_poster"></div>
            <div class="inofo_movie_title">영화이름</div>
          </li>
          <li style="cursor: pointer">
            <div class="inofo_movie_poster"></div>
            <div class="inofo_movie_title">영화이름</div>
          </li>
          <li style="cursor: pointer">
            <div class="inofo_movie_poster"></div>
            <div class="inofo_movie_title">영화이름</div>
          </li>
          <li style="cursor: pointer">
            <div class="inofo_movie_poster"></div>
            <div class="inofo_movie_title">영화이름</div>
          </li>
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
          <li>영화제목1<br />날짜:20xx.xx.xx</li>
          <li>영화제목2<br />날짜:20xx.xx.xx</li>
          <li>영화제목3<br />날짜:20xx.xx.xx</li>
          <li>영화제목4<br />날짜:20xx.xx.xx</li>
          <li>영화제목5<br />날짜:20xx.xx.xx</li>
          <li>영화제목6<br />날짜:20xx.xx.xx</li>
          <li>영화제목7<br />날짜:20xx.xx.xx</li>
          <li>영화제목8<br />날짜:20xx.xx.xx</li>
          <li>영화제목1<br />날짜:20xx.xx.xx</li>
        </ul>
      </div>
      <!-- 모달 -->
      <div id="movieModal" class="modal">
        <div class="modal-content">
          <span class="close" id="closeModalButton">&times;</span>
          <h2 id="modalTitle"></h2>
          <br />
          <hr id="hr1" />

          <br /><br />
          <p><strong>분류:</strong> <span id="modalProductionDate"></span></p>
          <p><strong>개봉일:</strong> <span id="modalOpenDate"></span></p>
          <p><strong>장르:</strong> <span id="modalGenre"></span></p>
          <p><strong>감독:</strong> <span id="modalDirector"></span></p>
        </div>
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

        if (searchEmpty === "") {
          alert("검색어를 입력해 주세요.");
        }
      }
      
      <script>
      function insert_posters() {
        var movie_poster = [
          "https://i.namu.wiki/i/E6R3TNGpXqi4yUiLdPsUEciKrvfqIgqTBdN7BOXPMh8R3Deq1wR5AjbUEchljV0_i738w0vRk935WtmwnJRkZPJxPYEqiQRqLV17ZO-NJUBQxXxabwtLYGOHYDCoLU-Gj3x2Tu2EcrLijFLret8TOQ.webp",
          "https://i.namu.wiki/i/WYr74MfzAmdHL7P4xOVsz4jkgYre0O6XEdKlhbYmpAFI5vc66Vk8BHunotEP05ySmmAYjmQOaOEmGL27FqNlO9tqWCIeWf4a_QjsFPwp3-ZzgnKkoZRNHGgT-3kE09Wc4BRwoHy0l5aezUwL80S-xg.webp",
          "https://i.namu.wiki/i/U3gD6m5wifmW5i3PVQmjBltwFGxlS50rS4VoFsVag9UKEIpxKxG_HZwZkjuBSipNC-UN7TzWMVw2BTNcwuKGZucpJHa7cfwVur6c_bRmplp8hzgUPRXOUE3mUe-_8ntMwAjlO8WVOPb4CyuaDNfJqw.webp",
          "https://i.namu.wiki/i/mwOK_QJSDCMnSwMpg-ek2gzQyCANKo07zRJBAwEQxbVDIB1a4DGYfFPG18TGwcFH_WGdVwJTmtA9Vxp2Hv96T-uQoOCxNqUualRbJdsDJjjSjG2h9bMkw7MvNDo5djGNX2im_h90rMU6WtQVOsliKw.webp",
          "https://i.namu.wiki/i/cs3xaLROQznQRATLP2hAts-_0vpIergnpTPiGIMW_skfseaRFSELA2rFpM0e2P5JvgN0BO7Ka7UAGhGPK_tfjc2w2RIZObFrhDzGI3mXnOJ4A4ABsMI--Kgi_IrJAxzRtyJC678xAQ0XGzyXCMqNfQ.webp",
          "https://i.namu.wiki/i/tUJcxf4-2y8OiWJsTJkn8OZe6d5-n1cvzunI2wJh4_jzYGqQP_WObZboZ_CIF-6QjSXX8ApqP_e1FSWk9JiN0EkEFKuMVd6oynw_KEKUfToD3vNPaoiuEFCkI0gQ7BEv55V12pswzqPtjut3Tnv7vA.webp",
          "https://i.namu.wiki/i/IFetVqNOpUlRmz8hyVgTvSsqUcanq8nfY1s0CyAJJOXxCGUu-k_ENxh7agH1tODXEY2UFDnh2yWJNbgxEkEpCyD132cTI1ZCUpBT8yK9aSJZLwv4vfdlsa22Uj8SxCKco8QVuxsqpWtKxv0YVpcHKA.webp",
          "https://i.namu.wiki/i/XrUGpSROlmQpCjyeU62gG1m2Zq42-SS6iGSVT_TYDocad2DOTwe6_RwMEiFQpNRk5nasZw927UzZMegCvcspOzihXNE4ui-8OCYpBEg3x6Q3D_B7kqiSADPniKqNY9xOSdZB9LukFRK1TriKyaoTqg.webp",
          "https://i.namu.wiki/i/187UmtG2GUlPX020ZUZ30kai4s2rius4c83bPkssZlnrWi7ExPAuwSSAwuKt_TBAGQ_gEXJllx3zG5W9JqVHDyGZtM_hJOGGAxHl0NYmfdDkqMZz9Nw8rIG0HiFoM8Ls4YXK7wnHBQXbRN-IFVigug.webp",
          "https://i.namu.wiki/i/oHDm2TNu-CGhhPv4dC50z4SLsYa29S8qj0szg22C4lRV1mqVcQIM76_LN4Bw_fZu76X8ikmDnFNlfa8XPrfzjo2jTpyzMTpYNkX_my9uQkYHvltKIjaIf-SF5S-Ix7eKseNjtQFJSgevXcdrqiUW2g.webp",
          //10
          "https://i.namu.wiki/i/0xc7g52McHDWWHEu23ttvHTN0wczEW-dbUsVRCdsD_paysP0eh4heIfL1UbMSuUiYIQ_exLui9fb3nCTxzMY4unbc7vsvOdskxxzktgJSV_a7hbJtRbBN0A7OZxr4QTi7qJ4Euv1HLrCqdTXNs6DQg.webp",
          "https://i.namu.wiki/i/Mc3zjPy0Qni603MJzx23mDXiJpW4mDi6vE1TYvsGrzQpfe4_HFQouUwbImRM6znJOLuCcbpDkvKP0lZUoJljihZUZqtbJbtzWEuA2wDcOOxu23RWxHbRBci5LCPs-qLAc9O2miQtwwrZKK0VpKwoJw.webp",
          "https://i.namu.wiki/i/B23e2FBB-eT-l9Ky3vEKVowj197cvPfNn238CKhsDbUcivPLnotT2U5zW_pYm4kfH8PYhCTFGfWmoaIsx6MR5MFASddxci8_z9aRoPNjGmVfS9fdRgM4bm71Hu5kwoM7V4kgiRNn1FFL-OowV_-pag.webp",
          "https://i.namu.wiki/i/vfeSXp5sSFueuvq7LY6twPhDm8-UO6n-irQQqcyzPNFrFNXKjQRQngovX19qhFgo3uax0PzmAN0J8NcM3R7nBGlO41Kl3_HK8Z1o5XN8CasM7GJuLZbpbiv2xBx1bPcJTmuiHn9HySg05uT5pAy5fw.webp",
          //상영예정작
          "https://i.namu.wiki/i/0nydzkEAfAHwGYffYrjneh8xnUrJ1ajXq3Y8-B0x-QJz8WhS7iiwWqKY8NW6yslLV6POtGPCFEf8KA2yXHdgsrUUhvK_TnpYGteloGfRsBzREpweuxG1bUmGhfedWWd61plGAwEN04xPZ-IB8w3K1w.webp",
          "https://i.namu.wiki/i/VkgEmPrILT8puBXZY-mNZAT8AGigPKRt4WuOivoQ8gTx2yPxYmoFs6ZdDvgb6i6VU_Bz8PVxWThcYGbtcTQjTggrJaChOQVYMVCr2LzUUAs90bzj9_FagOx31NtOiFJbHEsiebBPgpP75zLRMBlZTQ.webp",
          "https://i.namu.wiki/i/58f49JRveYzeziNfJ7EpvIJQtpyCd4srYSvz9T7ow1xHO4AdFX8RRBEcZVg5veQrzsiI1AORk7_MCt6FSfMmq_o0HzGsUu6CFyLlr101G42AAYCB3wi8WPla7IBHhbeLe-IYBKCPa3G_2I0JP53obg.webp",
          "https://i.namu.wiki/i/UwgMPJITOA56vRGfL9GQPGq5JYfB2TdIyg_veqFFGAn-8gaOBz3aeekK1IgK0ejfsZWkDZMO3VzpMORIbR7kYYBe2eCwNGyTY_p4drN4BJxER_QSv6w-guhGyReP9SiMVMx91_HonrXaRUL7_EgWGg.webp",
          "https://i.namu.wiki/i/aKD_ejgZviELh9b29akhT3VKMMv-BHm0Py2EwXg7sLTng8ZTgYxuVAjrTdOj8F45bFQKaNKJzyaBLXCnsmRg_pE2bLD16rM-zdcIHkvE2ySAD7Vw3LLtRrYsLUaN5Pc8pBvyQ6XLRfSQsWF6fsQ-lA.webp",
          "https://i.namu.wiki/i/ODBq_w8Og4UUtFHsZapuXjXmlSjA5H1MLRi5JrSYL03ZM7ghEKetVlGO_W421lM4W7m9P39iQSsJ_mKQdBEZ_C_Ay98lZ-n95-2VAxeeW_I47MW9xH6WTgxMoD8XBk4Qz1utcUfu6xYRHDYPXKA9hA.webp",
        ];
        var movie_title = [
          "오펜하이머",
          "잠",
          "베니스 유령 살인사건",
          "달짝지근해: 7510",
          "더 퍼스트 슬램덩크",
          "콘크리트 유토피아",
          "타겟",
          "스즈메의 문단속",
          "엘리멘탈",
          "밀수",
          //10
          "해리 포터와 혼혈 왕자",
          "명탐정코난-흑철의 어영",
          "바비",
          "스파이 코드명 포춘",
          //상영예정작
          "아이유 콘서트 : 더 골든 아워",
          "여름을 향한 터널, 이별의 출구",
          "어파이어",
          "그란 투리스모",
          "가문의 영광-리턴즈",
          "천박사 퇴마 연구소-설경의 비밀",
        ];

        const posters = document.querySelectorAll(".inofo_movie_poster");
        const titles = document.querySelectorAll(".inofo_movie_title");
        for (var i = 0; i < posters.length; i++) {
          posters[i].style.backgroundImage = "url(" + movie_poster[i] + ")";
          titles[i].innerHTML = movie_title[i];
        }
      }

      //윈도우가 그려지면 insert_posters() 실행
      window.addEventListener("load", insert_posters);

      insert_posters();
    </script>
    