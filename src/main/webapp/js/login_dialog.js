const login_btn = document.getElementById("login_user");
const close_btn = document.getElementById("login-modal_top-close");
//로그인 모달 관련
const login_modal_btn = document.getElementById("login__dialog-form");

const modal__login_btn = document.getElementById("login-modal_login-btn");
const modal__login_id = document.getElementById("login_id");
const modal__login_pw = document.getElementById("login_password");

//////////////////////////////////////////////////

// 전역 변수로 페이지 너비와 높이 선언
var pageWidth;
var pageHeight;

function window_size() {
  // 전역 변수에 현재 페이지의 너비와 높이 저장
  pageWidth =
    window.outerWidth ||
    document.documentElement.clientWidth ||
    document.body.clientWidth;

  pageHeight =
    window.outerHeight ||
    document.documentElement.clientHeight ||
    document.body.clientHeight;
}

//★뒷면 껌게하는거
function modal_background_darker() {
  const backarea = document.getElementById("main__backarea");
  window_size(); // 페이지 너비와 높이를 가져옴

  console.log("검정검정빔!");

  window.addEventListener("resize", function () {
    window_size(); // 페이지 너비와 높이를 업데이트
    backarea.style.width = pageWidth + "px";
    backarea.style.height = pageHeight + "px";
  });

  backarea.style.width = pageWidth + "px";
  backarea.style.height = pageHeight + "px";
  backarea.style.backgroundColor = "rgba(0, 0, 0, 0.8)";
  backarea.style.display = "flex";

  //★모달창 띄우기
  modal__login_id.value = "";
  modal__login_pw.value = "";
  login_modal_btn.style.display = "flex";
  close_btn.addEventListener("click", function () {
    backarea.style.display = "none";
    login_modal_btn.style.display = "none";
  });
}

//뒷면 다시 하얗게 하는거
function modal_background_none() {
  const backarea = document.getElementById("main__backarea");
  backarea.style.backgroundColor = "rgba(0, 0, 0, 0)";
  backarea.style.display = "none";
}

login_btn.addEventListener("click", modal_background_darker);

// ======== ID 입력 정규식 확인 =========

//아이디 정규식
function isId(asValue) {
  var regExp = /^[a-zA-Z0-9]{4,12}$/;
  return regExp.test(asValue);
}

modal__login_btn.addEventListener("click", function () {
  if (modal__login_id.value == "") {
    alert("아이디를 입력해주세요.");
    modal__login_id.focus();
    return false;
  } else if (!isId(modal__login_id.value)) {
    alert("아이디를 확인해주세요.");
    modal__login_id.focus();
    return false;
  } else if (modal__login_pw.value == "") {
    alert("비밀번호를 입력해주세요.");
    modal__login_pw.focus();
    return false;
  } else {
    alert("로그인 성공!"); //어서오세요 {닉네임}님
    localStorage.setItem("login", modal__login_id.value); //로그인기능구현용 로컬스토리지
    modal__login_id.value = "";
    modal__login_pw.value = "";
    login_modal_btn.style.display = "none";

    //만약 회원가입페이지라면 홈으로 가는 코드 추가해야함

    login_check();
    location.href = "#";
    modal_background_none();
  }
});

// 로그인 , 로그아웃 구현
function login_check() {
  const login_btn = document.getElementById("login_user");
  const join_btn = document.getElementById("create_user");
  const logout_btn = document.getElementById("header__logout_user");
  const mypage_btn = document.getElementById("header__mypage");

  const img = document.querySelector("#header__login__icon");

  if (localStorage.getItem("login") == null) {
    //로그인정보가 없을때
    //로그인, 회원가입만 띄우기 == logout, mypage 지우기
    logout_btn.style.display = "none";
    mypage_btn.style.display = "none";
    login_btn.style.display = "flex";
    join_btn.style.display = "flex";

    img.style.backgroundImage =
      "url(https://i.pinimg.com/1200x/fd/58/0a/fd580a223a62acf63a7475937edcd266.jpg";
  } else if (localStorage.getItem("login") != null) {
    //로그인정보가 있을때,
    //로그아웃, 마이페이지
    login_btn.style.display = "none";
    join_btn.style.display = "none";
    logout_btn.style.display = "flex";
    mypage_btn.style.display = "flex";

    img.style.backgroundImage =
      "url(https://i.namu.wiki/i/DqgzQRdhxgyENdCTNrXwV77mK5b3ZiqkkBp2wCbT_ozyZLfTzECyfi15_izCExwbfisR4IBF2upNrG9tnjlASKS6hamr14zwdSRdVOtcaxMrOl0ePyGmg1eyfN5V_0NXWq-OJbWI8aRO1quG8YoIXQ.webp)";

    logout_btn.addEventListener("click", function () {
      localStorage.removeItem("login");
      location.href = "#";
    });
  }
}

login_check();

// === 모달창 입력값있으면 로그인 버튼 색 바꾸는거 === (보류)
