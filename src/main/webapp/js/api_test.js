// 필요한 라이브러리를 불러옵니다.
// const axios = require("axios");

// 현재 날짜를 가져옵니다.
var date = new Date();

// 발급받은 API 키를 변수에 저장합니다.
const apiKey = "523d637badfe6b6d7beab4f72302ba1a";

// 조회 날짜 (yyyymmdd 형식) (기본값: 어제 날짜)
//월이나 일이 한자리 수인 경우 앞에 0을 붙여줍니다.
const year = date.getFullYear();
var month = date.getMonth() + 1;
if (month < 10) {
  month = "0" + month;
}

var day = date.getDate() - 1;
if (day < 10) {
  day = "0" + day;
}
var formattedDate = `${year}${month}${day}`;

console.log(formattedDate);

const itemPerPage = "3";

const apiUrl = `http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=${apiKey}&targetDt=${formattedDate}&itemPerPage=${itemPerPage}`;

console.log(apiUrl);

// -------------------------------------------

const headers = {
  Accept: "application/json",
};

fetch(apiUrl)
  .then((response) => response.json())
  .then((data) => {
    const result = data.boxOfficeResult.dailyBoxOfficeList;
    console.log(result);
    var movie_title = [];
    var movie_poster = [];

    for (var i = 0; i < result.length; i++) {
      movie_title.push(result[i].movieNm);
      movie_poster.push(result[i].posterUrl);
    }
    console.log(movie_title);
    console.log(movie_poster);

    var titles = document.getElementsByClassName("main__moviceList__title");
    for (var i = 0; i < movie_title.length; i++) {
      titles[i].textContent = movie_title[i];
    }
  })
  .catch((error) => console.log(error));

// ----------------------------KMDB

const kmdb_key = "9XI8H21X7FQ0O7WU8O48"; //반려중
url = `http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_xml2.jsp?collection=kmdb_new2&detail=N&director=%EB%B0%95%EC%B0%AC%EC%9A%B1&ServiceKey=${kmdb_key}`;
