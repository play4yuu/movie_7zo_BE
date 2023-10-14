<%-- 회원가입 닉네임 체크--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    #header, #footer {
        display: none;
    }
</style>

<div class="chk_wrap">
	
	<div class="duplicate_title_wrap">
		<h1 class="duplicate_title">
			닉네임 중복검사
		</h1>
	</div>
	
	
	<div class="chk_txt_wrap1">
		<c:if test="${result == 0}">
			<p><strong>${nickname}</strong>은(는) <br/>
			사용하실 수 있습니다</p>
			<button type="button" id="use_nick_btn" class="chk_form-button" >사용하기</button>
		</c:if>
		
		<c:if test="${result == 1}">
			<p><strong>${nickname}</strong>은(는)  <br/>
				사용하실 수 없습니다</p>
		</c:if>
		
		<div>
			<form action="nicknamechk" method="get" onsubmit="return checkForm()">
				<input type="text" name="nickname" id="input_nickname" placeholder="닉네임을 입력해주세요">
				<input type="submit" value="중복확인" id="in_nick_btn" class="chk_form-button" >
			</form>
		</div>
		
		<input type="button" value="닫기" class="chk_form-button" onclick="self.close()">
	
	</div>

</div>

<script>

    function isNickname(asValue) {
        var regExp = /^[a-zA-Z0-9가-힣]{2,10}$/;
        return regExp.test(asValue);
    }

    const input_nick = document.querySelector("#input_nickname");
    const in_nick_btn = document.querySelector("#in_nick_btn");

    function checkForm() {
        let nick = input_nick.value;
        console.log(nick);
        if ( !isNickname(nick)) {
            alert("닉네임은 2~10자의 한글, 영문, 숫자만 사용 가능합니다.");
            input_nick.focus();
            return false;
        } else if (nick==="") {
            alert("닉네임을 입력해주세요.");
            input_nick.focus();
            return false;
        } else {
            //form 제출
            return true;
        }
    }

    const use_btn = document.getElementById("use_nick_btn");
    use_btn.addEventListener("click", function (){
        opener.document.getElementById("join__input_nickname").value = '${nickname}';
        opener.document.getElementById("join__input_nickname").readOnly = true;
        opener.document.getElementById("join__input_nickname").style.backgroundColor="#e9ecef";
        opener.document.getElementById("nick_chk").value = 'Y';
        self.close();
    });

</script>