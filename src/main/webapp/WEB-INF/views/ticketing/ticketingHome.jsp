<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<style>
  
  .container{
    flex-direction: column;
  }
  
  #movie_ticketing_name {
    width: 800px;
    height: auto;
    border: 1px solid #ddd;
    /* padding: 0 20px; */
    
    margin: 30px 0;
  }
  .movie_ticketing_name_top {
    height: 60px;
    background-color: var(--point-color);
    display: flex;
    flex-direction: row;
    
    align-items: center;
    justify-content: space-between;
  }
  .movie_ticketing_name_top_search {
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: row;
    
    align-items: center;
    justify-content: center;
    float: right;
    margin-right: 10px;
    /* border: 1px solid #ddd; */
  }
  .movie_ticketing_name_search_text {
    float: right;
    border: none;
    background-color: white;
    
    padding: 5px 3px;
    border-radius: 15px;
  }
  #movie_ticketing_name_search_img {
    float: right;
    width: 20px;
    height: 20px;
    border: 1px solid #000;
    margin-bottom: 0px;
    margin-left: 0px;
    background-color: var(--white);
  }
  #movie_ticketing_name_bottom {
    display: flex;
    width: auto;
    margin: auto;
    height: 300px;
  }
  #poster_screen {
    display: flex;
  }
  .poster {
    width: 170px;
    height: 234px;
    margin: auto 10px;
    border: 1px solid #ddd;
  }
  
  .poster:hover {
    background-color: #ddd;
  }
  
  .contents > span:hover {
    /*background-color: var(--point-color);*/
    /*color: var(--white);*/
    font-weight: bold;
  }
  
  .movie_ticketing_name_top_1 {
    display: flex;
    float: left;
    margin: auto 20px;
    line-height: 60px;
    color: var(--white);
    font-size: 22px;
    font-weight: bold;
  }
  #movie_ticketing_input {
    text-align: center;
    margin-bottom: 50px;
  }
  #movie_ticketing_input_1 {
    padding: 10px 30px;
    margin-top: 30px;
  }
  
  .movie_ticketing_name_top_1 {
    color : white;
  }
  
  #movie_ticketing_input_1 {
    background-color: var(--gray-darker);
    color: white;
    border-radius: 10px;
    font-size: 18px;
    font-weight: bold;
    
  }
  
  #movie_ticketing_name_bottom {
    box-sizing: border-box;
  }

</style>



<div class="container">
  <div id="movie_ticketing_name">
    <div class="movie_ticketing_name_top">
      <div class="movie_ticketing_name_top_1">영화</div>
      <div class="movie_ticketing_name_top_search">
        <span class="material-icons search_icon"> search </span>
        <input class="movie_ticketing_name_search_text" type="text" />
      </div>
    </div>
    <div id="movie_ticketing_name_bottom">
      <div id="poster_screen">
        <c:forEach var="mVO" items="${m4list}">
          <img class="poster" src="${mVO.poster_url }" title="${mVO.movie_id}" alt="poster" />
        </c:forEach>
        
        <!--
			<img class="poster" src="img/jam.webp" title="2" />
			<img class="poster" src="img/venice.jpg" title="3" />
			<img class="poster" src="img/87395_320.jpg" title="4"/ >
		 -->
      
      </div>
    </div>
  </div>
  <div id="movie_ticketing_cinema">
    <div class="movie_ticketing_name_top">
      <div class="movie_ticketing_name_top_1">상영관</div>
      <div class="movie_ticketing_name_top_search">
        <span class="material-icons search_icon"> search </span>
        <input class="movie_ticketing_name_search_text" type="text" />
      </div>
    </div>
    <div id="movie_ticketing_cinema_contents">
      <ul id="movie_ticketing_cinema_zone">
        <li><label for="m1">서울</label></li>
        <li><label for="m2">경기</label></li>
        <li><label for="m3">인천</label></li>
        <li><label for="m4">강원</label></li>
        <li><label for="m5">대전/충청</label></li>
        <li><label for="m6">대구</label></li>
        <li><label for="m7">부산/울산</label></li>
        <li><label for="m8">경상</label></li>
        <li><label for="m9">광주/전라</label></li>
        <li><label for="m10">제주</label></li>
      </ul>
      
      <input type="radio" name="munu" id="m1" value="m1" />
      <input type="radio" name="munu" id="m2" value="m2" />
      <input type="radio" name="munu" id="m3" value="m3" />
      <input type="radio" name="munu" id="m4" value="m4" />
      <input type="radio" name="munu" id="m5" value="m5" />
      <input type="radio" name="munu" id="m6" value="m6" />
      <input type="radio" name="munu" id="m7" value="m7" />
      <input type="radio" name="munu" id="m8" value="m8" />
      <input type="radio" name="munu" id="m9" value="m9" />
      <input type="radio" name="munu" id="m10" value="m10" />
      
      <div class="contents">
        <span title="2"> 강남</span> | <span title="3">이수</span> |
        <span title="4"> 강북 </span>
      </div>
      <div class="contents">
        <span title="5"> 성남</span> |
        <span title="6"> 양평 </span>
      </div>
      <div class="contents">
        <span title="7"> 인천</span> |
        <span title="8"> 부평 </span>
      </div>
      <div class="contents">
        <span title="9"> 강원</span>
      </div>
      <div class="contents">
        <span title="10"> 대전/충청</span>
      </div>
      <div class="contents">
        <span title="11"> 대구</span>
      </div>
      <div class="contents">
        <span title="12"> 부산/울산</span>
      </div>
      <div class="contents">
        <span title="13"> 경상</span>
      </div>
      <div class="contents">
        <span title="14"> 광주/전라</span>
      </div>
      <div class="contents">
        <span title="15"> 제주</span>
      </div>
    </div>
  </div>
  <script>
    function selectCheck(){
      if(document.getElementById("userid1").value===""){
        alert("영화를 선택 하세요..");
        return false;
      }
      if(document.getElementById("userid2").value===""){
        alert("상영관을 입력하세요..");
        return false;
      }
      return true;
    }
  </script>
  
  <div id="movie_ticketing_input">
    <form method="post" action="${pageContext.servletContext.contextPath}/theater/schedule" onsubmit="return selectCheck()">
      <input
              type="hidden"
              id="userid1"
              value="${abcVO.movie_id }"
              size="20"
              maxlength="10"
              name="movie_id"
      
      />
      <input
              type="hidden"
              id="userid2"
              value=""
              size="20"
              maxlength="10"
              name="theater_id"
      />
      <input
              id="movie_ticketing_input_1"
              type="submit"
              name="reg"
              value="예매하기"
      />
    </form>
  </div>
</div>
<script>
  
  //포스터 눌렀을때
  $(document).on("click", "#poster_screen>img", function () {
    $("#userid1").attr("value", $(this).attr("title"));
    $("img[title =" + $("#userid1").val() + "]")
            .css("border", "10px solid var(--point-color) ")
            .css("border-radius", "0.3rem");
    $("img[title !=" + $("#userid1").val() + "]").css("border", "");
  });
  
  //상영관 눌렀을때
  $(document).on("click", ".contents>span", function () {
    $("#userid2").attr("value", $(this).attr("title"));
    $("span[title =" + $("#userid2").val() + "]")
            .css("border", "5px solid var(--point-color) ")
            .css("border-radius", "0.5rem")
            .css("padding", "2px");
            
    $("span[title !=" + $("#userid2").val() + "]").css("border", "");
  });
</script>

    
    