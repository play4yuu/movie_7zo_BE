<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <style>
      @import url("https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css");

      #movie_ticketing_name {
        width: 700px;
        height: auto;
        margin-bottom: 30px;
      }

      #movie_ticketing_name_top {
        display: flex;
        flex-direction: row;
        width: 100%;
        background-color: var(--point-color);

        justify-content: space-between;
      }

      #seat__movie_title {
        font-size: 20px;
        color: white;
        font-weight: bold;
      }

      #movie_ticketing_name_top_search {
        display: flex;
        flex-direction: row;
        gap: 5px;

        display: none;
      }

      #movie_ticketing_name_search_text {
      }

      #movie_ticketing_name_search_img {
        width: 20px;
        height: 20px;
      }

      #seat_con > h1 {
        text-align: center;
        font-size: 24px;
        font-weight: bold;

        margin: 30px 10px;
      }

      #movie_ticketing_seat_bottom {
        padding: 20px;
        width: auto;
        height: auto;
        border: 1px solid var(--gray-light);
        flex-wrap: nowrap;
        text-align: center;
      }

      #movie_person_select {
        display: flex;
        flex-direction: row;
        width: 700px;
        text-align: center;
        font-size: 16px;
      }

      /* span,
                           label {
                             margin-bottom: 30px;
                           }

                           img {
                             position: relative;
                             left: 400px;
                             bottom: 400px;
                           } */

      .seat-button {
        display: inline-block;
        /* margin: 10px; */
        width: 30px;
        height: 30px;
        margin: 5px;
        border: 1px solid #ccc;
        background-color: #eee;
        cursor: pointer;

        font-size: 12px;
        text-align: center;
      }

      #screen {
        width: auto;
        height: 40px;
        text-align: center;
        align-items: center;
        margin: 10px 100px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 24px;
        background-color: #2350bc;

        color: #fff;
      }

      select {
        margin: 0 auto;
        width: 200px;
        height: 50px;
        border: 2px solid #ccc;
        border-radius: 5px;
        padding: 5px;
        font-size: 20px;
        text-align: center;
        cursor: pointer;
      }

      input[type="submit"] {
        position: relative;
        cursor: pointer;
      }

      #seat_con {
        display: flex;
        flex-direction: column;

        align-items: center;
        justify-content: center;
      }

      .movie_ticketing_name_top_left {
        display: flex;
        flex-direction: row;
        gap: 5px;
        justify-content: space-between;
        width: 100%;
        padding: 20px;
      }

      #person_sel_poster_wrap {
        width: 200px;
        height: auto;
      }

      #person_sel_insert_poster {
        margin-left: 15px;
        width: 170px;
        height: 234px;
        background-color: rgba(192, 0, 0, 0.3);

        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
      }

      #movie_person_sel_left {
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        gap: 10px;
        width: 270px;
        padding: 0 10px;
      }

      #selected-seats {
        font-size: 20px;
        font-weight: bold;
        text-align: left;
      }

      #selected-total {
        text-align: left;
        margin-bottom: 10px;
      }

      #movie_person_sel_left > label {
        font-size: 16px;
        font-weight: bold;
      }

      .count_wrap {
        display: flex;
        flex-direction: row;
        width: 100%;
      }

      .inp {
        width: 60px;
        padding: 3px 5px;
      }

      .count_wrap > label {
        width: 100px;
      }

      .count-wrap_count {
        width: auto;
        display: flex;
        flex-direction: column;
        line-height: 1.5;

        align-items: flex-start;
      }

      .count-wrap_count > p:first-child {
        font-size: 20px;
        font-weight: bold;
        padding-bottom: 5px;
      }

      #movie_person_select > div.count-wrap_count > p:nth-child(8),
      #movie_person_select > div.count-wrap_count > p:nth-child(7) {
        font-weight: bold;
      }
      #movie_ticketing_seat_pay_btn {
        margin-top: 30px;
        width: 100px;
        padding: 10px;
        border-radius: 10px;
        border: none;
        background-color: var(--gray-darker);
      }

      #movie_ticketing_seat_pay_btn > a {
        color: white;
        font-weight: bold;
      }

      .plus,
      .minus {
        width: 25px;
        height: 25px;
      }

      #movie_person_sel_left > div > div {
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: center;
        gap: 5px;
      }
    </style>
    
        <div class="container" id="seat_con">
      <h1>상영관/좌석선택</h1>
      <div id="movie_ticketing_name">
        <div id="movie_ticketing_name_top">
          <div class="movie_ticketing_name_top_left">
            <div id="seat__movie_title">오펜하이머 2D</div>
            <div id="movie_ticketing_name_top_search">
              <input id="movie_ticketing_name_search_text" type="text" />
              <!-- 돋보기 아이콘 삽입해야함 -->
              <input id="movie_ticketing_name_search_img" type="image" />
            </div>
          </div>
        </div>
        <div id="movie_ticketing_seat_bottom">
          <div id="screen">screen</div>
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button">A1</button>
            <button class="seat-button">A2</button>
            <button class="seat-button">A3</button>
            <button class="seat-button" style="margin-right: 30px">A4</button>

            <button class="seat-button">A5</button>
            <button class="seat-button">A6</button>
            <button class="seat-button">A7</button>
            <button class="seat-button">A8</button>
            <button class="seat-button">A9</button>
            <button class="seat-button" style="margin-right: 30px">A10</button>

            <button class="seat-button">A11</button>
            <button class="seat-button">A12</button>
            <button class="seat-button">A13</button>
          </div>
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button">B1</button>
            <button class="seat-button">B2</button>
            <button class="seat-button">B3</button>
            <button class="seat-button" style="margin-right: 30px">A4</button>
            <button class="seat-button">B5</button>
            <button class="seat-button">B6</button>
            <button class="seat-button">B7</button>
            <button class="seat-button">B8</button>
            <button class="seat-button">B9</button>
            <button class="seat-button" style="margin-right: 30px">B10</button>
            <button class="seat-button">B11</button>
            <button class="seat-button">B12</button>
            <button class="seat-button">B12</button>
          </div>
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button">C1</button>
            <button class="seat-button">C2</button>
            <button class="seat-button">C3</button>
            <button class="seat-button" style="margin-right: 30px">C4</button>
            <button class="seat-button">C5</button>
            <button class="seat-button">C6</button>
            <button class="seat-button">C7</button>
            <button class="seat-button">C8</button>
            <button class="seat-button">C9</button>
            <button class="seat-button" style="margin-right: 30px">C10</button>
            <button class="seat-button">C11</button>
            <button class="seat-button">C12</button>
            <button class="seat-button">C12</button>
          </div>
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button">D1</button>
            <button class="seat-button">D2</button>
            <button class="seat-button">D3</button>
            <button class="seat-button" style="margin-right: 30px">D4</button>
            <button class="seat-button">D5</button>
            <button class="seat-button">D6</button>
            <button class="seat-button">D7</button>
            <button class="seat-button">D8</button>
            <button class="seat-button">D9</button>
            <button class="seat-button" style="margin-right: 30px">D10</button>
            <button class="seat-button">D11</button>
            <button class="seat-button">D12</button>
            <button class="seat-button">D13</button>
          </div>
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button">E1</button>
            <button class="seat-button">E2</button>
            <button class="seat-button">E3</button>
            <button class="seat-button" style="margin-right: 30px">E4</button>
            <button class="seat-button">E5</button>
            <button class="seat-button">E6</button>
            <button class="seat-button">E7</button>
            <button class="seat-button">E8</button>
            <button class="seat-button">E9</button>
            <button class="seat-button" style="margin-right: 30px">E10</button>
            <button class="seat-button">E11</button>
            <button class="seat-button">E12</button>
            <button class="seat-button">E13</button>
          </div>
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button">F1</button>
            <button class="seat-button">F2</button>
            <button class="seat-button">F3</button>
            <button class="seat-button" style="margin-right: 30px">F4</button>
            <button class="seat-button">F5</button>
            <button class="seat-button">F6</button>
            <button class="seat-button">F7</button>
            <button class="seat-button">F8</button>
            <button class="seat-button">F9</button>
            <button class="seat-button" style="margin-right: 30px">F10</button>
            <button class="seat-button">F11</button>
            <button class="seat-button">F12</button>
            <button class="seat-button">F13</button>
          </div>
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button">G1</button>
            <button class="seat-button">G2</button>
            <button class="seat-button">G3</button>
            <button class="seat-button" style="margin-right: 30px">G4</button>
            <button class="seat-button">G5</button>
            <button class="seat-button">G6</button>
            <button class="seat-button">G7</button>
            <button class="seat-button">G8</button>
            <button class="seat-button">G9</button>
            <button class="seat-button" style="margin-right: 30px">G10</button>
            <button class="seat-button">G11</button>
            <button class="seat-button">G12</button>
            <button class="seat-button">G13</button>
          </div>
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button">H1</button>
            <button class="seat-button">H2</button>
            <button class="seat-button">H3</button>
            <button class="seat-button" style="margin-right: 30px">H4</button>
            <button class="seat-button">H5</button>
            <button class="seat-button">H6</button>
            <button class="seat-button">H7</button>
            <button class="seat-button">H8</button>
            <button class="seat-button">H9</button>
            <button class="seat-button" style="margin-right: 30px">H10</button>
            <button class="seat-button">H11</button>
            <button class="seat-button">H12</button>
            <button class="seat-button">H13</button>
          </div>
          <br />
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button">I1</button>
            <button class="seat-button">I2</button>
            <button class="seat-button">I3</button>
            <button class="seat-button" style="margin-right: 30px">I4</button>
            <button class="seat-button">I5</button>
            <button class="seat-button">I6</button>
            <button class="seat-button">I7</button>
            <button class="seat-button">I8</button>
            <button class="seat-button">I9</button>
            <button class="seat-button" style="margin-right: 30px">I10</button>
            <button class="seat-button">I11</button>
            <button class="seat-button">I12</button>
          </div>
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button">J1</button>
            <button class="seat-button">J2</button>
            <button class="seat-button">J3</button>
            <button class="seat-button" style="margin-right: 30px">J4</button>
            <button class="seat-button">J5</button>
            <button class="seat-button">J6</button>
            <button class="seat-button">J7</button>
            <button class="seat-button">J8</button>
            <button class="seat-button">J9</button>
            <button class="seat-button">J10</button>
            <button class="seat-button">J11</button>
            <button class="seat-button">J12</button>
          </div>
        </div>
      </div>

      <div id="movie_person_select">
        <div id="person_sel_poster_wrap">
          <p id="person_sel_insert_poster">
            <!-- 포스터삽입용부분입니다 : JS -->
          </p>
        </div>
        <div id="movie_person_sel_left">
          <span id="selected-seats">좌석선택</span>
          <span id="selected-total">총인원</span>

          <!--여기부터 시작-->
          <div class="count_wrap">
            <label for="normal">일반</label>
            <div class="count-wrap _count">
              <input type="text" class="inp" id="normal" value="0" readonly />
              <button type="button" class="plus">+</button>
              <button type="button" class="minus">-</button>
            </div>
          </div>

          <div class="count_wrap">
            <label for="child">청소년</label>
            <div class="count-wrap _count">
              <input type="text" class="inp" id="child" value="0" readonly />
              <button type="button" class="plus">+</button>
              <button type="button" class="minus">-</button>
            </div>
          </div>

          <div class="count_wrap">
            <label for="senior">경로/우대</label>
            <div class="count-wrap _count">
              <input type="text" class="inp" id="senior" value="0" readonly />
              <button type="button" class="plus">+</button>
              <button type="button" class="minus">-</button>
            </div>
          </div>
        </div>
        <div class="count-wrap_count">
          <p>오펜하이머</p>
          <p>180분</p>
          <p>2023. 09. 04 월요일</p>
          <p>00:00 ~ 00:00</p>
          <p>CGV용산 - 3층 노진구관</p>
          <p>일반 1명</p>
          <p>결제 예정금액</p>
          <p id="seat_price">12,000원</p>
        </div>
      </div>

      <button id="movie_ticketing_seat_pay_btn">
        <a href="./payment.html">결제하기</a>
      </button>
    </div>
    
        <section id="footer"></section>

    <script>
      $(document).ready(function () {
        var selectedSeats = [];
        var selectedTotal = 0;

        // 각 티켓 유형의 가격 정의
        var normalPrice = 12000;
        var childPrice = 8000;
        var seniorPrice = 6000;

        // 각 티켓 유형의 수량
        var normalQuantity = 0;
        var childQuantity = 0;
        var seniorQuantity = 0;
        // 남은 숫자
        var canbuy = 0;

        var currentQuantity = selectedTotal;

        $(".seat-button").on("click", function () {
          var seatNumber = $(this).text();
          if ($(this).css("background-color") === "rgb(255, 0, 0)") {
            // 좌석이 선택되어 있으면 선택 해제
            $(this).css("background-color", "#eee");
            selectedSeats = selectedSeats.filter(function (seat) {
              return seat !== seatNumber;
            });
            selectedTotal--;
          } else {
            // 좌석이 선택되어 있지 않으면 선택
            $(this).css("background-color", "red");
            selectedSeats.push(seatNumber);
            selectedTotal++;
          }

          // 선택된 좌석과 인원 수를 업데이트
          $("#selected-seats").text("좌석선택: " + selectedSeats.join(", "));
          $("#selected-total").text("총인원: " + selectedTotal + "명");
          currentQuantity = selectedTotal;
          if (
            normalQuantity + childQuantity + seniorQuantity >
            currentQuantity
          ) {
            $("#normal").val("0");
            $("#child").val("0");
            $("#senior").val("0");
            normalQuantity = 0;
            childQuantity = 0;
            seniorQuantity = 0;
            calc();
          }
        });

        //여기부터 시작
        $("._count :button").on({
          click: function (e) {
            e.preventDefault();
            canbuy =
              currentQuantity -
              (normalQuantity + childQuantity + seniorQuantity);
            var $count = $(this).parent("._count").children("input");
            var now = parseInt($count.val());
            var min = 0;
            var max = 0;

            var num = now;

            if ($(this).hasClass("minus")) {
              var type = "m";
            } else {
              var type = "p";
            }
            if (type == "m") {
              if (now > min) {
                num = now - 1;
                canbuy++;
              }
            } else {
              if (canbuy > 0) {
                num = now + 1;
                canbuy--;
              }
            }
            if (num != now) {
              $count.val(num);
              if ($count.attr("id") == "normal") {
                normalQuantity = num;
              } else if ($count.attr("id") == "child") {
                childQuantity = num;
              } else {
                seniorQuantity = num;
              }

              calc();
            }
          },
        });

        function calc() {
          var totalAmount =
            normalPrice * normalQuantity +
            childPrice * childQuantity +
            seniorPrice * seniorQuantity;
          $("#seat_price").text("결제 예정금액: " + totalAmount + "원");
        }

        // 초기 계산 호출
        calc();
      });
    </script>
    <script src="../../resource/js_01/login_dialog.js"></script>
    <script src="../../resource/js_01/mainpage.js"></script>

    <script>
      const poster = document.getElementById("person_sel_insert_poster");
      poster.style.backgroundImage =
        "url(https://i.namu.wiki/i/pMVIi7MS6YW04Gxkx-OGH1_PE5T7O4G5ti4N-INH0eMVplAAk6cxGSiHkn0-GfSKfC1nMTR40VmE6f7z8TQGvFX-Hf3_0RzMgIeh7XvW-MKmO9FvQGhYB1GhnouNSj45C76zxgKRCP5ByesV6q8_DQ.webp)";
    </script>
    
    