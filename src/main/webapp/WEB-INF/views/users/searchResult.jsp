<%--아이디/비밀번호 찾기 결과 확인용 창--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
    #header, #footer {
        display: none;
    }
</style>

<div class="result_wrap hidden">
	<p>들어온 값 확인하고싶다... 어떻게 하더라...</p>
	
	<p>name : ${name}</p>
	<p>email : ${email}</p>
	
	<p>찾아낸 아이디 : ${result_id}</p>

</div>


<div id="search__modal__con" class="">
	<!-- 타이틀 -->
	<div id="search__modal__title">
		
		<c:if test="${search_type == 'id'}">
			아이디 찾기
		</c:if>
		
		<c:if test="${search_type == 'pw'}">
			비밀번호 찾기
		</c:if>
	
	</div>
	
	<hr class="search__modal__hr" />
	<!-- 내용 -->
	<div id="search__modal__textwrap">
		<p id="search__modal__text__top">
			
			<c:if test="${search_type == 'id'}">
				고객님의 정보와 일치하는 아이디의 목록입니다
			</c:if>
			
			<c:if test="${search_type == 'pw'}">
				고객님이 입력하신 정보와 일치하는 비밀번호입니다
			</c:if>
			
			<c:if test="${null}">
				에러
			</c:if>
			
		</p>
		
		<%--중간 굵은 텍스트 부분 --%>
		<p id="search__modal__text__middle">
			
			<%--결과 id가 존재하면--%>
			<c:if test="${result_id != null}">
				${result_id}
				</c:if>
				
				<c:if test="${result_pw != null}">
<%--					${result_pw}--%>
					
					<c:set var="masked_pw" value="${fn:substring(result_pw, 0, fn:length(result_pw)-2)}**" />
					${masked_pw}
					
				</c:if>
				
				<c:if test="${ result_id == null && result_pw == null }">
				입력하신 정보와 일치하는<br/> 정보를 찾을 수 없습니다
			</c:if>
		
		</p>
		
		<p id="search__modal__text__bottom">
		</p>
	</div>
	
	<button id="search__modal__btn">확인</button>

</div>

<script>

    //확인 누르면 닫힘
    $("#search__modal__btn").click(function(){
        self.close();
    });

</script>