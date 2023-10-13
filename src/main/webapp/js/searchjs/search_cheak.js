//=== 아이디 찾기부분 JS파일입니다===");

// 기동시 실행되는 부분
const modal = document.getElementById("search__modal__con");
window.onload = function () {
  modal.style.display = "none";
};

//임시로 존재하는 값
const current_id = [
  "minjae",
  "minjae123",
  "minjae456",
  "ghdrlfehd52",
  "ghdrlfehd33",
  "gain01",
];
const current_names = ["김민재", "홍길동", "이순신", "김철수", "김영희"];

// 이메일 정규식
function isEmail(asValue) {
  var regExp =
    /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

  return regExp.test(asValue);
}

//비밀번호 정규식
function isPassword(asValue) {
  var regExp = /^[A-Za-z0-9]{6,12}$/;
  return regExp.test(asValue);
}

//이름 정규식
function isName(asValue) {
  var regExp = /^[가-힣]{2,17}$/;
  return regExp.test(asValue);
}

//전화번호 정규식
function isPhone(asValue) {
  var regExp = /^\d{3}-\d{3,4}-\d{4}$/;
  return regExp.test(asValue);
}

//아이디 정규식
function isId(asValue) {
  var regExp = /^[a-zA-Z0-9]{4,12}$/;
  return regExp.test(asValue);
}

//도메인 정규식
function isDomain(asValue) {
  var regExp = /^[a-zA-Z0-9.-]{2,255}(\.[a-zA-Z]{2,6}(\.[a-zA-Z]{2,63})?)?$/;
  return regExp.test(asValue);
}

// ------------------------------------------------------

//ID찾기 입력부분
const id_search_btn = document.getElementById("search__id-btn");
const id_input_name = document.getElementById("search-id__input_name");
const id_email_front = document.getElementById("search-id__input_email_id");
const id_email_domain = document.getElementById(
  "search-id__input_email_domain"
);
//PW찾기 입력부분
const pw_input_id = document.getElementById("search__pw-input_id");
const pw_input_phone = document.getElementById("search__pw-input-phone");
const pw_input_email_id = document.getElementById("search__pw-input-email-id");
const pw_input_email_domain = document.getElementById(
  "search__pw-input-email-domain"
);

//결과창 부분
const result_title = document.getElementById("search__modal__title");
const result_top = document.getElementById("search__modal__text__top");
const result_middle = document.getElementById("search__modal__text__middle");
const result_bottom = document.getElementById("search__modal__text__bottom");

//임시 값 입력부분
id_input_name.value = "김민재";
id_email_front.value = "minjae";
id_email_domain.value = "naver.com";
pw_input_id.value = "minjae";
pw_input_phone.value = "010-1234-5678";
pw_input_email_id.value = "minjae";
pw_input_email_domain.value = "naver.com";

// 아이디찾기 검증
function id_available() {
  if (id_input_name.value == "") {
    alert("이름을 입력해주세요");
    id_input_name.focus();
    return false;
  } else if (!isName(id_input_name.value)) {
    alert("이름을 확인해주세요 " + id_input_name.value);
    id_input_name.focus();
    return false;
  } else if (id_email_front.value == "") {
    alert("이메일을 입력해주세요");
    id_email_front.focus();
    return false;
  } else if (id_email_domain.value == "") {
    alert("도메인을 입력해주세요");
    id_email_domain.focus();
    return false;
  } else if (!isId(id_email_front.value)) {
    alert("이메일을 확인해주세요");
    id_email_front.focus();
    return false;
  } else if (!isDomain(id_email_domain.value)) {
    alert("도메인을 확인해주세요");
    id_email_domain.focus();
    return false;
  } else {
    console.log("ID찾기 검증완료");
    return true;
  }
}

//PW찾기 검증
function pw_available() {
  if (pw_input_id.value == "") {
    alert("아이디를 입력해주세요");
    pw_input_id.focus();
    return false;
  } else if (!isId(pw_input_id.value)) {
    alert("아이디를 확인해주세요");
    pw_input_id.focus();
    return false;
  } else if (pw_input_phone.value == "") {
    alert("전화번호를 입력해주세요");
    pw_input_phone.focus();
    return false;
  } else if (!isPhone(pw_input_phone.value)) {
    alert("전화번호를 확인해주세요");
    pw_input_phone.focus();
    return false;
  } else if (pw_input_email_id.value == "") {
    alert("이메일을 입력해주세요");
    pw_input_email_id.focus();
    return false;
  } else if (pw_input_email_domain.value == "") {
    alert("이메일을 입력해주세요");
    pw_input_email_domain.focus();
    return false;
  } else if (!isId(pw_input_email_id.value)) {
    alert("이메일을 확인해주세요");
    pw_input_email_id.focus();
    return false;
  } else if (!isDomain(pw_input_email_domain.value)) {
    alert("이메일을 확인해주세요");
    pw_input_email_domain.focus();
    return false;
  } else {
    console.log("PW찾기 검증완료");
    return true;
  }
}

//모달 위치 조정 (화면 정 가운데)
function modal_position() {
  var windowWidth = window.innerWidth;
  var windowHeight = window.innerHeight;

  // 모달의 너비와 높이 구하기
  var modalWidth = modal.offsetWidth;
  var modalHeight = modal.offsetHeight;

  // 모달을 화면 중앙에 위치시키기 (잘안됨) 안씀
}

//뒷면 검게하는거
function darker() {
  var dark = document.getElementById("main__backarea");

  // 화면의 높이와 너비를 구한다.
  var windowWidth = window.innerWidth;
  var windowHeight = window.innerHeight;

  dark.style.width = windowWidth + "px";
  dark.style.height = windowHeight + "px";

  // 뒷 배경을 검게 합니다.
  dark.style.backgroundColor = "rgba(0, 0, 0, 0.8)";
  dark.style.display = "flex";

  //resize
  window.addEventListener("resize", function () {
    windowWidth = window.innerWidth;
    windowHeight = window.innerHeight;
    dark.style.width = windowWidth + "px";
    dark.style.height = windowHeight + "px";
  });
}

function darker_none() {
  var dark = document.getElementById("main__backarea");
  dark.style.backgroundColor = "rgba(0, 0, 0, 0)";
  dark.style.display = "none";
}

//--- 모달 ---
const search_id_btn = document.getElementById("search__id-btn");
const search_pw_btn = document.getElementById("search__pw-btn");

//ID찾기버튼 클릭시,
search_id_btn.addEventListener("click", () => {
  console.log("ID버튼 클릭");
  var result = id_available();
  console.log(result);
  if (result == true) {
    result_title.innerHTML = "아이디 찾기";
    //성공했을 경우,
    //성공 - 일치값 O
    if (current_names.includes(id_input_name.value)) {
      result_top.innerHTML = "고객님의 정보와 일치하는 아이디 목록입니다";
      result_middle.innerHTML = "ghdrlfehd**";
      result_bottom.innerHTML = "";
    } else {
      //성공 - 일치값 X
      result_top.innerHTML = "";
      result_middle.innerHTML =
        "입력하신 정보와 일치하는<br/>아이디를 찾을 수 없습니다";
      result_bottom.innerHTML = "";
    }

    modal_position();
    darker();
    modal.style.display = "block";
  } else {
    //실패했을 경우
    return false;
  }
});

search_pw_btn.addEventListener("click", () => {
  console.log("PW버튼 클릭");
  var result = pw_available();
  console.log(result + "★");
  if (result == true) {
    result_title.innerHTML = "비밀번호 찾기";
    //성공했을 경우,
    //성공 - 일치값 O
    if (current_id.includes(pw_input_id.value)) {
      result_top.innerHTML = "";
      result_middle.innerHTML =
        "입력하신 아이디의 비밀번호가<br/>가입시 입력하신 생년월일로 초기화 되었습니다";
      result_bottom.innerHTML =
        "예) 1970년01월01일 : 19700101<br/>보안을 위해 로그인 후, 비밀번호를 다시 설정해주세요";
    } else {
      //성공 - 일치값 X
      result_top.innerHTML = "";
      result_middle.innerHTML =
        "입력하신 정보와 일치하는<br/>정보를 찾을 수 없습니다";
      result_bottom.innerHTML = "";
    }
    darker();
    modal.style.display = "block";
  } else {
    //실패했을 경우
    return false;
  }
});

//창 닫기
const modal_close_btn = document.getElementById("search__modal__btn");
modal_close_btn.addEventListener("click", () => {
  darker_none();
  modal.style.display = "none";
});
