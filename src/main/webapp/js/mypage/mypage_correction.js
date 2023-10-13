document.addEventListener("DOMContentLoaded", function() {

	// 정보 수정 버튼 클릭 시 동작
	const infoBtn = document.getElementById("btn_info");
	if (infoBtn) {
		infoBtn.addEventListener("click", function() {
			// 서버로 정보 수정 요청을 보내는 로직을 추가할 수 있습니다.

			// 정보가 성공적으로 수정되었다고 가정하고 알림 창을 표시합니다.
			alert("정보가 수정되었습니다.");
		});
	}

	function confirmDelete() {
		var result = confirm("정말로 회원 탈퇴하시겠습니까?");
		if (result) {
			// 예를 선택한 경우의 동작
			alert("회원 탈퇴되었습니다.");
			// 여기에서 실제 회원 탈퇴 로직을 수행할 수 있습니다.
		} else {
			// 아니오를 선택한 경우의 동작
			alert("회원 탈퇴가 취소되었습니다.");
		}
	}


	function confirmCancel() {
		var result = confirm("정말로 입력을 취소하시겠습니까?");
		if (result) {
			// 예를 선택한 경우의 동작
			alert("입력이 취소되었습니다.");
			// 여기에서 실제 회원 탈퇴 로직을 수행할 수 있습니다.
		} else {
			// 아니오를 선택한 경우의 동작
			//alert("ㅇㅇ");
		}
	}

	// 버튼에 이벤트 리스너 추가
	document.getElementById("btn_delete").addEventListener("click", confirmDelete);
	document.getElementById("btn_cancel").addEventListener("click", confirmCancel);
	
	});