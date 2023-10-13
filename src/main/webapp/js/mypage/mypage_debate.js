/*

// 가상의 토론 데이터
const discussionData = [
    {
        thumbnail: '../img/img1.jpg',
        topic: '환경 보호에 대한 중요성',
        content: '환경 보호는 우리의 책임이며 지구의 미래에 직접적인 영향을 미칩니다. 우리는 어떻게 지구를 더 나은 곳으로 만들 수 있을까요?'
    },
    {
        thumbnail: '../img/img1.jpg',
        topic: '인공 지능의 윤리',
        content: '인공 지능이 더 많은 산업에 적용되면서 윤리적 문제가 더 중요해지고 있습니다. 어떻게 인공 지능의 윤리를 보장할 수 있을까요?'
    },
    {
        thumbnail: '../img/img1.jpg',
        topic: '5G 네트워크의 미래',
        content: '5G 기술은 우리의 통신을 혁신하고 있지만, 어떻게 이 기술을 미래에 활용할 수 있을까요?'
    },
     {
        thumbnail: '../img/img1.jpg',
        topic: '5G 네트워크의 미래',
        content: '5G 기술은 우리의 통신을 혁신하고 있지만, 어떻게 이 기술을 미래에 활용할 수 있을까요?'
    },
     {
        thumbnail: '../img/img1.jpg',
        topic: '5G 네트워크의 미래',
        content: '5G 기술은 우리의 통신을 혁신하고 있지만, 어떻게 이 기술을 미래에 활용할 수 있을까요?'
    },
     {
        thumbnail: '../img/img1.jpg',
        topic: '5G 네트워크의 미래',
        content: '5G 기술은 우리의 통신을 혁신하고 있지만, 어떻게 이 기술을 미래에 활용할 수 있을까요?'
    },
    // 추가 게시물들...
];

const postsPerPage = 3; // 한 페이지에 표시될 게시물 수
const totalPages = Math.ceil(discussionData.length / postsPerPage);

// 게시판에 게시물을 표시하는 함수
function displayPosts(pageNumber) {
    const startIndex = (pageNumber - 1) * postsPerPage;
    const endIndex = startIndex + postsPerPage;
    const pageData = discussionData.slice(startIndex, endIndex);

    const board = document.getElementById('discussion-board');
    board.innerHTML = '';

    pageData.forEach((post) => {
        const postElement = document.createElement('div');
        postElement.classList.add('post');

        postElement.innerHTML = `
            <img src="${post.thumbnail}" alt="썸네일 이미지">
            <h2>${post.topic}</h2>
            <p>${post.content}</p>
        `;

        board.appendChild(postElement);
    });
}

// 페이지 이동 버튼을 생성하는 함수
function createPaginationButtons() {
    const pagination = document.getElementById('pagination');

    for (let i = 1; i <= totalPages; i++) {
        const button = document.createElement('button');
        button.innerText = i;
        button.addEventListener('click', () => {
            displayPosts(i);
        });
        pagination.appendChild(button);
    }
}

// 초기 페이지 설정
displayPosts(1);
createPaginationButtons();

*/