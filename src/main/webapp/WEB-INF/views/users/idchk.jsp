<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--헤더, 푸터 안보이게하기--%>
<style>
    #header, #footer {
        display: none;
    }
</style>

<div>
	<h1> 아이디 중복검사
	</h1>
	
	<hr>
	
	<c:if test="${result <= 1}">
		<h3>사용가능한 아이디입니다.</h3>
	</c:if>
	
	<c:if test="${result == 0}">
		<h3>사용중인 아이디입니다.</h3>
	</c:if>
	
</div>