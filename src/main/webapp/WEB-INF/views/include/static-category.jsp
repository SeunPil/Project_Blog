<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<header class="header">
    <div class="container">
        <div class="row">
            <div class="col-md-2">
                <div class="logo">
                    <h2><a href="/">My Blog</a></h2>
                </div>
            </div>
            <div class="col-md-10">
                <div class="menu">
                    <ul>
                        <li class=${flag == null ? 'active' : ''}><a href="/">홈</a></li>
                        <li class=${flag == 'movie' ? 'active' : ''}><a href="/board/movie-list">영화</a></li>
                        <li class=${flag == 'res' ? 'active' : ''}><a href="/board/restaurant-list">맛집</a></li>
                        <li class=${flag == 'day' ? 'active' : ''}><a href="/board/daily-list">일상</a></li>
                        <li><a href="/board/guest-book">전체</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- 항상 맨 위에 고정되도록 z인덱스 부여 -->
<!-- <style type="text/css">
header {
    z-index: 50000;

    /* 배경색 없으면 글자랑 하늘색만 둥둥 떠서 배경색 넣음 */
    background-color: #fff;
    border-bottom: 1px solid rgb(230, 230, 230);
}
</style> -->

<!-- 헤더 스크롤 내려도 고정되도록 하는 함수 -->
<!-- <script type="text/javascript"> 

    // offsetTop 속성을 통해 부모로부터 얼마나 멀리 떨어져있는지 픽셀단위로 설정.
    // offsetLeft: 브라우저 좌측으로부터 얼마나 떨어져 있는지 알 수 있다.
    // pageYOffset 속성을 통해 스크롤된 화면이 브라우저 상단으로부터 얼마나 떨어져 있는지
   
    // 함수 원리 : 스크롤시 브라우저 상단으로부터의 차이가 내비게이션요소의 브라우저
    //             상단과의 차이보다 커지거나 같을 경우 상단에 고정

    const bar = document.querySelector('header');
    const barTopOffset = bar.offsetTop;
    
    window.addEventListener('scroll', e => {
        if (window.pageYOffset >= barTopOffset) {
        bar.style.position = 'fixed';
        bar.style.top = 0;
        bar.style.left = 0;
        bar.style.right = 0;
        } else {
        bar.style.position = '';
        bar.style.top = '';
        }
    });

 </script>  -->

