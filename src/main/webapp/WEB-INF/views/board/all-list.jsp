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

    <style>
        .writing a {
            display: inline-block;
            /* background: #40c4ff; */
            background: #87c9ff;

            width: 95px;
            height: 95px;
            line-height: normal;
            color: #fff;
            text-decoration: none;
            border-radius: 50px;
            text-align: center;
            position: fixed;
            right: 5%;
            bottom: 10%;
            z-index: 1000;
        }

        .writing a i {
            font-size: 30px;
            line-height: 95px;
        }

        .writing a:hover {
            background: #66baff;
        }
    </style>

</head>

<body>
    <div class="wrapper">

        <%@ include file="../include/static-category.jsp" %>

        <section class="blog-post-area">
            <div class="container">
                <div class="row">
                    <div class="blog-post-area-style">
                        <div class="col-md-12">
                            <div class="single-post-big">
                                <div class="big-image">
                                    <img src="../../img/portfolio3.jpg" alt="이미지" />
                                </div>
                                <div class="big-text">
                                    <h3><a href="#">Post Title Goes Here.</a></h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
                                        nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                    </p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.eiusmod
                                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                                    <h4><span class="date">25 February 2017</span><span class="author">Posted By: <span
                                                class="author-name">Kabbo Liate</span></span>
                                    </h4>
                                </div>
                            </div>
                        </div>



                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="img/post-image2.jpg" alt="">
                                <h3><a href="single?serialNo=${articles[0].serialNo}">${articles[0].boardTitle}</a></h3>

                                <h4>
                                    <span>
                                        <fmt:formatDate value="${articles[0].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" />
                                    </span>
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="img/post-image3.jpg" alt="">
                                <h3><a href="single?serialNo=${articles[1].serialNo}">${articles[1].boardTitle}</a></h3>

                                <h4>
                                    <span>
                                        <fmt:formatDate value="${articles[1].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" />
                                    </span>
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="img/post-image4.jpg" alt="">
                                <h3><a href="single?serialNo=${articles[2].serialNo}">${articles[2].boardTitle}</a></h3>

                                <h4>
                                    <span>
                                        <fmt:formatDate value="${articles[2].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" />
                                    </span>
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="img/post-image5.jpg" alt="">
                                <h3><a href="single?serialNo=${articles[3].serialNo}">${articles[3].boardTitle}</a></h3>

                                <h4>
                                    <span>
                                        <fmt:formatDate value="${articles[3].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" />
                                    </span>
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="img/post-image6.jpg" alt="">
                                <h3><a href="single?serialNo=${articles[4].serialNo}">${articles[4].boardTitle}</a></h3>

                                <h4>
                                    <span>
                                        <fmt:formatDate value="${articles[4].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" />
                                    </span>
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="img/post-image7.jpg" alt="">
                                <h3><a href="single?serialNo=${articles[5].serialNo}">${articles[5].boardTitle}</a></h3>

                                <h4>
                                    <span>
                                        <fmt:formatDate value="${articles[5].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" />
                                    </span>
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="img/post-image8.jpg" alt="">
                                <h3><a href="single?serialNo=${articles[6].serialNo}">${articles[6].boardTitle}</a></h3>

                                <h4>
                                    <span>
                                        <fmt:formatDate value="${articles[6].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" />
                                    </span>
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="img/post-image9.jpg" alt="">
                                <h3><a href="single?serialNo=${articles[7].serialNo}">${articles[7].boardTitle}</a></h3>

                                <h4>
                                    <span>
                                        <fmt:formatDate value="${articles[7].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" />
                                    </span>
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="img/post-image9.jpg" alt="">
                                <h3><a href="single?serialNo=${articles[8].serialNo}">${articles[8].boardTitle}</a></h3>

                                <h4>
                                    <span>
                                        <fmt:formatDate value="${articles[8].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" />
                                    </span>
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="img/post-image9.jpg" alt="">
                                <h3><a href="single?serialNo=${articles[9].serialNo}">${articles[9].boardTitle}</a></h3>

                                <h4>
                                    <span>
                                        <fmt:formatDate value="${articles[9].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" />
                                    </span>
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="img/post-image9.jpg" alt="">
                                <h3><a href="single?serialNo=${articles[10].serialNo}">${articles[10].boardTitle}</a></h3>

                                <h4>
                                    <span>
                                        <fmt:formatDate value="${articles[10].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" />
                                    </span>
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-post">
                                <img src="img/post-image9.jpg" alt="">
                                <h3><a href="single?serialNo=${articles[11].serialNo}">${articles[11].boardTitle}</a></h3>

                                <h4>
                                    <span>
                                        <fmt:formatDate value="${articles[11].boardDate}"
                                            pattern="yyyy-MM-dd a hh:mm:ss" />
                                    </span>
                                </h4>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
            <div class="pegination">
                <!--
                <ul>
                    <li><i class="fa fa-angle-left" aria-hidden="true"></i></li>
                    <li class="active">1</li>
                    <li>2</li>
                    <li>3</li>
                    <li><i class="fa fa-angle-right" aria-hidden="true"></i></li>
                </ul>
-->

                <div class="nav-links">
                    <span class="page-numbers current">1</span>
                    <a class="page-numbers" href="#">2</a>
                    <a class="page-numbers" href="#">3</a>
                    <a class="page-numbers" href="#">4</a>
                    <a class="page-numbers" href="#">5</a>
                    <a class="page-numbers" href="#"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
                </div>
            </div>
        </section>

        <%@ include file="../include/footer.jsp" %>

    </div>

    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/active.js"></script>
</body>

</html>