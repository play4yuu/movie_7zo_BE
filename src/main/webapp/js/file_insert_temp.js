//메인페이지 포스터 이미지 및 영화 제목 삽입하는 임시JS 스크립트

// 포스터 이미지 URL 배열
// var movie_poster = [
//   "https://i.namu.wiki/i/BoKHKbC6oKeSjabXorY6CVVtAbpcYjwRWH2kUUN6HRrKYkHzjcHlKZUv6Oce3bLL8wjuM-LR0WHaoF9fZgp8G6yue5FEkufpa8p7C20TdIEz792TI-hB-CYcFY08qU-5r6_pxxMGqZKP15LAJ4qmSw.webp",
//   "https://i.namu.wiki/i/HLnH9GNshUTnqgE4jJ2pby8n8fy1VATz7FY9M4kJXw2iYLQuHSleJDTMqnshy3UPYlcuCJRniQHm2zUg9m8aX9JtQh6vWtT7lxx9LD13w-wZr_pk_pH53KSnCuRWcXbwfzr1aGpNv9ab6FfcwDUzFQ.webp",
//   "https://i.namu.wiki/i/Vs1wudSub1-gN6E9jJojoyh2583hYkCCUXDX5vXRnMXlAdskylj9Ptr2l68G1RIcw5ABhTHYZTr--Nldvku7Z_Q64E0jJFW68QioHSdwdZNMZl3SJ6Jd1T_im8raJATwy523JAwLRv9vWoIdwQwzNQ.webp",
// ];

// var movie_title = [
//   "도라에몽 지구교향악",
//   "도라에몽 진구와 하늘의 유토피아",
//   "JS값넣기 테스트",
// ];

// // 페이지가 로드되면 포스터 이미지 삽입 함수 호출
// window.addEventListener("load", insert_posters_and_titles);

// // 포스터 이미지 및 영화 제목 삽입 함수
// function insert_posters_and_titles() {
//   var posters = document.getElementsByClassName("main__movieList__image");
//   var titles = document.getElementsByClassName("main__moviceList__title");

//   for (var i = 0; i < posters.length; i++) {
//     posters[i].style.backgroundImage = "url(" + movie_poster[i] + ")";
//     titles[i].textContent = movie_title[i];
//   }
// }

// ------------------------------------------------

//메인페이지 포스터 이미지 및 영화 제목 삽입하는 임시JS 스크립트

// 포스터 이미지 URL 배열
var movie_poster = [
  "https://i.namu.wiki/i/E6R3TNGpXqi4yUiLdPsUEciKrvfqIgqTBdN7BOXPMh8R3Deq1wR5AjbUEchljV0_i738w0vRk935WtmwnJRkZPJxPYEqiQRqLV17ZO-NJUBQxXxabwtLYGOHYDCoLU-Gj3x2Tu2EcrLijFLret8TOQ.webp",
  "https://i.namu.wiki/i/WYr74MfzAmdHL7P4xOVsz4jkgYre0O6XEdKlhbYmpAFI5vc66Vk8BHunotEP05ySmmAYjmQOaOEmGL27FqNlO9tqWCIeWf4a_QjsFPwp3-ZzgnKkoZRNHGgT-3kE09Wc4BRwoHy0l5aezUwL80S-xg.webp",
  "https://i.namu.wiki/i/U3gD6m5wifmW5i3PVQmjBltwFGxlS50rS4VoFsVag9UKEIpxKxG_HZwZkjuBSipNC-UN7TzWMVw2BTNcwuKGZucpJHa7cfwVur6c_bRmplp8hzgUPRXOUE3mUe-_8ntMwAjlO8WVOPb4CyuaDNfJqw.webp",
  "https://i.namu.wiki/i/mwOK_QJSDCMnSwMpg-ek2gzQyCANKo07zRJBAwEQxbVDIB1a4DGYfFPG18TGwcFH_WGdVwJTmtA9Vxp2Hv96T-uQoOCxNqUualRbJdsDJjjSjG2h9bMkw7MvNDo5djGNX2im_h90rMU6WtQVOsliKw.webp",
  "https://i.namu.wiki/i/cs3xaLROQznQRATLP2hAts-_0vpIergnpTPiGIMW_skfseaRFSELA2rFpM0e2P5JvgN0BO7Ka7UAGhGPK_tfjc2w2RIZObFrhDzGI3mXnOJ4A4ABsMI--Kgi_IrJAxzRtyJC678xAQ0XGzyXCMqNfQ.webp",
  "https://i.namu.wiki/i/tUJcxf4-2y8OiWJsTJkn8OZe6d5-n1cvzunI2wJh4_jzYGqQP_WObZboZ_CIF-6QjSXX8ApqP_e1FSWk9JiN0EkEFKuMVd6oynw_KEKUfToD3vNPaoiuEFCkI0gQ7BEv55V12pswzqPtjut3Tnv7vA.webp",
  "https://i.namu.wiki/i/IFetVqNOpUlRmz8hyVgTvSsqUcanq8nfY1s0CyAJJOXxCGUu-k_ENxh7agH1tODXEY2UFDnh2yWJNbgxEkEpCyD132cTI1ZCUpBT8yK9aSJZLwv4vfdlsa22Uj8SxCKco8QVuxsqpWtKxv0YVpcHKA.webp",
  "https://i.namu.wiki/i/XrUGpSROlmQpCjyeU62gG1m2Zq42-SS6iGSVT_TYDocad2DOTwe6_RwMEiFQpNRk5nasZw927UzZMegCvcspOzihXNE4ui-8OCYpBEg3x6Q3D_B7kqiSADPniKqNY9xOSdZB9LukFRK1TriKyaoTqg.webp",
  "https://i.namu.wiki/i/187UmtG2GUlPX020ZUZ30kai4s2rius4c83bPkssZlnrWi7ExPAuwSSAwuKt_TBAGQ_gEXJllx3zG5W9JqVHDyGZtM_hJOGGAxHl0NYmfdDkqMZz9Nw8rIG0HiFoM8Ls4YXK7wnHBQXbRN-IFVigug.webp",
  "https://i.namu.wiki/i/oHDm2TNu-CGhhPv4dC50z4SLsYa29S8qj0szg22C4lRV1mqVcQIM76_LN4Bw_fZu76X8ikmDnFNlfa8XPrfzjo2jTpyzMTpYNkX_my9uQkYHvltKIjaIf-SF5S-Ix7eKseNjtQFJSgevXcdrqiUW2g.webp",
  //10
  "https://i.namu.wiki/i/0xc7g52McHDWWHEu23ttvHTN0wczEW-dbUsVRCdsD_paysP0eh4heIfL1UbMSuUiYIQ_exLui9fb3nCTxzMY4unbc7vsvOdskxxzktgJSV_a7hbJtRbBN0A7OZxr4QTi7qJ4Euv1HLrCqdTXNs6DQg.webp",
  "https://i.namu.wiki/i/Mc3zjPy0Qni603MJzx23mDXiJpW4mDi6vE1TYvsGrzQpfe4_HFQouUwbImRM6znJOLuCcbpDkvKP0lZUoJljihZUZqtbJbtzWEuA2wDcOOxu23RWxHbRBci5LCPs-qLAc9O2miQtwwrZKK0VpKwoJw.webp",
  "https://i.namu.wiki/i/B23e2FBB-eT-l9Ky3vEKVowj197cvPfNn238CKhsDbUcivPLnotT2U5zW_pYm4kfH8PYhCTFGfWmoaIsx6MR5MFASddxci8_z9aRoPNjGmVfS9fdRgM4bm71Hu5kwoM7V4kgiRNn1FFL-OowV_-pag.webp",
  "https://i.namu.wiki/i/vfeSXp5sSFueuvq7LY6twPhDm8-UO6n-irQQqcyzPNFrFNXKjQRQngovX19qhFgo3uax0PzmAN0J8NcM3R7nBGlO41Kl3_HK8Z1o5XN8CasM7GJuLZbpbiv2xBx1bPcJTmuiHn9HySg05uT5pAy5fw.webp",
  //상영예정작
  "https://i.namu.wiki/i/0nydzkEAfAHwGYffYrjneh8xnUrJ1ajXq3Y8-B0x-QJz8WhS7iiwWqKY8NW6yslLV6POtGPCFEf8KA2yXHdgsrUUhvK_TnpYGteloGfRsBzREpweuxG1bUmGhfedWWd61plGAwEN04xPZ-IB8w3K1w.webp",
  "https://i.namu.wiki/i/VkgEmPrILT8puBXZY-mNZAT8AGigPKRt4WuOivoQ8gTx2yPxYmoFs6ZdDvgb6i6VU_Bz8PVxWThcYGbtcTQjTggrJaChOQVYMVCr2LzUUAs90bzj9_FagOx31NtOiFJbHEsiebBPgpP75zLRMBlZTQ.webp",
  "https://i.namu.wiki/i/58f49JRveYzeziNfJ7EpvIJQtpyCd4srYSvz9T7ow1xHO4AdFX8RRBEcZVg5veQrzsiI1AORk7_MCt6FSfMmq_o0HzGsUu6CFyLlr101G42AAYCB3wi8WPla7IBHhbeLe-IYBKCPa3G_2I0JP53obg.webp",
  "https://i.namu.wiki/i/UwgMPJITOA56vRGfL9GQPGq5JYfB2TdIyg_veqFFGAn-8gaOBz3aeekK1IgK0ejfsZWkDZMO3VzpMORIbR7kYYBe2eCwNGyTY_p4drN4BJxER_QSv6w-guhGyReP9SiMVMx91_HonrXaRUL7_EgWGg.webp",
  "https://i.namu.wiki/i/aKD_ejgZviELh9b29akhT3VKMMv-BHm0Py2EwXg7sLTng8ZTgYxuVAjrTdOj8F45bFQKaNKJzyaBLXCnsmRg_pE2bLD16rM-zdcIHkvE2ySAD7Vw3LLtRrYsLUaN5Pc8pBvyQ6XLRfSQsWF6fsQ-lA.webp",
  "https://i.namu.wiki/i/ODBq_w8Og4UUtFHsZapuXjXmlSjA5H1MLRi5JrSYL03ZM7ghEKetVlGO_W421lM4W7m9P39iQSsJ_mKQdBEZ_C_Ay98lZ-n95-2VAxeeW_I47MW9xH6WTgxMoD8XBk4Qz1utcUfu6xYRHDYPXKA9hA.webp",
];
var movie_title = [
  "오펜하이머",
  "잠",
  "베니스 유령 살인사건",
  "달짝지근해: 7510",
  "더 퍼스트 슬램덩크",
  "콘크리트 유토피아",
  "타겟",
  "스즈메의 문단속",
  "엘리멘탈",
  "밀수",
  //10
  "해리 포터와 혼혈 왕자",
  "명탐정코난-흑철의 어영",
  "바비",
  "스파이 코드명 포춘",
  //상영예정작
  "아이유 콘서트 : 더 골든 아워",
  "여름을 향한 터널, 이별의 출구",
  "어파이어",
  "그란 투리스모",
  "가문의 영광-리턴즈",
  "천박사 퇴마 연구소-설경의 비밀",
];

// 페이지가 로드되면 포스터 이미지 삽입 함수 호출
window.addEventListener("load", insert_posters_and_titles);

// 포스터 이미지 및 영화 제목 삽입 함수
function insert_posters_and_titles() {
  var posters = document.getElementsByClassName("main__movieList__image");
  var titles = document.getElementsByClassName("main__moviceList__title");

  for (var i = 0; i < posters.length; i++) {
    posters[i].style.backgroundImage = "url(" + movie_poster[i] + ")";
    titles[i].textContent = movie_title[i];
  }
}

// ------------------------------------------------
