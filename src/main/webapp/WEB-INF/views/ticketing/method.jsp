<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <style>
        body {
            font-family: Arial;
            background-color: #ddd;
        }

        .container {
            width: 400px;
            margin: 0 auto;
       		padding: 20px;	  
            background-color: #fff;
            box-shadow: 0 0 10px #000;
        }

        h1 {
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"],
        input[type="number"],
        select {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: mediumblue;
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 5px;
            
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
    
        <div class="container">
        <h1>영화 결제</h1>
        <form action="#" method="post">
            <label for="name">이름:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">이메일:</label>
            <input type="email" id="email" name="email" required>

            <label for="card">신용카드 번호:</label>
            <input type="number" id="card" name="card" required>

            <label for="expiry">만료일:</label>
            <input type="text" id="expiry" name="expiry" placeholder="MM/YY" required>

            <label for="cvv">CVV:</label>
            <input type="number" id="cvv" name="cvv" required>

            <label for="country">국가:</label>
            <select id="country" name="country" required>
				<option value="kor">한국</option>
                <option value="us">미국</option>
                <option value="ca">캐나다</option>
                <option value="uk">영국</option>
                <!-- 기타 국가 옵션 추가 -->
            </select>

            <input type="submit" value="결제 완료">
        </form>
    </div>
