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
        display: inline-flex;
        /* margin: 10px; */
        width: 30px;
        height: 30px;
        margin: 5px;
        border: 1px solid #ccc;
        background-color: #eee;
        cursor: pointer;

        font-size: 12px;
        text-align: center;
        align-items: center;
        justify-content: center;
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
        display: flex;
        justify-content: center;

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
            <button class="seat-button" id="A1" >A1</button>
            <button class="seat-button" id="A2">A2</button>
            <button class="seat-button" id="A3">A3</button>
            <button class="seat-button" style="margin-right: 30px" id="A4">A4</button>

            <button class="seat-button" id="A5">A5</button>
            <button class="seat-button" id="A6">A6</button>
            <button class="seat-button" id="A7">A7</button>
            <button class="seat-button" id="A8">A8</button>
            <button class="seat-button" id="A9">A9</button>
            <button class="seat-button" style="margin-right: 30px" id="A10">A10</button>

            <button class="seat-button" id="A11">A11</button>
            <button class="seat-button" id="A12">A12</button>
            <button class="seat-button" id="A13">A13</button>
          </div>
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button" id="B1">B1</button>
            <button class="seat-button" id="B2">B2</button>
            <button class="seat-button" id="B3">B3</button>
            <button class="seat-button" id="B4" style="margin-right: 30px">B4</button>
            <button class="seat-button" id="B5">B5</button>
            <button class="seat-button" id="B6">B6</button>
            <button class="seat-button" id="B7">B7</button>
            <button class="seat-button" id="B8">B8</button>
            <button class="seat-button" id="B9">B9</button>
            <button class="seat-button" id="B10" style="margin-right: 30px">B10</button>
            <button class="seat-button" id="B11">B11</button>
            <button class="seat-button" id="B12">B12</button>
            <button class="seat-button" id="B13">B13</button>
          </div>
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button" id="C1">C1</button>
            <button class="seat-button" id="C2">C2</button>
            <button class="seat-button" id="C3">C3</button>
            <button class="seat-button" id="C4" style="margin-right: 30px">C4</button>
            <button class="seat-button" id="C5">C5</button>
            <button class="seat-button" id="C6">C6</button>
            <button class="seat-button" id="C7">C7</button>
            <button class="seat-button" id="C8">C8</button>
            <button class="seat-button" id="C9">C9</button>
            <button class="seat-button" id="C10" style="margin-right: 30px">C10</button>
            <button class="seat-button" id="C11">C11</button>
            <button class="seat-button" id="C12">C12</button>
            <button class="seat-button" id="C13">C13</button>
          </div>
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button" id="D1">D1</button>
            <button class="seat-button" id="D2">D2</button>
            <button class="seat-button" id="D3">D3</button>
            <button class="seat-button" id="D4" style="margin-right: 30px">D4</button>
            <button class="seat-button" id="D5">D5</button>
            <button class="seat-button" id="D6">D6</button>
            <button class="seat-button" id="D7">D7</button>
            <button class="seat-button" id="D8">D8</button>
            <button class="seat-button" id="D9">D9</button>
            <button class="seat-button" id="D10" style="margin-right: 30px">D10</button>
            <button class="seat-button" id="D11">D11</button>
            <button class="seat-button" id="D12">D12</button>
            <button class="seat-button" id="D13">D13</button>
          </div>
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button" id="E1">E1</button>
            <button class="seat-button" id="E2">E2</button>
            <button class="seat-button" id="E3">E3</button>
            <button class="seat-button" id="E4" style="margin-right: 30px">E4</button>
            <button class="seat-button" id="E5">E5</button>
            <button class="seat-button" id="E6">E6</button>
            <button class="seat-button" id="E7">E7</button>
            <button class="seat-button" id="E8">E8</button>
            <button class="seat-button" id="E9">E9</button>
            <button class="seat-button" id="E10" style="margin-right: 30px">E10</button>
            <button class="seat-button" id="E11">E11</button>
            <button class="seat-button" id="E12">E12</button>
            <button class="seat-button" id="E13">E13</button>
          </div>
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button" id="F1">F1</button>
            <button class="seat-button" id="F2">F2</button>
            <button class="seat-button" id="F3">F3</button>
            <button class="seat-button" id="F4" style="margin-right: 30px">F4</button>
            <button class="seat-button" id="F5">F5</button>
            <button class="seat-button" id="F6">F6</button>
            <button class="seat-button" id="F7">F7</button>
            <button class="seat-button" id="F8">F8</button>
            <button class="seat-button" id="F9">F9</button>
            <button class="seat-button" id="F10" style="margin-right: 30px">F10</button>
            <button class="seat-button" id="F11">F11</button>
            <button class="seat-button" id="F12">F12</button>
            <button class="seat-button" id="F13">F13</button>
          </div>
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button" id="G1">G1</button>
            <button class="seat-button" id="G2">G2</button>
            <button class="seat-button" id="G3">G3</button>
            <button class="seat-button" id="G4" style="margin-right: 30px">G4</button>
            <button class="seat-button" id="G5">G5</button>
            <button class="seat-button" id="G6">G6</button>
            <button class="seat-button" id="G7">G7</button>
            <button class="seat-button" id="G8">G8</button>
            <button class="seat-button" id="G9">G9</button>
            <button class="seat-button" id="G10" style="margin-right: 30px">G10</button>
            <button class="seat-button" id="G11">G11</button>
            <button class="seat-button" id="G12">G12</button>
            <button class="seat-button" id="G13">G13</button>
          </div>
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button" id="H1">H1</button>
            <button class="seat-button" id="H2">H2</button>
            <button class="seat-button" id="H3">H3</button>
            <button class="seat-button" id="H4" style="margin-right: 30px">H4</button>
            <button class="seat-button" id="H5">H5</button>
            <button class="seat-button" id="H6">H6</button>
            <button class="seat-button" id="H7">H7</button>
            <button class="seat-button" id="H8">H8</button>
            <button class="seat-button" id="H9">H9</button>
            <button class="seat-button" id="H10" style="margin-right: 30px">H10</button>
            <button class="seat-button" id="H11">H11</button>
            <button class="seat-button" id="H12">H12</button>
            <button class="seat-button" id="H13">H13</button>
          </div>
          <br />
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button" id="I1">I1</button>
            <button class="seat-button" id="I2">I2</button>
            <button class="seat-button" id="I3">I3</button>
            <button class="seat-button" id="I4" style="margin-right: 30px">I4</button>
            <button class="seat-button" id="I5">I5</button>
            <button class="seat-button" id="I6">I6</button>
            <button class="seat-button" id="I7">I7</button>
            <button class="seat-button" id="I8">I8</button>
            <button class="seat-button" id="I9">I9</button>
            <button class="seat-button" id="I10" style="margin-right: 30px">I10</button>
            <button class="seat-button" id="I11">I11</button>
            <button class="seat-button" id="I12">I12</button>
          </div>
          <div>
            <!-- 좌석 버튼 -->
            <button class="seat-button" id="J1">J1</button>
            <button class="seat-button" id="J2">J2</button>
            <button class="seat-button" id="J3">J3</button>
            <button class="seat-button" id="J4" style="margin-right: 30px">J4</button>
            <button class="seat-button" id="J5">J5</button>
            <button class="seat-button" id="J6">J6</button>
            <button class="seat-button" id="J7">J7</button>
            <button class="seat-button" id="J8">J8</button>
            <button class="seat-button" id="J9">J9</button>
            <button class="seat-button" id="J10">J10</button>
            <button class="seat-button" id="J11">J11</button>
            <button class="seat-button" id="J12">J12</button>
          </div>
        </div>
      </div>

      <div id="movie_person_select">
        <div id="person_sel_poster_wrap">
          	<img id="person_sel_insert_poster" src="${mVO.poster_url }">
            <!-- 포스터삽입용부분입니다 : JS -->
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
          <p>${mVO.movie_name}</p>
          <p>180분</p>
          <p>2023. 09. 04 월요일</p>
          <p>00:00 ~ 00:00</p>
          <p>CGV용산 - 3층 노진구관</p>
          <p>일반 1명</p>
          <p>결제 예정금액</p>
          <p id="seat_price">12,000원</p>
        </div>
      </div>
      <script>
      function selectCheck(){
  		if(document.getElementById("movieseats").value==""){
  			alert("좌석를 선택 하세요..");
  			return false;
  		}
  		if(document.getElementById("movieprice").value==""){
  			alert("인원을 선택하세요..");
  			return false;
  		}
  		return true;
  	   }
      </script>
      <form  method="post" action="${pageContext.servletContext.contextPath}/ticketing/payment" onsubmit="return selectCheck()">
      
      <input
            type="hidden"
            id="show_id"
            value="${sVO.show_id }"
             name="show_id"
       />
      <input
            type="hidden"
            id="movieseats"
            value=""
             name="movieseats"
       />
        <input
            type="hidden"
            id="movieprice"
            value=""
             name="movieprice"
       />
       
       <input
            type="hidden"
            id="normal_input"
            value=""
             name="normal_input"
       />
       <input
            type="hidden"
            id="child_input"
            value=""
             name="child_input"
       />
       <input
            type="hidden"
            id="senior_input"
            value=""
             name="senior_input"
       />
      
      <input
            id="movie_ticketing_seat_pay_btn"
            type="submit"
            name="reg"
            value="결제하기"
          />
      </form>

    </div>
    

<script>
   		$(function(){
   		 	//if($(".seat-button").text()==);
   		 	
   		 	//$(".seat-button").attr("value",$(this).text());
   		});
    </script>

<script>
    $(function(){
		let seatlist=[];
 		<c:forEach var="stVO" items="${seatlist}">	 
 		seatlist.push("${stVO.reserv_seat}");
 		</c:forEach>
 		for(var i=0;i<seatlist.length;i++){
 			console.log(seatlist[i]);
 			$("#"+seatlist[i]).attr("disabled","disabled");
 			/* if($(".seat-button").attr("id")==seatlist[i]){
 				$(this).attr("disabled","disabled");
 				console.log($(this).text()+"--");
 			} */
 		}
		
	})
    	
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
          $("#movieseats").attr("value",selectedSeats.join(","));
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
          $("#normal_input").attr("value",normalQuantity);
          $("#child_input").attr("value",childQuantity);
          $("#senior_input").attr("value",seniorQuantity);
          $("#movieprice").attr("value",totalAmount);
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
    
    