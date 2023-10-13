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
        width: 1200px;
        margin: 0 auto;
        height: 100%;
        /*border: 1px solid red;*/
        /* border: 1px solid red; */
        flex-wrap: nowrap;
      }

      #payment_con {
        display: flex;
        flex-direction: column;
        width: 800px;
      }

      #pay_title {
        font-size: 22px;
        font-weight: bold;

        margin: 50px 10px 40px 10px;
      }

      /* 로고부분 */
      header {
        text-align: center;
        height: 150px;
        line-height: 150px;
        font-size: var(--header-font-size);
      }

      #mv1 {
        display: flex;
        width: 170px;
        height: 234px;

        background-image: "";
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
      }

      #payment_top_wrap {
        display: flex;
        flex-direction: row;
        width: 100%;
        justify-content: center;

        padding: 40px 5px;

        border-radius: 20px;
        border: 1px solid #e0e0e0;
      }

      #payment_top_left {
        display: flex;
        align-items: center;
        justify-content: ceter;

        width: 30%;
      }

      #payment_top_right {
        display: flex;
        flex-direction: column;

        width: 50%;
        align-items: flex-start;
        justify-content: center;

        line-height: 1.5;
      }

      #payment_top__title > p:nth-child(1) {
        font-size: 22px;
        font-weight: bold;

        width: 100%;
        height: auto;

        margin-bottom: 10px;
      }

      #payment_top__title > p:nth-child(2) {
        color: var(--gray-darker);
        width: 100%;
        text-align: right;

        margin-bottom: 5px;
      }

      #payment_top_right_right {
        display: flex;
        flex-direction: column;

        width: 100%;
        margin-top: 10px;
        height: auto;

        align-items: flex-end;
        font-weight: bold;
      }

      .payment_title {
        font-size: 20px;
        font-weight: bold;

        margin: 20px;
        text-align: left;
      }

      #payment_con > div:nth-child(4) {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        width: 100%;
        height: 100%;
      }

      #mayment_sel__wrap {
        display: inline-flex;
        flex-direction: column;

        width: 500px;
        display: flex;
        flex-wrap: wrap;
      }

      #payment_con > div:nth-child(4) > div {
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: center;
      }
      .paymunt_sel {
        display: flex;
        width: 80px;
        height: 80px;
        background-color: #eee;
        border-radius: 5px;

        align-items: center;
        justify-content: center;

        box-shadow: none;
        margin: 3px;

        cursor: pointer;
      }

      /* paymunt_sel button 눌렀을때 표시되는 스타일 */
      /* .paymunt_sel:focus {
        background-color: #404040;
        color: white;
      } */

      #payment_btn {
        margin-top: 30px;
        padding: 10px;
        width: 120px;
        border-radius: 10px;
        background-color: var(--gray-darker);
        color: white;
        font-weight: bold;
        font-size: 16px;
        cursor: pointer;
      }

      #payment_info_wrap {
        width: 500px;
      }

      #mayment_sel__wrap {
        width: 500px;
        display: flex;
        flex-direction: row;
        gap: 10px;
      }
    </style>
    
       <div id="payment_con" class="container">
      <h1 id="pay_title">결제수단/예매정보확인</h1>
      <hr />
      <div id="payment_top_wrap">
        <!-- 영화 포스터 -->
        <div id="payment_top_left">
          <a href="#">
            <img
              src="https://i.namu.wiki/i/pMVIi7MS6YW04Gxkx-OGH1_PE5T7O4G5ti4N-INH0eMVplAAk6cxGSiHkn0-GfSKfC1nMTR40VmE6f7z8TQGvFX-Hf3_0RzMgIeh7XvW-MKmO9FvQGhYB1GhnouNSj45C76zxgKRCP5ByesV6q8_DQ.webp"
              id="mv1"
          /></a>
        </div>

        <div id="payment_top_right">
          <div id="payment_top__title">
            <p>오펜하이머</p>
            <p>180분</p>
          </div>

          <p>2023. 09. 09 (토)</p>
          <p>16:00 ~ 18:00</p>
          <p>CGV용산 / 홍길동 3관</p>

          <p>성인 1명</p>

          <div id="payment_top_right_right">
            <p>결제 예정금액</p>
            <p>12,000원</p>
          </div>
        </div>

        <!-- 정보들 -->

        <div></div>
      </div>

      <div id="payment_info_wrap">
        <div>
          <p class="payment_title">결제수단</p>
        </div>

        <div id="mayment_sel__wrap">
          <button type="radio" class="paymunt_sel">
            <span class="material-icons"> credit_card </span>
          </button>
          <button type="radio" class="paymunt_sel">
            <span class="material-icons"> account_balance_wallet </span>
          </button>
        </div>

        <button id="payment_btn">결제하기</button>

        <!-- 아직은 서버안써써 발표용으로 지워놨습니다 -->
        <!-- <form
          action="서버_주소"
          method="POST"
          onreset="alert('예매 첫화면으로 이동합니다')"
        >
          <button type="reset">취소하기</button>
          <button type="submit">결제하기</button>
        </form> -->
      </div>
    </div>

    <!-- FOOTER 건들지마세요 -->
    <section id="footer">
      <div class="footer__wrap">
        <h1 class="footer__logo">
          <span class="material-icons" id="footer__logo"> movie_creation </span>
        </h1>

        <div class="footer__text">
          <span class="bold">영화나보죠</span>
          <span>사업자 등록번호 : 000-00-00000</span>
          <span>소재지 : 경기도 어쩌구 저쩌구 저쩌구저쩌구</span>
        </div>
      </div>
    </section>

    <script>
      const btns = document.getElementsByClassName("paymunt_sel");

      for (let i = 0; i < btns.length; i++) {
        btns[i].addEventListener("click", function () {
          this.style.backgroundColor = "#404040";
          this.style.color = "white";
          for (let j = 0; j < btns.length; j++) {
            if (j !== i) {
              btns[j].style.backgroundColor = "";
              btns[j].style.color = "";
            }
          }
        });
      }

      const payment_btn = document.getElementById("payment_btn");
      payment_btn.addEventListener("click", function () {
        //btns가 선택되어있는지 확인
        let check = false;
        for (let i = 0; i < btns.length; i++) {
          if (btns[i].style.backgroundColor === "rgb(64, 64, 64)") {
            check = true;
          }
        }

        alert("결제가 완료되었습니다");
        location.href = "./booking_con.html";
      });
    </script>
    
    

