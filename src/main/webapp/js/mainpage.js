var sitemap = document.getElementById("main__sitemap");
var header__menu_btn = document.getElementById("header__icon__menu");
sitemap.style.display = "none";

function main_menu_toggle() {
  console.log("main_menu_toggle 실행됨");

  if (sitemap.style.display == "none") {
    sitemap.style.display = "flex";
  } else {
    sitemap.style.display = "none";
  }
}

header__menu_btn.addEventListener("click", main_menu_toggle);

// -----------------------------------------------------------
// GNB 바 컨트롤하는 부분

// const gnb = document.getElementById("gnb");
const gnb_bar = document.getElementById("header_gnb_bar");
gnb_bar.classList.add("hidden");

const m1_son = document.getElementById("header__d1");
const m2_son = document.getElementById("header__d2");
const m3_son = document.getElementById("header__d3");
const m4_son = document.getElementById("header__d4");

const m1 = document.querySelector("#h_m_1 > a");
const m2 = document.querySelector("#gnb > ul > li:nth-child(2) > a");
const m3 = document.querySelector("#gnb > ul > li:nth-child(4) > a");
const m4 = document.querySelector("#gnb > ul > li:nth-child(5) > a");

m1_son.style.display = "none";
m2_son.style.display = "none";
m3_son.style.display = "none";
m4_son.style.display = "none";

m1.addEventListener("mouseover", function () {
  console.log("1");
  // m1_son.classList.remove("hidden");
  gnb_bar.classList.remove("hidden");
  m1_son.style.display = "flex";
  m2_son.style.display = "none";
  m3_son.style.display = "none";
  m4_son.style.display = "none";
});

m2.addEventListener("mouseover", function () {
  console.log("2");
  gnb_bar.classList.remove("hidden");
  m1_son.style.display = "none";
  m2_son.style.display = "flex";
  m3_son.style.display = "none";
  m4_son.style.display = "none";
});

m3.addEventListener("mouseover", function () {
  console.log("3");
  gnb_bar.classList.remove("hidden");
  m1_son.style.display = "none";
  m2_son.style.display = "none";
  m3_son.style.display = "flex";
  m4_son.style.display = "none";
});

m4.addEventListener("mouseover", function () {
  console.log("4");
  gnb_bar.classList.remove("hidden");
  m1_son.style.display = "none";
  m2_son.style.display = "none";
  m3_son.style.display = "none";
  m4_son.style.display = "flex";
});

const gnbBar = document.querySelector("#header_gnb_bar");
document.addEventListener("mousemove", function (e) {
  const mouseY = e.clientY;
  const m1_son = document.querySelector("#h_m_1 > div > ul");

  // #header_gnb_bar의 클래스 목록에 hidden 클래스가 없고,
  // y 좌표가 30px에서 121px 사이에 없는 경우 hidden 클래스를 추가합니다.
  if (!gnbBar.classList.contains("hidden") && (mouseY < 35 || mouseY > 121)) {
    // hidden 클래스를 추가합니다.

    gnbBar.classList.add("hidden");
    m1_son.style.display = "none";
    m2_son.style.display = "none";
    m3_son.style.display = "none";
    m4_son.style.display = "none";
  }
});


// 주석달거지렁