<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Front page</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="responsive.css">
    <link rel="stylesheet" href="/css/modify.css?ver=1">

    <!-- 위지윅 -->
    <script src="https://cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
    <%@ include file="../include/header.jsp" %>

</head>

<body>
    <div class="wrapper">

        <%@ include file="../include/static-category.jsp" %>

        <section class="write">

            <h1>게시물 수정</h1>

            <div class="inputmenu">

                <form action="/board/modify" method="POST" enctype="multipart/form-data">
                    <input type="hidden" class="input" name="categoryNo" value="${article.categoryNo}">
                    <input type="hidden" class="input" name="serialNo" value="${article.serialNo}">
                    <input id="title" type="text" class="input" name="boardTitle" placeholder="제목을 입력하세요."
                        value="${article.boardTitle}"><br>
                    <br>
                    <!-- 텍스트 에디터 -->
                    <textarea id="textArea-edit" class="input" name="boardContent">
                    </textarea>
                    <br>

                    <!-- 이미지 추가 기능 -->
                    <input type="file" name="fileName">

                    <button type="submit">수정</button>
                </form>

            </div>

            <c:set var="categoryNo" value="${article.categoryNo}" />

            <c:choose>
                <c:when test="${categoryNo eq '1'}">
                    <a id="boardlist" href="/board/movie-list" style="text-decoration: none;">글 목록보기</a>
                </c:when>
                <c:when test="${categoryNo eq '2'}">
                    <a id="boardlist" href="/board/restaurant-list" style="text-decoration: none;">글 목록보기</a>
                </c:when>
                <c:when test="${categoryNo eq '3'}">
                    <a id="boardlist" href="/board/daily-list" style="text-decoration: none;">글 목록보기</a>
                </c:when>
            </c:choose>



        </section>

        <%@ include file="../include/footer.jsp" %>

    </div>
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/active.js"></script>
    <script>
        /* 위지윅 적용 */
        /* 에디터 활성화 name 적기 */
        CKEDITOR.replace( 'boardContent' );
    </script>
</body>

</html>