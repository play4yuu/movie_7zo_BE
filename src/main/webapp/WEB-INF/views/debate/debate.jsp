<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <style>
    @import url("/movie/css/reset.css");
        body{
        position : relative;
        }

        #chat-container {
        width: 800px;
        height: 400px;
        border-radius: 15px; /* Rounded corners */
        box-shadow: 0px 0px 10px rgba(0,0,0,0.5); /* Shadow effect */
        background-color: #f8f8f8; /* Light grey background color */
        padding: 20px; /* Add some space around the content */
        margin-top : 100px;
        }

        #chat-window {
        width: calc(100% - 40px); /* Adjust width to account for padding in container */
        height: calc(100% - 70px); /* Adjust height to account for padding and input field in container */
        border-radius: 15px; /* Rounded corners to match the container */
        box-shadow: inset 0px 4px 6px rgba(0,0,0,0.1); /* Inner shadow effect for depth illusion */
        overflow-y:auto; 
        display:flex;
        flex-direction: column-reverse;
        }



        #chat-input {
        width: calc(100% - 60px);
        height:50px;
        }
        .support {
            color: green;
        }

        .oppose {
            color: red;
        }

        .neutral {
            color: blue;
        }
        p {
            margin: 5px 0; /* Top and bottom margins are 5px, left and right margins are 0 */
        }
        #message-type.support-option {
        color: green;
        }

        #message-type.oppose-option {
        color: red;
        }

        #message-type.neutral-option {
        color: blue;
        }
        .selected {
        font-weight: bold;
        }


    </style>

    <div id="chat-container">
        <div id="chat-window">
            <!-- Here messages will be displayed -->
        </div>

        <input type="text" id="chat-input" placeholder="Type a message...">
        
        <form action="debate.jsp" method="post"> <!-- 여기서 "your_jsp_filename.jsp"를 실제 파일 이름으로 변경 -->
            <!-- Add a dropdown menu for the user to select an option -->
		<select id="message-type" onchange="changeOptionColor()">
		    <option value="support" class="support-option">찬성</option>
		    <option value="oppose" class="oppose-option">반대</option>
		    <option value="neutral" class="neutral-option">중립</option>
		</select>
            <input type="button" value="Send" onclick="sendMessage()">
            <input type="button" value="뒤로 가기" id="back-button">
        </form>

    </div>

    <script>
        var chatWindow = document.getElementById('chat-window');
        var chatInput = document.getElementById('chat-input');
        var messageType = document.getElementById('message-type'); // Add this line
        var userName = "JOHN";
        chatWindow.scrollTop = chatWindow.scrollHeight;

        var backButton = document.getElementById('back-button');
        backButton.addEventListener('click', function() {
             window.location.href = '/movie/debate/debateHome';
         });

    
        function sendMessage() {
            var message = chatInput.value;

            if(message) { // if the message is not empty
                var newMessageElement = document.createElement('p');

                // Add the selected option to the message
                var selectedOption = messageType.options[messageType.selectedIndex].value; 
                
                newMessageElement.textContent = userName + ': [' + messageType.options[messageType.selectedIndex].text + '] ' + message;

                // Apply the class based on the selected option
                newMessageElement.classList.add(selectedOption);

                // Insert the new message at the beginning instead of at the end
                chatWindow.insertBefore(newMessageElement, chatWindow.firstChild);

                /* New code: Scroll to bottom */
                chatWindow.scrollTop = chatWindow.scrollHeight;

                // clear the input field and set focus back to it
                chatInput.value = '';
                chatInput.focus();
            }
        }

        function changeOptionColor() {
            var selectedOption = messageType.options[messageType.selectedIndex].value;

            // Remove all color-related classes from the dropdown
            messageType.className = '';

            // Add the class based on the selected option to the dropdown itself
            messageType.classList.add(selectedOption);

            // Change color of select menu based on selection
            switch (selectedOption) {
                case 'support':
                    messageType.style.color = 'green';
                    break;
                case 'oppose':
                    messageType.style.color = 'red';
                    break;
                case 'neutral':
                    messageType.style.color = 'blue';
                    break;
                default:
                    messageType.style.color = 'black';
            }

            // Change color of options in dropdown menu
            for (var i=0; i < messageType.options.length; i++) {
                switch (messageType.options[i].value) {
                    case "support":
                        messageType.options[i].style.color = "green";
                        break;
                    case "oppose":
                        messageType.options[i].style.color = "red";
                        break;
                    case "neutral":
                        messageType.options[i].style.color = "blue";
                        break;
                }
            }
        }



    
        // send the message when 'Enter' key is pressed
        chatInput.addEventListener('keyup', function(event) {
            if(event.key === 'Enter') {
               sendMessage();
             }
         });
    
    </script> 
    

