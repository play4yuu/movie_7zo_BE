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

//닉네임 정규식
function isNickname(asValue) {
  var regExp = /^[가-힣a-zA-Z0-9]{2,10}$/;
  return regExp.test(asValue);
}

// ----------------------------------------------------------
const btn = document.querySelector("#join__form-button");

const id = document.getElementById("join__input_id");
const pw = document.getElementById("join__input_pw");
const pw_check = document.getElementById("join__input_pw_re");
const name = document.getElementById("join__input_name");
const phone = document.getElementById("join__input_phone");
const email_id = document.getElementById("join__input_email_id");
const email_domain = document.getElementById("join__input_email_domain");
const nickname = document.getElementById("join__input_nickname");
const sex = document.getElementById("join__form_id");

function join_check() {
  if (id.value == "") {
    alert("아이디를 입력해주세요.");
    id.focus();
    return false;
  } else if (!isId(id.value)) {
    alert("아이디를 확인해주세요.");
    id.focus();
    return false;
  } else if (pw.value == "") {
    alert("비밀번호를 입력해주세요.");
    pw.focus();
    return false;
  } else if (!isPassword(pw.value)) {
    alert("비밀번호를 확인해주세요.");
    pw.focus();
    return false;
  } else if (pw_check.value == "") {
    alert("비밀번호를 확인해주세요.");
    pw_check.focus();
    return false;
  } else if (pw.value != pw_check.value) {
    alert("비밀번호가 일치하지 않습니다.");
    pw_check.focus();
    return false;
  } else if (name.value == "") {
    alert("이름을 입력해주세요.");
    name.focus();
    return false;
  } else if (!isName(name.value)) {
    alert("이름을 확인해주세요.");
    name.focus();
    return false;
  } else if (phone.value == "") {
    alert("전화번호를 입력해주세요.");
    phone.focus();
    return false;
  } else if (!isPhone(phone.value)) {
    alert("전화번호를 확인해주세요.");
    phone.focus();
    return false;
  } else if (email_id.value == "") {
    alert("이메일을 입력해주세요.");
    email_id.focus();
    return false;
  } else if (email_domain.value == "") {
    alert("이메일을 입력해주세요.");
    email_domain.focus();
    return false;
  } else if (!isEmail(email_id.value + "@" + email_domain.value)) {
    alert("이메일을 확인해주세요.");
    email_id.focus();
    return false;
  } else if (nickname.value == "") {
    alert("닉네임을 입력해주세요.");
    nickname.focus();
    return false;
  } else if (!isNickname(nickname.value)) {
    alert("닉네임을 확인해주세요.");
    nickname.focus();
    return false;
  } else if (sex.value == "") {
    alert("성별을 선택해주세요");
    sex.focut();
    return false;
  } else {
    console.log("유효값검증성공");
    return true;
  }
}

btn.addEventListener("click", function () {
  console.log("btn누름");
  //유효값 검증
  var reseult = join_check();
  if (reseult == true) {
    //서버에 전송 + 중복값체크
    //회원가입 성공페이지로 -> 일단은 메인으로
    location.href = "./index.html";
  } else {
    // alert("회원가입에 실패하였습니다");
  }
});

//자동 값채우기 (테스트용)
const auto_btn = document.getElementById("auto_input");
auto_btn.addEventListener("click", function () {
  const test01 = [
    "ghdrlfehd52",
    "123456",
    "123456",
    "홍길동",
    "010-1234-5678",
    "test",
    "naver.com",
    "길동천사",
    "남자",
  ];

  const test02 = [
    "chulsuu9",
    "123456",
    "123456",
    "김철수",
    "010-1234-5678",
    "test",
    "naver.com",
    "철수천사",
    "비공개",
  ];

  const test03 = [
    "qkraudgml99",
    "asdfg1234",
    "asdfg1234",
    "박영희",
    "010-1234-5678",
    "test",
    "nate.com",
    "영희천사",
    "여자",
  ];

  //랜덤 1~3
  var ranNum = Math.floor(Math.random() * 3) + 1;

  var selectedArray;
  if (ranNum === 1) {
    selectedArray = test01;
  } else if (ranNum === 2) {
    selectedArray = test02;
  } else {
    selectedArray = test03;
  }

  // 입력 필드에 값을 할당
  id.value = selectedArray[0];
  pw.value = selectedArray[1];
  pw_check.value = selectedArray[2];
  name.value = selectedArray[3];
  phone.value = selectedArray[4];
  email_id.value = selectedArray[5];
  email_domain.value = selectedArray[6];
  nickname.value = selectedArray[7];
  sex.value = selectedArray[8];
});
