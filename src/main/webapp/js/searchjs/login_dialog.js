// js/login_dialog.js

const login_btn = document.getElementById("login_user");
const close_btn = document.getElementById("login-modal_top-close");
//로그인 모달 관련
const login_modal_btn = document.getElementById("login__dialog-form");

const modal__login_btn = document.getElementById("login-modal_login-btn");
const modal__login_id = document.getElementById("login_id");
const modal__login_pw = document.getElementById("login_password");

//////////////////////////////////////////////////

// 전역 변수로 페이지 너비와 높이 선언
let pageWidth;
let pageHeight;

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
  //정규식 검사
  if (modal__login_id.value === "") {
    alert("아이디를 입력해주세요.");
    modal__login_id.focus();
    return false;
  } else if (!isId(modal__login_id.value)) {
    alert("아이디를 확인해주세요.");
    modal__login_id.focus();
    return false;
  } else if (modal__login_pw.value === "") {
    alert("비밀번호를 입력해주세요.");
    modal__login_pw.focus();
    return false;
  } else {
    modal_background_none();
    return true;
  }
});
