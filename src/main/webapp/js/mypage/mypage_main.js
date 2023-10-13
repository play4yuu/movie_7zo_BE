        document.addEventListener('DOMContentLoaded', function() {
			
            // 초기에 첫 번째 탭 내용 표시
            $('#mypage_info').show();

            // 탭 버튼을 클릭했을 때 해당 탭 콘텐츠만 표시
            $('.tab-buttons a').click(function(e) {
                e.preventDefault();
                
                // 클릭한 탭의 data-tab 속성 값을 가져옴
                var tabId = $(this).data('tab');
                
                // 모든 탭 콘텐츠 숨김
                $('.tab-content').hide();
                
                // 클릭한 탭에 해당하는 콘텐츠 표시
                $('#' + tabId).show();
                
                // 클릭한 탭에 해당하는 페이지를 동적으로 로드
                $('#' + tabId).load(tabId + '.html', function(response, status, xhr) {
                    if (status == "error") {
                        console.error('파일을 불러오는 중 오류가 발생했습니다:', xhr.status, xhr.statusText);
                    }
                });
            });
        });




/*
// 초기 화면 설정
// showTab('home');

function loadHTMLContent(htmlFilePath) {
    const xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            const responseHTML = xhr.responseText;
            tabContent.innerHTML = responseHTML;

           // HTML을 로드한 후에 해당 HTML에 포함된 스크립트 실행
            const scriptElements = tabContent.querySelectorAll('script');
            scriptElements.forEach((script) => {
                const newScript = document.createElement('script');
                newScript.text = script.innerHTML;
                document.body.appendChild(newScript);
            });
            
             //HTML 파일이 완전히 로드된 후에 실행할 코드
        	document.addEventListener('DOMContentLoaded', function () {
            // 이곳에서 초기화 및 이벤트 핸들러 등을 설정합니다.
        	});
        
        }
    };
    xhr.open('GET', htmlFilePath, true);
    xhr.send();
}

// 탭을 클릭하면 해당 HTML 파일을 불러옴
tabButtons.forEach((button) => {
    button.addEventListener('click', () => {
        const tabName = button.getAttribute('data-tab');
        const htmlFilePath = `${tabName}.html`; // HTML 파일 경로
        loadHTMLContent(htmlFilePath);
    });
});
*/