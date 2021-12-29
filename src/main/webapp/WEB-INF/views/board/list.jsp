<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Front page</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
        integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">

    <%@ include file="../include/header.jsp" %>




</head>

<body>
    <div class="wrapper">

        <%@ include file="../include/static-category.jsp" %>

        <section class="blog-post-area">
            <div class="container">
                <div class="row">
                    <div class="blog-post-area-style">

                        <!-- #################################### 검색창 영역 #################################### -->
                        <form action="/board/movie-list" id="search-form">
                            <input type="hidden" name="amount" value="${maker.page.amount}">

                            <div class="row">
                                <div class="col-xs-6 col-md-4">
                                    <div class="input-group">
                                        <!-- 선택창 -->
                                        <select name="type">
                                            <option value="title" ${maker.page.type=='title' ? 'selected' : '' }>제목
                                            </option>
                                            <option value="content" ${maker.page.type=='content' ? 'selected' : '' }>내용
                                            </option>
                                            <!-- <option value="writer" ${maker.page.type == 'writer' ? 'selected' : ''}>작성자</option> -->
                                            <option value="titleContent" ${maker.page.type=='titleContent' ? 'selected'
                                                : '' }>
                                                제목+내용
                                            </option>
                                        </select>

                                        <!-- 텍스트 입력창 -->
                                        <input type="text" class="form-control" id="txtSearch" name="keyword"
                                            placeholder="검색어를 입력!" value="${maker.page.keyword}">

                                        <!-- submit -->
                                        <div class="input-group-btn">
                                            <button class="btn btn-primary" type="submit">
                                                <!-- 아이콘 -->
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>


                        <!-- #################################### 최신글 코드  ####################################### -->
                        <div class="single-post">
                            <h3>
                                <span class="main-title">최신글</span>
                            </h3>
                        </div>

                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="../../img/post-image3.jpg" alt="">
                                <h3><a
                                        href="single?serialNo=${recentArticles[0].serialNo}&categoryNo=${recentArticles[0].categoryNo}">${recentArticles[0].boardTitle}</a>
                                </h3>

                                <!-- 게시글 내용 -->
                                <!-- <p>${article[0].boardContent}</p> -->
                                <h4>
                                    <span>
                                        <fmt:formatDate value="${recentArticles[0].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" /> <br>
                                        <p>조회수: ${recentArticles[0].boardViewCnt}</p>
                                    </span>
                                </h4>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="../../img/post-image3.jpg" alt="">
                                <h3><a
                                        href="single?serialNo=${recentArticles[1].serialNo}&categoryNo=${recentArticles[1].categoryNo}">${recentArticles[1].boardTitle}</a>
                                </h3>
                                <!-- 게시글 내용 -->
                                <!-- <p>${article[1].boardContent}</p> -->
                                <h4>
                                    <span>
                                        <fmt:formatDate value="${recentArticles[1].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" /> <br>
                                        <p>조회수: ${recentArticles[1].boardViewCnt}</p>
                                    </span>
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="../../img/post-image4.jpg" alt="">
                                <h3><a
                                        href="single?serialNo=${recentArticles[2].serialNo}&categoryNo=${recentArticles[2].categoryNo}">${recentArticles[2].boardTitle}</a>
                                </h3>
                                <!-- 게시글 내용 -->
                                <!-- <p>${article[2].boardContent}</p> -->
                                <h4>
                                    <span>
                                        <fmt:formatDate value="${recentArticles[2].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" /> <br>
                                        <p>조회수: ${recentArticles[2].boardViewCnt}</p>
                                    </span>
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="../../img/post-image5.jpg" alt="">
                                <h3><a
                                        href="single?serialNo=${recentArticles[3].serialNo}&categoryNo=${recentArticles[3].categoryNo}">${recentArticles[3].boardTitle}</a>
                                </h3>
                                <!-- 게시글 내용 -->
                                <!-- <p>${article[3].boardContent}</p> -->
                                <h4>
                                    <span>
                                        <fmt:formatDate value="${recentArticles[3].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" /> <br>
                                        <p>조회수: ${recentArticles[3].boardViewCnt}</p>
                                    </span>
                                </h4>
                            </div>
                        </div>



                        <!-- #################################### 인기글 코드  ####################################### -->

                        <div class="single-post">
                            <h3>
                                <span class="main-title">인기글</span>
                            </h3>
                        </div>

                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="../../img/post-image2.jpg" alt="">
                                <h3><a
                                        href="single?serialNo=${bestArticles[0].serialNo}&categoryNo=${bestArticles[0].categoryNo}">${bestArticles[0].boardTitle}</a>
                                </h3>
                                <!-- 게시글 내용 -->
                                <!-- <p>${bestArticles[0].boardContent}</p> -->
                                <h4>
                                    <span>
                                        <fmt:formatDate value="${bestArticles[0].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" /> <br>
                                        <p>조회수: ${bestArticles[0].boardViewCnt}</p>
                                    </span>
                                </h4>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="../../img/post-image2.jpg" alt="">
                                <h3><a
                                        href="single?serialNo=${bestArticles[1].serialNo}&categoryNo=${bestArticles[1].categoryNo}">${bestArticles[1].boardTitle}</a>
                                </h3>
                                <!-- 게시글 내용 -->
                                <!-- <p>${bestArticles[1].boardContent}</p> -->
                                <h4>
                                    <span>
                                        <fmt:formatDate value="${bestArticles[1].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" /> <br>
                                        <p>조회수: ${bestArticles[1].boardViewCnt}</p>
                                    </span>
                                </h4>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="../../img/post-image2.jpg" alt="">
                                <h3><a
                                        href="single?serialNo=${bestArticles[2].serialNo}&categoryNo=${bestArticles[2].categoryNo}">${bestArticles[2].boardTitle}</a>
                                </h3>
                                <!-- 게시글 내용 -->
                                <!-- <p>${bestArticles[2].boardContent}</p> -->
                                <h4>
                                    <span>
                                        <fmt:formatDate value="${bestArticles[2].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" /> <br>
                                        <p>조회수: ${bestArticles[2].boardViewCnt}</p>
                                    </span>
                                </h4>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="../../img/post-image2.jpg" alt="">
                                <h3><a
                                        href="single?serialNo=${bestArticles[3].serialNo}&categoryNo=${bestArticles[3].categoryNo}">${bestArticles[3].boardTitle}</a>
                                </h3>
                                <!-- 게시글 내용 -->
                                <!-- <p>${bestArticles[3].boardContent}</p> -->
                                <h4>
                                    <span>
                                        <fmt:formatDate value="${bestArticles[3].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" /> <br>
                                        <p>조회수: ${bestArticles[3].boardViewCnt}</p>
                                    </span>
                                </h4>
                            </div>
                        </div>


                        <!-- ############## 카테고리별 전체 게시글(페이징 들어가는 부분) ############## -->

                        <div class="single-post">
                            <h3>
                                <span class="main-title">전체글</span>
                            </h3>
                        </div>

                        <div class="list-container">

                            <div class="amount-box">
                                <div class="amount">
                                        <a href="/board/movie-list?amount=10&type=${maker.page.type}&keyword=${maker.page.keyword}">10</a>
                                   
                                        <a href="/board/movie-list?amount=20&type=${maker.page.type}&keyword=${maker.page.keyword}">20</a>
                                    
                                        <a href="/board/movie-list?amount=30&type=${maker.page.type}&keyword=${maker.page.keyword}">30</a>
                               </div>
                            </div>

                            <table border="1" id="list-table" class="table table-sm" width="100%">

                                <tr>
                                    <!-- <th>boardNo</th> -->
                                    <th>글번호</th>
                                    <!-- <th>신규글 여부</th> -->
                                    <th width="50%">제목</th>
                                    <th>작성시간</th>
                                    <th>조회수</th>
                                    <th>비고</th>
                                </tr>

                                <!-- 컨트롤러의 article 리스트(?)를 변수 a에 대입 -->
                                <!-- 오류원인: items가 ${articles}가 아닌 ${article}로 되어야
                                    하고, var가 article 이면 변수명이 겹쳐서 500 오류가 된다. -->
                                <c:forEach var="a" items="${article}">
                                    <tr class="table-hover">
                                        <!-- <td>${a.boardNo}</td> -->
                                        <td>${a.serialNo}</td>
                                        <!-- <td>${a.newFlag}</td> -->
                                        <td>
                                            <a
                                                href="/board/single?serialNo=${a.serialNo}&categoryNo=${a.categoryNo}">${a.boardTitle}</a>

                                            <!-- 신규, 인기 뱃지 -->
                                            <c:choose>
                                                <c:when test="${a.newFlag}">
                                                    <span class="badge rounded-pill bg-primary">new</span>
                                                </c:when>
                                                <c:when test="${a.boardViewCnt >= 20}">
                                                    <span class="badge bg-info text-dark">hit</span>
                                                </c:when>
                                            </c:choose>
                                        </td>
                                        <td>
                                            <fmt:formatDate value="${a.boardDate}" pattern="yyyy-MM-dd a hh:mm:ss" />
                                        </td>
                                        <td>${a.boardViewCnt}</td>
                                        <td>
                                            <a data-serial-no="${a.serialNo}" data-category-no="${a.categoryNo}"
                                                class="badge rounded-pill bg-secondary del-btn" href="#">삭제</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
                    </div>
                </div>
            </div>


            <!-- ############################# 페이징 영역 ############################# -->
            <!-- 무비리스트 안되면 그냥 리스트로 바꾸어 보기 -->
            <ul class="pagination">

                <div class="nav-links">

                    <c:if test="${maker.prev}">
                        <li class="page-item page-numbers"><a class=" page-link"
                                href="/board/movie-list?pageNum=${maker.beginPage - 1}&amount=${maker.page.amount}&type=${maker.page.type}&keyword=${maker.page.keyword}">prev</a>
                        </li>
                    </c:if>

                    <c:forEach var="i" begin="${maker.beginPage}" end="${maker.endPage}" step="1">
                        <li class="page-item page-numbers"><a class=" page-link"
                                href="/board/movie-list?pageNum=${i}&amount=${maker.page.amount}&type=${maker.page.type}&keyword=${maker.page.keyword}">${i}</a>
                        </li>
                    </c:forEach>

                    <c:if test="${maker.next}">
                        <li class="page-item page-numbers"><a class="page-link"
                                href="/board/movie-list?pageNum=${maker.endPage + 1}&amount=${maker.page.amount}&type=${maker.page.type}&keyword=${maker.page.keyword}">next</a>
                        </li>
                    </c:if>

                </div>
            </ul>
        </section>

        <%@ include file="../include/footer.jsp" %>

    </div>
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/active.js"></script>

    <script>
        // 삭제 버튼 클릭 이벤트
        // 삭제 버튼에 바로 달면 첫째줄만 된다. 수많은 삭제여서 버블링, 부모 태그에 써야함
        const delBtn = document.querySelector('del-btn');
        const table = document.querySelector('table');

        table.addEventListener('click', e => {

            if (!e.target.matches('a.del-btn')) {
                console.log('a태그의 del-btn이 아닙니다');
                return;
            }

            e.preventDefault(); //a 태그의 링크가 클릭이벤트보다 우선시되어서 막아야 컨펌기능이 실행된다.
            //console.log('삭제버튼 클릭됨!');

            //article.boardNo 변수는 forEach 함수에서 쓰는 태그라 함수가 끝나면서 사라져 사용이 불가능. => dataset 사용
            const serialNo = e.target.dataset.serialNo;
            console.log(serialNo);

            const categoryNo = e.target.dataset.categoryNo;
            console.log(categoryNo);

            if (confirm('정말로 삭제하겠습니까?')) {
                location.href = '/board/delete?serialNo=' + serialNo + '&categoryNo=' + categoryNo;
            }
        });

        //현재 위치한 페이지 li태그에 클래스 p-active를 부여하는 함수(서버가 요청페이지 넘버알고있어서 받아와야함)
        function appendPageActive(curPageNum) {
            const $ul = document.querySelector('.pagination');
            for (let $li of [...$ul.children]) {
                //모든 li들 중에 data-page 속성값이 현재 요청페이지 번호와 같다면
                if ($li.dataset.page === curPageNum) {
                    $li.classList.add('p-active');
                    break;
                }
            }
        }

        //메인 실행부   (common.PageMaker가 알고있다.)
        (function () {
            appendPageActive('${maker.page.pageNum}');
        })();
    </script>
</body>

</html>