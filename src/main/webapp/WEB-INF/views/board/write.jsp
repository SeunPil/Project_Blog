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
    <link rel="stylesheet" href="/css/write.css?ver=1">

    <%@ include file="../include/header.jsp" %>

    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/active.js"></script>

    <!-- 위지윅 에디터 ckeditor.com/ textarea 태그에서 활성화 가능해진다. -->
    <!-- 버전 문제같은데 5가 안되어서 4 썼습니다. -->
    <script src="https://cdn.ckeditor.com/4.17.1/standard/ckeditor.js"></script>
</head>

<body>
    <div class="wrapper">

        <%@ include file="../include/static-category.jsp" %>

        <section class="write">

            <h1>게시글 등록</h1>

            <div class="inputmenu">

                <!-- 이미지 추가를 위해서는 encType 작성이 필요함 -->
                <form action="/board/write" method="post" enctype="multipart/form-data">

                    카테고리: <input type="radio" name="categoryNo" value="1" checked="checked">영화
                    <input type="radio" name="categoryNo" value="2"> 맛집
                    <input type="radio" name="categoryNo" value="3"> 일상 <br>

                    <input id="title" type="text" class="input" name="boardTitle" placeholder="제목을 입력하세요."><br>
                    <br>

                    <!-- 텍스트 에디터 -->
                    <textarea id="textArea-edit" class="input" name="boardContent">
                    </textarea>
                    <!-- <textarea id="textArea-edit" rows="60" class="input" cols="40" name="boardContent"></textarea> -->
                    <br>

                    <!-- 이미지 추가 기능 -->
                    <input type="file" name="fileName">

                    <button type="submit">등록</button>

                </form>

            </div>

            <!-- herf는 카테고리별로 이동하게 만들어야함! -->
            <a id="boardlist" href="movie-list" style="text-decoration: none;">글 목록보기</a>

        </section>


        <%@ include file="../include/footer.jsp" %>


    </div>
    

    <script>
        /* 위지윅 적용 */
        /* 에디터 활성화 name 적기 */
        CKEDITOR.replace( 'boardContent' );
    </script>
</body>

</html>