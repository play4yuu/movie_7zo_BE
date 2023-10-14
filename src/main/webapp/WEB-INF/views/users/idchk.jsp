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

<div class="chk_wrap">
	
	<div class="duplicate_title_wrap">
		<h1 class="duplicate_title">
			아이디 중복검사
		</h1>
	</div>
	
	<div class="chk_txt_wrap1">
		<c:if test="${result == 0}">
			<p class="duplicate_insert"><strong>${id}</strong>는 사용할 수 있습니다 </p>
			<input type="button" value="사용하기" class="chk_form-button" id="use_id_btn" />
		</c:if>
		
		<c:if test="${result == 1}">
			<p class="duplicate_insert"><strong>${id}</strong>는 사용할 수 없습니다 </p>
		</c:if>
		
		<%--	<hr class="duplicate_hr">--%>
		
		<div>
			<form action="idchk" method="get" onsubmit="return check()">
				<input type="text" name="id" id="input_id" />
				<input type="submit" value="중복확인" id="input_id_chk_btn" class="chk_form-button" />
			</form>
		</div>
		
		<input type="button" value="닫기" class="chk_form-button"  onclick="self.close()" />
	
	</div>

</div>

<script>

    //유효성검사
    function isId(asValue) {
        var regExp = /^[a-zA-Z0-9]{4,12}$/;
        return regExp.test(asValue);
    }

    const input_id = document.getElementById("input_id");
    const btn = document.getElementById("input_id_chk_btn");

    function check() {
        if (!isId(input_id.value)) {
            alert("아이디는 영문자, 숫자 4~12자리로 입력해주세요");
            input_id.focus();
            return false;
        } else if (input_id.value === "") {
            alert("아이디를 입력해주세요");
            input_id.focus();
            return false;
        } else {
            return true;
        }
    }

    const use_id_btn = document.getElementById("use_id_btn");
    use_id_btn.addEventListener("click", function(){
        opener.document.getElementById("join__input_id").value='${id}';
        opener.document.getElementById("join__input_id").readOnly=true;
        opener.document.getElementById("join__input_id").style.backgroundColor="#e9ecef";
        opener.$("#id_chk").val("Y");
        self.close();
    });


</script>