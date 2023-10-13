<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <style>
      @import url("https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css");

      /* css의 변수 : root
      var(--white) 같이 쓰시면됩니다 */
      :root {
         /* 기본적인 색상 */
        --white: #fff;
        --black: #000;

        /* 네모박스용? 색상 */
        --gray-darker: #404040;
        --gray-light: #e0e0e0;

        /* 포인트컬러 */
        --point-color: #5d16a2;
        --point-red: rgb(192,0,0);
        --point-blue: rgb(0,0,192);

        /* 폰트 사이즈 */
        --default-width: 1200px;
      
        --default-text-size: 16px;
      
        --header-font-size: 24px;
      }

      #header {
        color: var(--white);
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
        width: 100%;
        height: 91px;

        background-color: var(--gray-light);
        border-bottom: var(--gray-darker) 1px solid;
      }

      .container {
		position: relative;
        display: flex;
        width: var(--defalt-width);
        height: auto;
        flex-wrap: nowrap;
        /* border: 1px solid rgb(192, 0, 0); */
      }
      
      

      /* 로고부분 */
      #main_logo {
        position: absolute;
        left: 50%;
        top: 23px;
        transform: translateX(-50%);
        width: 100px;
        height: 50px;
        background-image: url("https://getbootstrap.com/docs/5.3/assets/brand/bootstrap-logo-shadow.png");
        background-position: center;
        background-repeat: no-repeat;
      }
       #movie_ticketing_name_top{

		   border: 1px solid #ddd ;
		   height: 60px;
		   background-color: var(--point-color);
	   }
	   #movie_ticketing_name_top_search{
		   margin:20px;
		   float: right;
		   border: 1px solid #ddd ;
	   }
	   #movie_ticketing_name_search_text{
		   float: right;
	   }
	  #movie_ticketing_cinema{
		  margin: 10px auto;
		  width: 1100px;
		   height:460px; 
	   }
	   #movie_ticketing_cinema_contents{
		   margin:0 auto;
		   width: 1100px;
		   height:400px; 
		   border: 1px solid #5d16a2 ;
		   display: flex;
		   
	   }

	   #movie_ticketing_cinema_zone{
		   width: 100px;
	   }
	   #movie_ticketing_cinema_zone>li{
		   border: 1px solid #ddd ;
		   height: 38px;
		   line-height: 38px;
		   text-align: center;
	   }

	   .check_zone{
		   display: none; 
	   }
	    #movie_ticketing_cinema_name{
		   position: relative; width:610px; border: 1px solid #ddd;height: 600px; overflow: hidden;
	   }
	   .contents{
		   position: relative;display: none;
	   }
	   input[type=radio]{
		   display: none;
	   }
	   
		    #m1:checked~div:nth-of-type(1){display: block;}
			#m2:checked~div:nth-of-type(2){display: block;}
			#m3:checked~div:nth-of-type(3){display: block;}
			#m4:checked~div:nth-of-type(4){display: block;}
			#m5:checked~div:nth-of-type(5){display: block;}
			#m6:checked~div:nth-of-type(6){display: block;}
			#m7:checked~div:nth-of-type(7){display: block;}
			#m8:checked~div:nth-of-type(8){display: block;}
			#m9:checked~div:nth-of-type(9){display: block;}
			#m10:checked~div:nth-of-type(10){display: block;}
      
    .contents{
		margin: 50px;
		font-size: 2em;
	}
	.contents>span:hover{
		background-color: var(--point-color);
		color: var(--white);
	}
	.image-container {
  		text-align: center; /* 이미지 중앙 정렬 */
  		width: 700px;
  		float: left;
  		padding: 10px;
	}

	.image-container img {
		  width: 700px;
		  height: auto; 
		}
		
		/* 텍스트 박스 스타일 */
	.text-box {
			background-color: blanchedalmond;
		    text-align: center;
            width: 1100px;
            padding: 10px;
            box-sizing: border-box;
            border: 2px solid #5d16a2;
            
		}
	.text-box>p{
		text-align: left;
	}
	.text-box h2 {
		  font-size: 24px; /* 텍스트 박스 제목 크기 조정 */
		  color: var(--#5d16a2);
		}
		
	.text-box p {
		  font-size: 16px; /* 텍스트 내용 크기 조정 */
		  color: var(--gray-darker);
		}
	 #map-container {
            width: 400px;
            height: 400px;
            float: right;
            margin: auto;
            padding: 0;
        }
        .info-container {
			display: none;
  			/*justify-content: space-between;*/
  			width: 1100px;
  			height: auto;
  			flex-direction: column;
  			
		}
		.imgmap-container{
			display: flex;
			justify-content: space-between;
			align-items: center;
			width: 1100px;
		}
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCpcK81AEpMVjsqTISn1mDiFpKmyvoWbjc&callback=initMap"async defer></script>
  	<script>
		  $(document).on('click','.contents>span',function(){
			$('#userid2').attr("value",$(this).attr('title'));
			$("span[title ="+$('#userid2').val()+"]").css("border","5px solid var(--point-color) ").css("border-radius", "0.5rem");
			$("span[title !="+$('#userid2').val()+"]").css("border","");
		});
	  </script>
  </head>
  <body>
    <!-- 헤더부분 -->
    <header id="header">
      <div class="haeder_Con">
        <!-- 로고 -->
        <h1 id="main_logo">
          <a href="/" title="메인으로 가기" alt="LOGO"></a>
        </h1>
      </div>
    </header>

    <!-- 내용은 여기부터 작성하시면됩니다 -->
    <div class="container">
		<div id="movie_ticketing_cinema">
			<div id="movie_ticketing_name_top" >
				<div style="float: left;margin:auto 20px; line-height: 60px; color: var(--white); font-size: 2em;">영화관</div>
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
					
				<div class="info-container">
					<div class="imgmap-container"> 
						<div class="image-container">
				        	<img src="img/theater.jpg" alt="극장 이미지" />       
				    	</div>
				    		<div id="map-container"></div>			    
				     </div>
				         <div class="text-box">
				   		<h2>극장 안내</h2><br>
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
				   
				</ul>
					<input type="radio" name="munu" id="m1" value="m1" /checked>
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
		        icon: 'gmap_pin.png'
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