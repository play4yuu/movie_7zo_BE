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
      #movie_schedule_main {
        width: 800px;
        height: auto;
        margin: 80px auto;
        border: 1px solid #ddd;

        margin: 10px 0px;
      }
      #movie_schedule_main_name {
        font-size: 24px;
        font-weight: bold;
        padding: 15px 20px;
        color: var(--white);
        background-color: var(--point-color);
      }

      .movie_schedule_time {
        margin-bottom: 10p;
      }
      .movie_schedule_time > li {
        float: left;
        width: 100px;
        height: 60px;
        text-align: center;
        border: 1px solid #ddd;
      }
      .movie_schedule_time > li > div {
        height: auto;
      }
      .hrstyle {
        /* background-color: var(--point-color); */
        height: 0px;
      }
      .movie_schedule_time > li:hover {
        background-color: var(--point-color);
        color: var(--white);
      }
      .movie_schedule_time > li {
        border-radius: 0rem;
      }

      #cal_view > ul {
        list-style-type: none;
        width: 100%;
        display: flex;
        padding: 0px 0px 10px 0;
        height: auto;

        overflow: hidden;
        margin: 10px 0px;

        border-bottom: 1px solid #ddd;
      }

      #cal_view > ul > li {
        display: flex;
        width: 30px;
        text-align: center;
        list-style-type: none;
        font-size: 1em;
        text-align: center;
        justify-content: space-evenly;

        padding: 10px;
      }
      .nowdate {
        background-color: #ddd;
        border-radius: 50%;
      }
      .movie_schedule_obj {
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: center;

        width: 750px;

        padding-bottom: 15px;
        border-bottom: 1px solid #ddd;
      }
      .movie_schedule_obj_poster {
        width: 170px;
        height: 234px;

        margin: 10px;
      }
      .movie_schedule_obj_1 {
        display: flex;
        flex-direction: column;
        width: 550px;
        height: 100%;
        margin-left: 10px;
      }
      .movie_schedule_obj_2 {
        position: relative;
        height: auto;
        display: flex;

        padding: 10px;
      }

      #movie_schedule_movie > div > div:nth-child(2) {
        border-top: 1px solid var(--gray-light);
      }

      .movie_schedule_obj_3 {
        display: flex;
        font-size: 1em;
        height: auto;
        justify-content: flex-start;
        align-items: center;
        margin: 0 15px;
      }

      #movie_schedule_main > div:nth-child(3) {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
      }

      .movie_schedule_time_obj {
        font-size: 14px;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        padding: 5px 3px;
        margin: 5px;
      }
    </style>
    
       <script>
      /*
		$(".movie_schedule_time_obj").onmouseenter=function(){
			this.css("background-color","var(--point-color)");
		}
		
			document.getElementById("div2").onmouseenter=function(){
				document.getElementById("view3").innerHTML= ++m1;
			}
			document.getElementById("div2").onmouseleave=function(){
				document.getElementById("view4").innerHTML= ++m2;
	
			}
		
      $(function calendar() {
        var now = new Date();
        let nowDate = now.getDate(); //오늘날짜
        now.setDate(1); //1일로 변경

        let y = now.getFullYear();
        let m = now.getMonth() + 1;
        let w = now.getDay();
        let lmy = now.getFullYear();
        let lmm = now.getMonth();
        let lmw = now.getDay();

        //8월의 마지막날 가운데가 8인 이유는 구하는 월 은 js에서 월-1이므로 newDate(2023,8,0)
        let lastDay = new Date(y, m, 0).getDate();
        let lmlastDay = new Date(lmy, lmm, 0).getDate();
        let tag = "<ul>";
        let printDay;
        for (var i = 10; i >= 1; i--) {
          printDay = nowDate - i;
          if (printDay < 1) {
            printDay = lmlastDay + printDay;
          }
          tag += "<li>" + printDay + "<li>";
        }
        tag += "<li class=nowdate>" + nowDate + "<li>";
        for (var i = 1; i < 10; i++) {
          printDay = nowDate + i;
          if (printDay > lastDay) {
            printDay = printDay - lastDay;
          }
          tag += "<li>" + printDay + "<li>";
        }
        tag += "</ul>";

        /*
			for(var i=0;i<weekName.length;i++){
				tag+="<li>"+weekName[i]+"</li>";
			}
			for(var i=1;i<=w;i++){
				tag+="<li> &nbsp;</li>";
			}
			for(var i=1;i<=lastDay;i++){
				if(i==nowDate){
					tag+="<li class='y'>"+i+"</li>";
				}
				else{
					tag+="<li>"+i+"</li>";
				}
			}
			tag+="</ul>";
		
        document.getElementById("cal_view").innerHTML = tag;
        
      }); */
      $(function calendar() {
        var now = new Date();
        let nowDate = now.getDate(); // 오늘 날짜
        let y = now.getFullYear();
        let m = now.getMonth() + 1;
        let lastDay = new Date(y, m, 0).getDate();
        let tag = "<ul>";

        // 현재 월의 첫 날짜를 계산
        now.setDate(1);

        // 현재 월의 첫 날짜가 오늘 이전인 경우, 그 달의 첫 날을 오늘로 설정
        if (nowDate > 1) {
          now.setDate(nowDate);
        }

        // 현재 월의 첫 날부터 말일까지 날짜 생성
        for (var i = now.getDate() - 3; i <= lastDay; i++) {
          if (i === nowDate) {
            tag += "<li class='nowdate'>" + i + "</li>";
          } else {
            tag += "<li>" + i + "</li>";
          }
        }
        tag += "</ul>";

        document.getElementById("cal_view").innerHTML = tag;
      });
    </script>
    
        <div class="container">
      <div id="movie_schedule_main">
        <div id="movie_schedule_main_name">이수점 상영관 정보</div>
        <div id="cal_view"></div>
        <div>
          <!-- 경계선 밑 영화 1개당 포스터와 좌석정보-->
          <div class="movie_schedule_obj" id="movie_schedule_movie">
            <img src="img/oppenheimer.jpg" class="movie_schedule_obj_poster" />
            <div class="movie_schedule_obj_1">
              <div class="movie_schedule_obj_2">
                <div class="movie_schedule_obj_3">2D</div>
                <ul class="movie_schedule_time">
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../TICKETING/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                </ul>
              </div>
              <!--hr class="hrstyle""/-->
              <div class="movie_schedule_obj_2">
                <div class="movie_schedule_obj_3">3D</div>
                <ul class="movie_schedule_time">
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                </ul>
              </div>
            </div>
          </div>

          <!---------------------------------------------------------------------------------->

          <div class="movie_schedule_obj" id="movie_schedule_movie">
            <img src="img/sleep.jpg" class="movie_schedule_obj_poster" />
            <div class="movie_schedule_obj_1">
              <div class="movie_schedule_obj_2">
                <div class="movie_schedule_obj_3">2D</div>
                <ul class="movie_schedule_time">
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                </ul>
              </div>
              <div class="movie_schedule_obj_2">
                <div class="movie_schedule_obj_3">3D</div>
                <ul class="movie_schedule_time">
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                </ul>
              </div>
            </div>
          </div>

          <!---------------------------------------------------------------------------------->

          <div class="movie_schedule_obj" id="movie_schedule_movie">
            <img src="img/venice.jpg" class="movie_schedule_obj_poster" />
            <div class="movie_schedule_obj_1">
              <div class="movie_schedule_obj_2">
                <div class="movie_schedule_obj_3">2D</div>
                <ul class="movie_schedule_time">
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                </ul>
              </div>
              <!--hr class="hrstyle""/-->
              <div class="movie_schedule_obj_2">
                <div class="movie_schedule_obj_3">3D</div>
                <ul class="movie_schedule_time">
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                  <li
                    class="movie_schedule_time_obj"
                    onclick="window.open('../ticketing/seat.html')"
                  >
                    <div>1관</div>
                    <div>08:00 ~ 10:00</div>
                    <div>132석</div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <!---------------------------------------------------------------------------------->
        </div>
      </div>
    </div>
    
    