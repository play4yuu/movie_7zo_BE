<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCpcK81AEpMVjsqTISn1mDiFpKmyvoWbjc&callback=initMap"async defer></script>

  	<script>
		  $(document).on('click','.contents>span',function(){
			$('#userid2').attr("value",$(this).attr('title'));
			$("span[title ="+$('#userid2').val()+"]").css("border","5px solid var(--point-color) ").css("border-radius", "0.5rem");
			$("span[title !="+$('#userid2').val()+"]").css("border","");
		});
	  </script>


<div id="movie_ticketing_cinema">
	<div id="movie_ticketing_name_top" >
		<div id="movie_ticketing_name_title">영화관</div>
		<div id="movie_ticketing_name_top_search">
			<input id="movie_ticketing_name_search_text" type="text"/>
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
		
		<input type="radio" name="munu" id="m1" value="m1" checked />
		<input type="radio" name="munu" id="m2" value="m2"/>
		<input type="radio" name="munu" id="m3" value="m3"/>
		<input type="radio" name="munu" id="m4" value="m4"/>
		<input type="radio" name="munu" id="m5" value="m5"/>
		<input type="radio" name="munu" id="m6" value="m6"/>
		<input type="radio" name="munu" id="m7" value="m7"/>
		<input type="radio" name="munu" id="m8" value="m8"/>
		<input type="radio" name="munu" id="m9" value="m9"/>
		<input type="radio" name="munu" id="m10" value="m10"/>
		
		<div class="contents">
			<span title="gangnam"> 강남</span> | <span title="isu">이수</span> | <span title="gangbuk"> 강북 </span>
		</div >
		<div class="contents">
			<span title="seongnam"> 성남</span> | <span title="yangpyeong"> 양평 </span>
		</div>
		<div class="contents">
			<span title="incheon"> 인천</span> | <span title="bupyeong"> 부평 </span>
		</div>
		<div class="contents">
			1111
		</div>
		<div class="contents">
			222
		</div>
		<div class="contents">
			333
		</div>
		<div class="contents">
			1111
		</div>
		<div class="contents">
			222
		</div>
		<div class="contents">
			333
		</div>
		<div class="contents">
			101010
		</div>
	</div>
</div>


<!-- 극장안내 (누르면 나오는 부분) -->
<div class="info-container">
	<div class="theater_detail_title">
		<p>강남점</p>
	</div>
	
	<div class="imgmap-container">
		<div class="image-container">
			<img src="https://img.cgv.co.kr/Theater/Theater/2014/1211/CGVgangnam.jpg" alt="극장 이미지" class="theater_detail_img" />
			<div class="theater_detail_txt">
				<p> 서울특별시 강남구 역삼동 어쩌구 지번주소 어쩌구</p>
				<p> 서울특별시 강남구 강남대로 도로명숫자 (역삼동) </p>
				<p> 1관 / 300석 </p>
			</div>
		</div>
		<div id="map-container"></div>
	</div>
	
	<div class="text-box">
		<h2>교통 안내</h2>
		<p>
			# 지하철<br/>
			- 2호선 강남역 11번 출구 도보 5분<br/>
			- 9호선 신논현역 5번 출구 도보 5분<br/>
			- 신분당선 신논현역 6번 출구 도보 3분<br/><br/>
			
			# 버스<br/>
			- 간선버스 : 140, 144, 145, 146, 360, 400, 402, 420, 421, 440, 441, 452, 470, 542, 640, 643, 741<br/>
			심야) N13, N31, N37, N75<br/>
			- 지선버스 : 3412, 4312, 8146, 8541<br/>
			- 광역버스 : 1005, 1100, 1101, 1151, 1241, 1311, 1311B, 1550, 1550-1, 1551, 1551B, 1552, 1560, 1570, 1700, 2000, 2000-1,<br/>
			3008, 3030, 3100, 3401, 3600, 4403, 5001, 5001-1, 5002A, 5002B, 5003A, 5003B,5006, 5100, 5200, 5300, 6001, 6002, 6002-1,<br/>
			6004, 6427, 6600, 7007, 8001, 8502, 9004, 9202, 9303, 9400, 9404, 9408, 9409, 9500, 9501, 9600, 9700, 9711, 9800, 9802,<br/>
			G5100,G7426, M4403, M4434, M4448, M4449, M5422, M5438, M6427, M7412, P9201, 이음2
			심야) 1101N, 3100N<br/>
			- 마을버스 : 서초03<br/>
			- 공항버스 : 6009<br/>
		</p>
	</div>
</div>


<script>
		var map, marker;

		function initMap() {
		    // 지도 초기화
		    map = new google.maps.Map(document.getElementById('map-container'), {
		        center: {lat: 37.123, lng: 127.456},
		        zoom: 15
		    });
		    
		    // 초기 마커 생성
		    marker = new google.maps.Marker({
		        position: {lat: 37.123, lng: 127.456},
		        map: map,
		        title: '강남점',
		        // icon: 'gmap_pin.png'
			    // 임시로 넣은 pin 아이콘입니다!! 원하시는걸로 수정해주세요 (파일위치를 못잡겠어서 링크로 추가했습니다 - 연주
			    icon : 'https://play-lh.googleusercontent.com/5WifOWRs00-sCNxCvFNJ22d4xg_NQkAODjmOKuCQqe57SjmDw8S6VOSLkqo6fs4zqis=w50-h70-rw'
		    });
		}
		
		document.querySelector('span[title="gangnam"]').addEventListener('click', function() {
		    // 마커 위치 변경
		    marker.setPosition(new google.maps.LatLng(37.123, 127.456));
		
		    const infoContainer = document.querySelector('.info-container', '.text-box');
      
		    if (infoContainer.style.display === 'none' || infoContainer.style.display === '') {
		        infoContainer.style.display = 'flex';
		    } else {
		        infoContainer.style.display = 'none';
		    }
		});
	</script>