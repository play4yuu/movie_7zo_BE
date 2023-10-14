document.addEventListener("DOMContentLoaded", function () {
  const faqItems = document.querySelectorAll(".faq-item");

  faqItems.forEach(function (item) {
    const question = item.querySelector(".Q");
    const answer = item.querySelector(".answer");

    // 초기에 답변 숨기기
    answer.style.display = "none";

    question.addEventListener("click", function () {
      // 답변을 토글
      if (answer.style.display === "block") {
        answer.style.display = "none";
      } else {
        answer.style.display = "block";
      }
    });

    // 다른 곳을 클릭했을 때 토글 닫기
    document.addEventListener("click", function (event) {
      if (!item.contains(event.target)) {
        answer.style.display = "none";
      }
    });

    // 이벤트 전파 중지
    answer.addEventListener("click", function (event) {
      event.stopPropagation();
    });
  });
});









// 전송 버튼 클릭 시 동작 (서버로 보내는 부분은 여기에 추가)
const sendBtn = document.getElementById("sendBtn");
if (sendBtn) {
  sendBtn.addEventListener("click", function () {
    const titleInput = document.getElementById("modal-title");
    const contentInput = document.getElementById("content");

    // 값을 가져오기 전에 null 체크
    if (titleInput && contentInput) {
      const title = titleInput.value;
      const content = contentInput.value;

      // 확인/취소 다이얼로그 표시
      const isConfirmed = confirm("작성한 내용을 등록하시겠습니까?");

      if (isConfirmed) {
        // 서버로 데이터 전송하는 로직을 추가할 수 있습니다.
        console.log("제목: " + title);
        console.log("내용: " + content);

        // 제목과 내용 입력 필드 초기화
        titleInput.value = "";
        contentInput.value = "";

        // 등록 완료 메시지 표시
        alert("문의가 등록 되었습니다.");

        // 모달 다이얼로그 닫기
        closeModal();
      } else {
        // 사용자가 "취소"를 클릭한 경우
        console.log("등록 취소됨");
        alert("등록이 취소되었습니다. 작성중인 내용으로 돌아갑니다.");
      }
    }
  });
}