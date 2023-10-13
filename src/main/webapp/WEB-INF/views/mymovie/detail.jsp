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

      #movie_detail_top > img {
        width: 250px;
        height: 350px;
        margin: auto;
      }

      #movie_detail_main {
        width: 900px;
        margin: 30px auto;
      }

      .img_insert {
        /* 이미지넣는거 */
        width: 185px;
        height: 260px;
        margin: auto;

        background-image: url("img/oppenheimer.jpg");
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;

        margin: 0 10px;
      }

      .top_title {
        font-size: 20px;
        margin: 10px 0;
        font-weight: bold;
      }

      #movie_detail_top {
        position: relative;
        display: flex;
        flex-direction: row;

        align-items: center;
        justify-content: space-evenly;
        padding: 10px;

        width: 100%;
        height: 300px;
        border: 1px solid #ddd;
        border: 5px solid var(--point-color);
        border-radius: 0.5rem;
      }
      #movie_detail_top_explain {
        width: 400px;
        /* margin: 50px 0 0 0; */
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        justify-content: center;
      }
      #movie_detail_button {
        display: flex;
        flex-direction: column;
        height: 100px;
      }

      .title {
        font-weight: bold;
        font-size: 1.5em;
      }
      .movie_detail_button {
        display: block;
        width: 150px;
        height: 50px;
      }

      .explain_wrap {
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        justify-content: center;
        margin: 10px 0;
        line-height: 1.4;
      }

      #movie_detail_button > input {
        width: 150px;
        height: 150px;
        margin: 10px;
        padding: 14px 0;
        font-size: 1rem;
      }

      #movie_detail_summary {
        width: 800px;
        margin: 20px auto;
        font-size: 1rem;
        height: auto;
      }

      #movie_detail_summary_contents {
        margin: 20px 20px;
        line-height: 1.5;
      }

      #movie_detail_video {
        display: flex;
        flex-direction: column;
        width: 800px;
        margin: 0;

        position: relative;
      }

      #movie_detail_video_contents {
        display: flex;
        width: 100%;
        height: 100%;

        align-items: center;
        justify-content: center;
        padding: 30px 0;
      }

      #movie_detail_video_contents > img {
        width: 600px;
        height: 500px;
        margin: 20px auto;
        border: 1px solid var(--point-color);
      }

      #movie_detail_rating {
        display: flex;
        flex-direction: column;
        width: 800px;
        margin: 0;
        position: relative;
      }

      #movie_detail_rating_contents {
        width: 800px;
        height: 500px;
        margin: 20px 0;
        border: 1px solid #ddd;
        background-color: white;
        border-radius: 10px;
        border: var(--gray-darker) 2px solid;

        overflow: auto;
      }
      .user1 {
        background-color: var(--white);
        border-radius: 10px;
        border: 1px solid #ddd;
        padding: 5px;
      }
      #movie_detail_video_contents_youtube {
        border: 5px solid var(--point-color);
        border-radius: 0.5rem;
        width: 650px;
        height: 400px;
      }
      hr {
        background-color: var(--point-color);
      }
      #rating_reg {
        position: absolute;
        display: flex;
        align-items: center;
        justify-content: center;

        bottom: -50px;
        right: 0;
        width: 150px;
        height: 50px;
        text-align: center;
        background-color: var(--gray-darker);
        color: white;
        font-size: 1rem;
        border-radius: 10px;
      }
      .movie_detail_button:hover {
        background-color: var(--point-color);
        color: var(--white);
      }
      .myform {
        display: inline-block;
        direction: rtl;
        border: 0;
      }
      .myform legend {
        text-align: right;
      }
      .myform input[type="radio"] {
        display: none;
      }
      .myform label {
        font-size: 1em;
        color: transparent;
        text-shadow: 0 0 0 #f0f0f0;
      }
      .myform label:hover {
        text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
      }
      .myform label:hover ~ label {
        text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
      }
      .myform input[type="radio"]:checked ~ label {
        text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
      }
      #reviewContents {
        width: 100%;
        height: 150px;
        padding: 10px;
        box-sizing: border-box;
        border: solid 1.5px #d3d3d3;
        border-radius: 5px;
        font-size: 16px;
        resize: none;
      }

      #movie_detail_rating_contents > div > div > hr {
        padding: 0 5px;
        margin: 8px 0;
      }

      #movie_detail_rating_contents
        > div
        > div:nth-child(2)
        > div:nth-child(1) {
        padding: 0 10px;
      }
      #movie_detail_rating_contents
        > div
        > div:nth-child(2)
        > div:nth-child(3) {
        padding: 0 10px;
      }

      .rate_star {
        font-size: 1em;
        display: inline-block;
        color: transparent;
        text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
      }

      #exp_wrap {
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        justify-content: center;
      }

      #btn_wrap {
        height: 100%;
        display: flex;
        align-items: flex-end;
        justify-content: flex-end;
      }

      #movie_detail_button {
        margin-bottom: 35px;
      }

      #movie_detail_button > input {
        border: none;
        border-radius: 5px;
        background-color: var(--gray-darker);
        color: white;
        font-weight: bolder;
      }
    </style>

    <script>
      $(function () {
        function clear() {
          $("#reviewContents").val("");
        }
        //다이얼로그 띄우기
        $("#rating_reg").click(function () {
          $("#dialog").dialog("open");
        });

        $("#dialog").dialog({
          autoOpen: false, //실행이 자동열림 설정(true:기본,false)
          buttons: {
            등록: function () {
              var listVar = $("input[name=reviewStaruser]:checked").val();
              var date = $("#reviewContents").val();
              let tag = "";
              for (var i = 0; i < listVar; i++) {
                tag +=
                  "<span style='margin:0 4px; font-size: 1em; display: inline-block; color: transparent; text-shadow:0 0 0 rgba(250, 208, 0, 0.99);'>★</span>";
              }
              for (var i = 0; i < 5 - listVar; i++) {
                tag +=
                  "<span style='margin:0 4px; font-size: 1em; display: inline-block; color: transparent; text-shadow: 0 0 0 #f0f0f0;'>★</span>";
              }

              $("#movie_detail_rating_contents").append(
                "<div class='user1' style='display: flex; margin:20px 20px;'>" +
                  "<div style=' width: 80px; height: 80px; border: 1px solid #ddd;'>" +
                  "<img src='../img/personicon.png' style='width: 80px; height: 80px;'/></div>" +
                  "<div style='width: 700px;height: 80px;border: 1px solid #ddd;'>" +
                  "<div style='font-size: 24px;'>" +
                  tag +
                  "</div><hr/>" +
                  "<div>" +
                  date +
                  "</div>" +
                  "</div>" +
                  "</div>"
              );
              //이미 입력된 일정을 초기화
              clear();
              a;
              $("#dialog").dialog("close");
            },
            reset: function () {
              clear();
            },
            close: function () {
              clear();
              $("#dialog").dilog("close");
            },
          },
          modal: true, //dialog가 띄워진 상태에서는 메인 내용을 사용할 수 없다(modal이 true일 경우).
        });
        //input 박스를 날짜 선택이 가능한 기능으로 설정하기
      });
    </script>
    
     <div id="movie_detail_main">
      <div id="movie_detail_top">
        <div id="img_wrap">
          <div class="img_insert"></div>
        </div>
        <div id="exp_wrap">
          <div id="movie_detail_top_explain">
            <div class="top_title">오펜하이머</div>
            <div class="explain_wrap">
              <div>감독: 크리스토퍼 놀란</div>
              <div>
                배우: 킬리언 머피, 에밀리 블런트, 맷 데이먼, 로버트 다우니
                주니어
              </div>
              <div>개봉: 2023.08.15</div>
              <div>장르: 스릴러, 드라마</div>
              <div>누적 관객수: 1,346,328</div>
              <div>평점: 4.5/5.0</div>
            </div>
          </div>
        </div>
        <div id="btn_wrap">
          <div id="movie_detail_button">
            <input
              type="button"
              class="movie_detail_button"
              onclick="window.open('../TICKETING/home.html')"
              value="예매하기"
            />
            <input
              type="button"
              class="movie_detail_button"
              onclick="window.open('../DEBATE/home.html')"
              value="토론하기"
            />
          </div>
        </div>
      </div>

      <div style="margin: 40px auto" id="movie_detail_summary">
        <div style="font-size: 1.5em" class="title">줄거리</div>
        <p id="movie_detail_summary_contents">
          미국의 물리학자 로버트 오펜하이머는 제 2차 세계대전에 쓸 핵무기를
          개발하기 위한 비밀 프로젝트 '맨해튼 프로젝트'를 주도하게 된다.<br />
          케임브리지 대학교 대학원 유학 시절 실험물리학에 서툴러서 고생하던
          22살의 청년 오펜하이머가 지도교수 패트릭 블래킷을 독살하려던
          이야기에서 시작한다.<br />
          오펜하이머는 지도교수였던 블래킷과의 불화 및 적성에 맞지 않는
          실험물리학 공부 때문에 지독한 향수병과 우울증에 시달리던 와중,
          다행히도 닐스 보어의 권유로 괴팅겐 대학교로 학적을 옮긴 후
          이론물리학과 양자역학을 접하게 되고, 그 분야에서 두각을 나타내게
          된다.<br />
          미국 칼텍, 그리고 UC 버클리로 돌아온 오펜하이머는 실험물리학자인
          어니스트 로런스와 협업하게 되고, 진 태틀록과 연인 관계가 되지만 결국
          그녀와는 틀어지고 유부녀였던 캐서린과 눈이 맞은 끝에 결혼하게 된다.
          <br />
        </p>
        <hr />
      </div>

      <div style="margin: 30px auto" id="movie_detail_video">
        <div class="title">미리보기</div>
        <div id="movie_detail_video_contents">
          <iframe
            id="movie_detail_video_contents_youtube"
            src="https://www.youtube.com/embed/oSqK_v6zPoM?si=0v1wLjMbdIymYXJs"
            title="YouTube video player"
            frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
            allowfullscreen
          ></iframe>
        </div>
        <hr />
      </div>
      <div
        style="margin: 30px auto; border-radius: 0.5rem"
        id="movie_detail_rating"
      >
        <div class="title">평점</div>
        <div id="movie_detail_rating_contents">
          <div class="user1" style="display: flex; margin: 20px 20px">
            <div style="width: 80px; height: 80px">
              <img
                src="./img/personicon.png"
                style="width: 80px; height: 80px"
              />
            </div>
            <div style="width: auto; height: 80px">
              <div style="font-size: 1.5rem">
                <span class="rate_star">★</span>
                <span class="rate_star">★</span>
                <span class="rate_star">★</span>
                <span class="rate_star">★</span>
                <span class="rate_star">★</span>
              </div>
              <hr />
              <div>
                후반부터 엔딩까지 쉬지않고 휘몰아치는 상황은 핵폭발 시험 장면
                보다 더 강렬하게 다가온다.
              </div>
            </div>
          </div>

          <div class="user1" style="display: flex; margin: 20px 20px">
            <div style="width: 80px; height: 80px">
              <img src="img/personicon.png" style="width: 80px; height: 80px" />
            </div>
            <div style="width: 700px; height: 80px">
              <div style="font-size: 1.5rem">
                <span class="rate_star">★</span>
                <span class="rate_star">★</span>
                <span class="rate_star">★</span>
                <span class="rate_star">★</span>
                <span class="rate_star">★</span>
              </div>
              <hr />
              <div>너무 재미있어요</div>
            </div>
          </div>

          <div class="user1" style="display: flex; margin: 20px 20px">
            <div style="width: 80px; height: 80px">
              <img src="img/personicon.png" style="width: 80px; height: 80px" />
            </div>
            <div style="width: 700px; height: 80px">
              <div style="font-size: 1.5rem">
                <span class="rate_star">★</span>
                <span class="rate_star">★</span>
                <span class="rate_star">★</span>
                <span class="rate_star">★</span>
                <span class="rate_star">★</span>
              </div>
              <hr />
              <div>초반엔 좀 지루하기도 하고 그래도 잼있게 잘봤어요</div>
            </div>
          </div>
          <div id="rating_reg" class="movie_detail_button">평점 등록하기</div>
        </div>
      </div>
    </div>

    <div id="dialog" title="평점 등록하기">
      <h1>평점을 등록하세요</h1>

      <fieldset class="myform" style="margin: 10px auto">
        <input
          type="radio"
          name="reviewStaruser"
          value="5"
          id="userrate1"
          checked
        /><label for="userrate1">★</label>
        <input
          type="radio"
          name="reviewStaruser"
          value="4"
          id="userrate2"
        /><label for="userrate2">★</label>
        <input
          type="radio"
          name="reviewStaruser"
          value="3"
          id="userrate3"
        /><label for="userrate3">★</label>
        <input
          type="radio"
          name="reviewStaruser"
          value="2"
          id="userrate4"
        /><label for="userrate4">★</label>
        <input
          type="radio"
          name="reviewStaruser"
          value="1"
          id="userrate5"
        /><label for="userrate5">★</label>
      </fieldset>
      <div>
        <textarea
          class="col-auto form-control"
          type="text"
          id="reviewContents"
          placeholder="후기 입력"
        ></textarea>
      </div>

      <!--<label for="event-date">후기</label> : <input type="text" id="event-date"/>-->
    </div>