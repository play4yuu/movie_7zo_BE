<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--헤더, 푸터 안보이게하기--%>
<style>
    #header, #footer {
        display: none;
    }

    #idchk_wrap{
        width : 100%;
        height : 100%;

        display : flex;
        flex-direction : column;
        justify-content : center;
        align-items : center;
    }

</style>

<%-------------------------------------------------%>

<div>
	<p> ${id} , ${result} </p>
</div>

<div id="idchk_wrap">
	<h1> 아이디 중복검사
	</h1>
	
	<div>
		
		<c:if test="${result == 0}">
			<p>${id}는 사용할 수 있습니다 </p>
			<input type="button" value="사용하기" />
		</c:if>
		
		<c:if test="${result == 1}">
			<p>${id}는 사용할 수 없습니다 </p>
			
<%--			시간남으면 재입력 검색창 등--%>
		
		</c:if>
	
	
	</div>

</div>