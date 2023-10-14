<%-- 회원가입 닉네임 체크--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    #header, #footer {
        display: none;
    }
</style>

<div id="nickname_chk_wrap">
	
	<h1> 닉네임 중복검사 </h1>
	
	<hr>
	
	<div>
		
		<c:if test="${result == 0}">
			<p> ${nickname}은(는)</p>
			<p>사용하실 수 있습니다</p>
			<button type="button" value="확인"></button>
		</c:if>
		
		<c:if test="${result == 1}">
			<p> ${nickname}은(는)</p>
			<p>사용하실 수 없습니다</p>
			
			<%--다시입력창 구현하기--%>
			
		</c:if>
		
	</div>
	
	<p>
		${result} <br/> ${nickname}
	</p>


</div>