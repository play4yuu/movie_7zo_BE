document.addEventListener("DOMContentLoaded", function() {

	const updateForm = document.getElementById("updateForm");
    const btnInfo = document.getElementById("btn_info");

    if (btnInfo) {
        btnInfo.addEventListener("click", function(e) {
            e.preventDefault();

            const userpw = document.getElementById("userpw").value;
            const userpw2 = document.getElementById("userpw2").value;
            const nickname = document.getElementById("nickname").value;
            const userphone = document.getElementById("userphone").value;
            
            // 빈 입력 확인
            if (!userpw || !userpw2 || !nickname || !userphone) {
                alert("모든 항목을 입력해주세요.");
                return;
            }

            // 비밀번호 유효성 검사
            const userpwRegex = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).{6,12}$/;
            if (!userpwRegex.test(userpw)) {
                alert("비밀번호는 영대문자, 소문자, 숫자를 포함한 6~12자로 입력해주세요.");
                return;
            }

            // 비밀번호 재입력 검사
            if (userpw !== userpw2) {
                alert("비밀번호와 비밀번호 재입력이 일치하지 않습니다.");
                return;
            }

            // 닉네임 유효성 검사
            const nicknameRegex = /^[가-힣A-Za-z0-9]{2,10}$/;
            if (!nicknameRegex.test(nickname)) {
                alert("닉네임은 한글, 영어, 숫자를 포함한 2~10글자로 입력해주세요.");
                return;
            }

            // 전화번호 유효성 검사
            const userphoneRegex = /^010-\d{4}-\d{4}$/;
            if (!userphoneRegex.test(userphone)) {
                alert("휴대전화 번호는 010-0000-0000 형식으로 입력해주세요.");
                return;
            }

             // 모든 유효성 검사를 통과한 경우 form 제출
          		updateForm.action = "/mypage/update";
            	updateForm.submit();

            alert("회원정보가 성공적으로 수정되었습니다!");
        });
    }

    // 취소 버튼에 대한 로직
    const btnCancel = document.getElementById("btn_cancel");
    if (btnCancel) {
        btnCancel.addEventListener("click", function() {
            const result = confirm("정말로 입력을 취소하시겠습니까?");
            if (result) {
                alert("입력이 취소되었습니다.");
                window.history.back(); // 이전 페이지로 리다이렉트
            }
        });
    }

    // 회원 탈퇴 버튼에 대한 로직
        const btnDelete = document.getElementById("btn_delete");
    if (btnDelete) {
        btnDelete.addEventListener("click", function() {
            const result = confirm("정말로 회원 탈퇴하시겠습니까?");
            if (result) {
                // 회원 탈퇴를 처리하는 폼 생성 및 서브밋
                const form = document.createElement('form');
                form.method = 'post';
                form.action = '/mypage/delete';
                document.body.appendChild(form);
                form.submit();
            } else {
                alert("회원 탈퇴가 취소되었습니다.");
            }
        });
    }
});