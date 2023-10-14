<%--아이디/비밀번호 찾기 결과 확인용 창--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
	#header, #footer {
		display: none;
	}
</style>

<div class="result_wrap">
	<p>들어온 값 확인하고싶다... 어떻게 하더라...</p>
	
	<p>name : ${name}</p>
	<p>email : ${email}</p>
	
	<p>찾아낸 아이디 : ${result_id}</p>
	
</div>


<div id="search__modal__con" class="">
	<!-- 타이틀 -->
	<div id="search__modal__title">아이디 찾기</div>
	<hr class="search__modal__hr" />
	<!-- 내용 -->
	<div id="search__modal__textwrap">
		<p id="search__modal__text__top">입력하신 정보 어쩌구</p>
		<p id="search__modal__text__middle">ghdrlfehd**</p>
		<p id="search__modal__text__bottom">어쩌구 저쩌구 샬라샬라</p>
	</div>
	<button id="search__modal__btn">확인</button>
</div>

<script>
	
	
	//확인 누르면 닫힘
	$("#search__modal__btn").click(function(){
		self.close();
	});
	
</script>