//=== 아이디 찾기부분 JS파일입니다===");

// 기동시 실행되는 부분
const modal = document.getElementById("search__modal__con");
window.onload = function () {
  modal.style.display = "none";
};

// ------------------------------------------------------

//ID찾기 입력부분
const id_input_name = document.getElementById("search-id__input_name");
const id_input_email = document.getElementById("search-id__input_email");
const id_search_btn = document.getElementById("search_id_submit");

//PW찾기 입력부분
const pw_search_id = document.getElementById("search__pw-input_id");
const pw_search_phone = document.getElementById("search__pw-input-phone");
const pw_search_email = document.getElementById("search-pw__input_email");

//결과창 부분
const result_title = document.getElementById("search__modal__title");
const result_top = document.getElementById("search__modal__text__top");
const result_middle = document.getElementById("search__modal__text__middle");
const result_bottom = document.getElementById("search__modal__text__bottom");

//ID찾기 검증
function id_available() {
    //이름 검증
    if (id_input_name.value === "") {
        alert("이름을 입력해주세요");
        id_input_name.focus();
        return false;
    } else if (!isName(id_input_name.value)) {
        alert("이름을 정확히 입력해주세요");
        id_input_name.focus();
        return false;
    }

    //이메일 검증
    if (id_input_email.value === "") {
        alert("이메일을 입력해주세요");
        id_input_email.focus();
        return false;
    } else if (!isEmail(id_input_email.value)) {
        alert("이메일을 정확히 입력해주세요");
        id_input_email.focus();
        return false;
    }

    return true;
}

//PW찾기 검증
function pw_available() {
    //아이디 검증
    if (pw_search_id.value === "") {
        alert("아이디를 입력해주세요");
        pw_search_id.focus();
        return false;
    } else if (!isId(pw_search_id.value)) {
        alert("아이디를 정확히 입력해주세요");
        pw_search_id.focus();
        return false;
    }

    //전화번호 검증
    if (pw_search_phone.value === "") {
        alert("전화번호를 입력해주세요");
        pw_search_phone.focus();
        return false;
    } else if (!isPhone(pw_search_phone.value)) {
        alert("전화번호를 정확히 입력해주세요");
        pw_search_phone.focus();
        return false;
    }

    //이메일 검증
    if (pw_search_email.value === "") {
        alert("이메일을 입력해주세요");
        pw_search_email.focus();
        return false;
    } else if (!isEmail(pw_search_email.value)) {
        alert("이메일을 정확히 입력해주세요");
        pw_search_email.focus();
        return false;
    }

    return true;
}


// ================================================




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

/* === FE용 임시 코드 ===
//--- 모달 ---
const search_id_btn = document.getElementById("search__id-btn");
const search_pw_btn = document.getElementById("search__pw-btn");

//ID찾기버튼 클릭시,
search_id_btn.addEventListener("click", () => {
  console.log("ID버튼 클릭");
  var result = id_available();
  console.log(result);
  if (result === true) {
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
  if (result === true) {
    result_title.innerHTML = "비밀번호 찾기";
    //성공했을 경우,
    //성공 - 일치값 O
    if (current_id.includes(pw_input_id.value)) {
      result_top.innerHTML = "";
      result_middle.innerHTML =입시 입력하신 생년월일로 초기화 되었습니다";
      result_bottom.innerHTML =
        "예) 1970년01월01일 : 19700101<br/>보안을 위해 로그인 후, 비밀번호를 다시 설정해주세요";
    } else {
      //성공 - 일치값 X
      result_top.innerHTML = "";
      result_middle.innerHTML =
        "입력하신 정보와 일치하는<br/>정보를 찾을 수 없습니다";
      result_bottom.innerHTML = "";
    }
    "입력하신 아이디의 비밀번호가<br/>가
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

//창 닫기
 */