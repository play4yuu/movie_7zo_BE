<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
    
    /* css의 변수 : root
	var(--white) 같이 쓰시면됩니다 */
    :root {
        /* 네모박스용? 색상 */
        --gray-darker: #404040;
        --gray-light: #e0e0e0;
        
        /* 포인트컬러 */
        --point-color: #5d16a2;
        
        /* 폰트 사이즈 */
        --defalt-width: 1200px;
        --defalt-text-size: 16px;
        --header-font-size: 24px;
    }
    
    #page1,
    #page2 {
        width: 70%;
        height: 100%;
        margin: 0 auto;
    }
    #page2 {
        display: none;
    }
    
    .grid {
        display: grid;
        align-items: center;
        grid-template-columns: repeat(4, 25%);
        grid-gap: 1px;
        list-style-type: none;
        background: #e0e0e0;
    }
    .grid li {
        padding: 10px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        text-align: center;
    }
    .poster{
        width: 100%;
        height: 100%;
        
    }
    #d1 > h2 {
        height: auto;
        /* height: 50px;
		display: flexbox;
		font-size: 2em;
		color: white;
		align-items: center;
		justify-content: center;
		text-align: left;
		margin: 10px 0 0 0;
		padding: 10px 10px;
	  }

	 h2 {
	   height: 50px;
	   font-size: 2em;
	 }

	 .bottombutton {
	   position: fixed;
	   bottom: 10px;
	   right: 10px;
	   z-index: 1;
	 }
	 .bottom-right-button {
	   margin-bottom: 10px;
	 }

	
	 #d1 > h2 {
	   border: 1px solid #5d16a2;
	   background: #5d16a2;
	   font-weight: bold;
	 }
	 .top-s {
	   display: flex;
	   justify-content: space-between;
	   align-items: center;
	   padding: 10px 0;
	 }
	 .bg {
	   display: flex;
	   gap: 10px;
	 }
	 .search-s {
	   display: flex;
	   gap: 10px;
	   align-items: center;
	 }
	 #hr1 {
	   background: #5d16a2;
	   height: 1px;
	   border: 0;
	 }
	
	 #button1,
	 #button2 {
	   border: none;
	   width: 100px;
	   height: 40px;

	   font-size: 20px;
	   font-weight: bold;

	   background-color: white;
	 }
	#movieList {
   /*         padding: 20px 0px; */
    
    
    }
    
    .movie-item {
        position: relative; /* 부모 요소에 대한 상대 위치 설정 */
    }
    
    .movie-id {
        position: absolute;
        top: 0;
        left: 0;
        margin: 0;
        color: #FFD700;
        padding: 5px 10px;
        font-size: 2em;
        font-weight: bold;
    }
    
    /* FE ADD css  */
    .top_title_box {
        width: 840px;
        height: 60px;
        
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        background-color: var(--point-color);
    }
    
    .top_title_box > h2 {
        font-size: 25px;
        font-weight: bold;
        margin : 0 15px;
        color  : white;
    }
    
    .inofo_movie_poster > img {
        width: 100%;
        height: 100%;
    }
    
    .bg {
        margin : 30px 0 15px 0;
    }
    
    .showing_btns {
        width: fit-content;
        height: 40px;
        
        font-size: 25px;
        font-weight: bold;
        
        background-color: rgba(0,0,0,0);
        border: none;
        
    }
    
    .search-s {
        margin : 0 10px;
        display: flex;
        flex-direction: row;
    }
    
    .search-s_input {
        float: left;
        border: none;
        background-color: white;
        padding: 5px 10px;
        border-radius: 15px;
    }
    
    .search-s_submit {
        border : none;
        background-color: var(--gray-light);
        font-size: 13px;
        border-radius: 5px;
        margin-left: 5px;
    }
    
    /*material button setting*/
    .material-button {
        background-color: transparent;
        border: none;
        cursor: pointer;
        display: flex;
        align-items: center;
    }
    
    .material-button i.material-icons {
        font-size: 24px;
        margin-right: 5px;
    }
    
    .material-button:focus {
        outline: none;
    }
    
    #d1 > div.top_title_box > div > button > i {
        color: white;
    }

</style>

<div class="container">

<%-- 큰글씨 넣을 공간 --%>
    
    <div id="page1">
        <div id="d1">
            <div class="top-s">
                <div class="bg">
                    <input
                            type="button"
                            value="상영중"
                            id="button1"
                            class="showing_btns"
                            onclick="showSection('page1')"
                    />
                    <input
                            type="button"
                            value="상영예정"
                            id="button2"
                            class="showing_btns"
                            onclick="showSection('page2')"
                    />
                </div>

            </div>
            <div class="top_title_box">
                <h2>상영중</h2>
                <div class="search-s">
                    <label for="search">
                        <b id="b1" class="search-s_label"></b>
                    </label>
                    <input
                            type="text"
                            placeholder="검색어를 입력하세요"
                            class="search-s_input"
                            id="search"
                    />
                    <button type="submit" class="material-button" onclick="search()">
                        <i class="material-icons">search</i> <!-- 검색 아이콘 -->
                    </button>
                    
                </div>
            </div>
        </div>
        <!--api사진-->
        <ul class="p1 grid">
            <c:forEach var="mVO" items="${movies}" varStatus="status">
                <c:if test="${mVO.movie_id <= 12}">
                    <li style="cursor: pointer">
                        <div class="movie-item" data-movieid="${mVO.movie_id}">
                            <div class="inofo_movie_poster">
                                <img src="${mVO.poster_url}" />
                                <h3 class="movie-id">${status.count}</h3>
                            </div>
                            <div class="inofo_movie_title">${mVO.movie_name}</div>
                        </div>
                    </li>
                </c:if>
            </c:forEach>
        </ul>
    </div>
    
    <div id="page2">
        <div id="d1">
            <div class="top-s">
                <div class="bg">
                    <input
                            type="button"
                            value="상영중"
                            id="button1"
                            class="showing_btns"
                            onclick="showSection('page1')"
                    />
                    <input
                            type="button"
                            value="상영예정"
                            id="button2"
                            class="showing_btns"
                            onclick="showSection('page2')"
                    />
                </div>
            </div>
            
            <div class="top_title_box">
                <h2>상영예정</h2>
                <div class="search-s">
                    <label for="search">
                        <b id="b1" class="search-s_label">
                        
                        </b>
                    </label>
                    <input
                            type="text"
                            placeholder="검색어를 입력하세요"
                            class="search-s_input"
                            id="search"
                    />
                    <button type="submit" class="material-button" onclick="search()">
                        <i class="material-icons">search</i> <!-- 검색 아이콘 -->
                    </button>
                </div>
            </div>
        
        
        </div>
        <!--api사진-->
        <ul class="p2 grid">
            <c:forEach var="mVO" items="${movies}">
                <c:if test="${mVO.movie_id >= 13 && mVO.movie_id <= 24}">
                    <li style="cursor: pointer">
                        <div class="inofo_movie_poster">
                            <img src='${mVO.poster_url}' alt="poster" /></div>
                        <div class="inofo_movie_title">${mVO.movie_name}</div>
                        <div class="inofo_movie_date">개봉일: ${mVO.show_date}</div>
                    </li>
                </c:if>
            </c:forEach>
        </ul>
        <!-- ------------------------------------------------------------------------------------------ -->
    </div>


</div>
<script>
    function showSection(sectionId) {
        document.getElementById("page1").style.display = "none";
        document.getElementById("page2").style.display = "none";
        
        const element = document.getElementById(sectionId);
        if (element) {
            element.style.display = "block";
        }
    }
    
    function search() {
        const search = document.getElementById("search");
        const searchEmpty = search.value.trim();
        
        if (searchEmpty === "") {
            alert("검색어를 입력해 주세요.");
        }
    }
    
    function viewMovieDetails(movie_id) {
        
        const movieDetailURL = `/movie/mymovie/detail?movie_id=${movie_id}`;
        window.location.href = movieDetailURL;
    }
    
    document.addEventListener("DOMContentLoaded", function () {
        const movieItems = document.querySelectorAll(".movie-item");
        movieItems.forEach((item) => {
            item.addEventListener("click", function () {
                const movieId = this.getAttribute("data-movieid");
                viewMovieDetails(movieId);
            });
        });
    });
</script>
