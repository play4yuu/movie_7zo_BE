<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
	#login{
		width: 560px;
		margin: 100px auto;
		border: 1px solid #ddd;
		/*정렬(float)을 하면 테두리를 벗어나는데, overflow: auto를 이용해 안에 넣을 수 있다.*/
		overflow: auto;
	}
	#login::-webkit-scrollbar{
		display: none;
	}
	#login>h1{
		text-align: center;
		padding: 50px 0px;
		background-color: greenyellow;
	}
	#logfrm{
		margin: 0;padding: 0px; list-style-type: none;
	}
	#logfrm li{
		margin:10px 0;
	}
	#userid,#userpwd{
		width: 90%;padding: 20px 4%;
	}
	input[type=submit]{
		width: 100%;height: 60px;background-color: blue;
		color: #fff; text-align: center; font-size: 1.2em;
	}
	
</style>
<script>
	function loginCheck(){
		if(document.getElementById("userid").value==""){
			alert("아이디를 입력후 로그인 하세요..");
			return false;
		}
		if(document.getElementById("userpwd").value==""){
			alert("비밀번호를 입력하세요..");
			return false;
		}
		return true;
	}
</script>

<div id="login"> 
	<h1>로그인 폼</h1>
	<form method="post" action="${pageContext.servletContext.contextPath}/users/loginOk" onsubmit="return loginCheck()">
		<ul id="logfrm">
			<li><input type="text" name="userid" id="userid" placeholder="아이디()" 
			minlength="5" maxlength="15"/></li>
			<li><input type="password" name="userpwd" placeholder="비밀번호()" id="userpwd"/></li>
			<li><input type="submit" value="로그인"/></li>
			<li style="float: left; width: 50%;"><input type="button" value="회원가입" onclick="#"/></li>
			<li style="float: left; width: 50%; text-align: right;">
				<a href="#">아이디/비밀번호 찾기</a>
			</li>
		</ul>
	</form>
</div>
