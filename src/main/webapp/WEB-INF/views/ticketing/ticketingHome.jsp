<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

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
        --point-red: rgb(192, 0, 0);
        --point-blue: rgb(0, 0, 192);

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
        flex-direction: column;
        /* border: 1px solid rgb(192, 0, 0); */
      }

      #movie_ticketing_name {
        width: 800px;
        height: auto;
        border: 1px solid #ddd;
        /* padding: 0 20px; */

        margin: 30px 0;
      }
      .movie_ticketing_name_top {
        height: 60px;
        background-color: var(--point-color);
        display: flex;
        flex-direction: row;

        align-items: center;
        justify-content: space-between;
      }
      #movie_ticketing_name_top_search {
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: row;

        align-items: center;
        justify-content: center;
        float: right;
        margin-right: 10px;
        /* border: 1px solid #ddd; */
      }
      #movie_ticketing_name_search_text {
        float: right;
        border: none;
        background-color: white;

        padding: 5px 3px;
        border-radius: 15px;
      }
      #movie_ticketing_name_search_img {
        float: right;
        width: 20px;
        height: 20px;
        border: 1px solid #000;
        margin-bottom: 0px;
        margin-left: 0px;
        background-color: var(--white);
      }
      #movie_ticketing_name_bottom {
        display: flex;
        width: auto;
        margin: auto;
        height: 300px;
      }
      #poster_screen {
        display: flex;
      }
      .poster {
        width: 170px;
        height: 234px;
        margin: auto 10px;
        border: 1px solid #ddd;
      }
      #movie_ticketing_cinema {
        width: 800px;
        height: auto;
        border: 1px solid #ddd;
        /* padding: 0 20px; */
      }
      #movie_ticketing_cinema_contents {
        margin: 0 auto;
        width: auto;
        height: 400px;
        border: 1px solid #ddd;
        display: flex;
      }

      #movie_ticketing_cinema_zone {
        width: 100px;
      }
      #movie_ticketing_cinema_zone > li {
        border: 1px solid #ddd;
        height: 38px;
        line-height: 38px;
        text-align: center;
      }

      .check_zone {
        display: none;
      }
      #movie_ticketing_cinema_name {
        position: relative;
        width: 610px;
        border: 1px solid #ddd;
        height: 600px;
        overflow: hidden;
      }
      .contents {
        position: relative;
        display: none;
      }
      input[type="radio"] {
        display: none;
      }
      .poster:hover {
        background-color: #ddd;
      }
      #m1:checked ~ div:nth-of-type(1) {
        display: block;
      }
      #m2:checked ~ div:nth-of-type(2) {
        display: block;
      }
      #m3:checked ~ div:nth-of-type(3) {
        display: block;
      }
      #m4:checked ~ div:nth-of-type(4) {
        display: block;
      }
      #m5:checked ~ div:nth-of-type(5) {
        display: block;
      }
      #m6:checked ~ div:nth-of-type(6) {
        display: block;
      }
      #m7:checked ~ div:nth-of-type(7) {
        display: block;
      }
      #m8:checked ~ div:nth-of-type(8) {
        display: block;
      }
      #m9:checked ~ div:nth-of-type(9) {
        display: block;
      }
      #m10:checked ~ div:nth-of-type(10) {
        display: block;
      }

      .contents {
        margin: 50px;
        font-size: 1rem;
      }
      .contents > span:hover {
        background-color: var(--point-color);
        color: var(--white);
      }
      .movie_ticketing_name_top_1 {
        display: flex;
        float: left;
        margin: auto 20px;
        line-height: 60px;
        color: var(--white);
        font-size: 22px;
        font-weight: bold;
      }
      #movie_ticketing_input {
        text-align: center;
        margin-bottom: 50px;
      }
      #movie_ticketing_input_1 {
        padding: 10px 30px;
        margin-top: 50px;
      }
    </style>

    <script>
      $(document).on("click", "#poster_screen>img", function () {
        $("#userid1").attr("value", $(this).attr("title"));
        $("img[title =" + $("#userid1").val() + "]")
          .css("border", "10px solid var(--point-color) ")
          .css("border-radius", "0.5rem");
        $("img[title !=" + $("#userid1").val() + "]").css("border", "");
      });

      $(document).on("click", ".contents>span", function () {
        $("#userid2").attr("value", $(this).attr("title"));
        $("span[title =" + $("#userid2").val() + "]")
          .css("border", "5px solid var(--point-color) ")
          .css("border-radius", "0.5rem");
        $("span[title !=" + $("#userid2").val() + "]").css("border", "");
      });
    </script>
    
        <div class="container">
      <div id="movie_ticketing_name">
        <div class="movie_ticketing_name_top">
          <div class="movie_ticketing_name_top_1">영화</div>
          <div id="movie_ticketing_name_top_search">
            <span class="material-icons search_icon"> search </span>
            <input id="movie_ticketing_name_search_text" type="text" />
          </div>
        </div>
        <div id="movie_ticketing_name_bottom">
          <div id="poster_screen">
            <img class="poster" src="img/oppenheimer.jpg" title="m01" />
            <img class="poster" src="img/jam.webp" title="m02" />
            <img class="poster" src="img/venice.jpg" title="m03" />
            <img class="poster" src="img/87395_320.jpg" title="m04"/ >
          </div>
        </div>
      </div>
      <div id="movie_ticketing_cinema">
        <div class="movie_ticketing_name_top">
          <div class="movie_ticketing_name_top_1">상영관</div>
          <div id="movie_ticketing_name_top_search">
            <span class="material-icons search_icon"> search </span>
            <input id="movie_ticketing_name_search_text" type="text" />
          </div>
        </div>
        <div id="movie_ticketing_cinema_contents">
          <ul id="movie_ticketing_cinema_zone">
            <li><label for="m1">서울</label></li>
            <li><label for="m2">경기</label></li>
            <li><label for="m3">인천</label></li>
            <li><label for="m4">강원</label></li>
            <li><label for="m5">대전/충청</label></li>
            <li><label for="m6">대구</label></li>
            <li><label for="m7">부산/울산</label></li>
            <li><label for="m8">경상</label></li>
            <li><label for="m9">광주/전라</label></li>
            <li><label for="m10">제주</label></li>
          </ul>
          <input type="radio" name="munu" id="m1" value="m1" />
          <input type="radio" name="munu" id="m2" value="m2" />
          <input type="radio" name="munu" id="m3" value="m3" />
          <input type="radio" name="munu" id="m4" value="m4" />
          <input type="radio" name="munu" id="m5" value="m5" />
          <input type="radio" name="munu" id="m6" value="m6" />
          <input type="radio" name="munu" id="m7" value="m7" />
          <input type="radio" name="munu" id="m8" value="m8" />
          <input type="radio" name="munu" id="m9" value="m9" />
          <input type="radio" name="munu" id="m10" value="m10" />

          <div class="contents">
            <span title="gangnam"> 강남</span> | <span title="isu">이수</span> |
            <span title="gangbuk"> 강북 </span>
          </div>
          <div class="contents">
            <span title="seongnam"> 성남</span> |
            <span title="yangpyeong"> 양평 </span>
          </div>
          <div class="contents">
            <span title="incheon"> 인천</span> |
            <span title="bupyeong"> 부평 </span>
          </div>
          <div class="contents">
            <span title="gangwon"> 강원</span>
          </div>
          <div class="contents">
            <span title="daejeon_chungcheong"> 대전/충청</span>
          </div>
          <div class="contents">
            <span title="daegu"> 대구</span>
          </div>
          <div class="contents">
            <span title="busan_ulsan"> 부산/울산</span>
          </div>
          <div class="contents">
            <span title="gyeongsang"> 경상</span>
          </div>
          <div class="contents">
            <span title="gwangju_jeonla"> 광주/전라</span>
          </div>
          <div class="contents">
            <span title="jeju"> 제주</span>
          </div>
        </div>
      </div>

      <div id="movie_ticketing_input">
        <form>
          <input
            type="hidden"
            id="userid1"
            value="park"
            size="20"
            maxlength="10"
            disabled
          />
          <input
            type="hidden"
            id="userid2"
            value="park"
            size="20"
            maxlength="10"
            disabled
          />
          <input
            id="movie_ticketing_input_1"
            onclick="window.open('../THEATER/schedule.html')"
            type="submit"
            name="reg"
            value="예매하기"
          />
        </form>
      </div>
    </div>
    
      <script>
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
    ];

    const posters = document.getElementsByClassName("poster");

    for (let i = 0; i < posters.length; i++) {
      posters[i].src = movie_poster[i];
    }
  </script>
    
    