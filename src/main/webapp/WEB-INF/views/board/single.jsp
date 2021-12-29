<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Single page</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="responsive.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
        integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">


    <%@ include file="../include/header.jsp" %>

    <style>
        .table {
            margin: 20px 80px;
            width: 100%;
            height: 100%;
            border-bottom: 1px solid rgb(73, 73, 73);
        }

        .title-box {
            width: 100%;
            border-bottom: 1px solid rgb(73, 73, 73);
        }

        .title {
            font-size: 40px;
            color: rgba(14, 14, 14, 0.699);
        }

        .date {
            font-size: 15px;
            color: rgba(122, 120, 120, 0.699);
        }

        .dateCnt {
            margin-left: -40px;
        }

        .viewCount {
            margin-left: 15px;
            font-size: 15px;
            color: rgba(122, 120, 120, 0.699);
        }

        .content {
            width: 100%;
            height: auto;
            overflow: auto;
            min-height: 7rem;
            background: #fff;
            text-align: center;
            font-size: 15px;
            resize: none;
            padding: 1em;
            padding-bottom: 0.2em;
            white-space: pre-wrap;
        }

        #btns {
            margin-left: 75px;
            margin-bottom: 80px;
        }

        #back-btn,
        #modify-btn,
        #del-btn {
            font-size: 17px;
            margin-right: 20px;
            color: rgba(15, 15, 15, 0.699);
        }

        #back-btn:hover,
        #modify-btn:hover,
        #del-btn:hover {
            color: rgba(26, 110, 189, 0.699);
        }
    </style>

</head>

<body>
    <div class="wrapper">

        <%@ include file="../include/static-category.jsp" %>

        <section class="single-blog-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="border-top">
                            <div class="col-md-8">
                                <div class="blog-area">
                                    <div class="blog-area-part">
                                        <div class="container">
                                            <div class="row">
                                                <div class="offset-md-1 col-md-10">

                                                    <div class="table">
                                                        <!-- <h1>${article.serialNo}번 게시물 내용</h1> -->
                                                        <div class="title-box">
                                                            <h1 class="title">${article.boardTitle}</h1><br>
                                                            <ul class="dateCnt">
                                                                <h15 class="date">
                                                                    <fmt:formatDate value="${article.boardDate}"
                                                                        pattern="yyyy-MM-dd a hh:mm:ss" />
                                                                </h15>
                                                                <h15 class="viewCount">조회수 ${article.boardViewCnt}</h15>
                                                            </ul>
                                                        </div>


                                                        <p>
                                                            <pre class="content">${article.boardContent}</pre>
                                                        </p>

                                                    </div>

                                                    <!-- history.back 함수 사용 -->
                                                    <!-- 무조건 지금 보는 페이지의 이전페이지로만 이동 가능합니다! -->

                                                    <div id="btns">
                                                        <c:set var="categoryNo" value="${article.categoryNo}" />

                                                        <c:choose>
                                                            <c:when test="${categoryNo eq '1'}">
                                                                <a id="back-btn" href="/board/movie-list"
                                                                    style="text-decoration: none;">이전 목록</a>&nbsp;
                                                            </c:when>
                                                            <c:when test="${categoryNo eq '2'}">
                                                                <a id="back-btn" href="/board/restaurant-list"
                                                                    style="text-decoration: none;">이전 목록</a>&nbsp;
                                                            </c:when>
                                                            <c:when test="${categoryNo eq '3'}">
                                                                <a id="back-btn" href="/board/daily-list"
                                                                    style="text-decoration: none;">이전 목록</a>&nbsp;
                                                            </c:when>
                                                        </c:choose>


                                                        <a id="modify-btn"
                                                            href="/board/modify?serialNo=${article.serialNo}&categoryNo=${article.categoryNo}"
                                                            style="text-decoration: none;">글
                                                            수정하기</a>
                                                        <a data-serial-no="${article.serialNo}"
                                                            data-category-no="${article.categoryNo}" id="del-btn"
                                                            href="" style="text-decoration: none;">삭제</a>
                                                    </div>

                                                </div>

                                            </div>



                                            <!-- 댓글 영역 -->

                                            <div id="replies" class="row">
                                                <div class="offset-md-1 col-md-10">
                                                    <!-- 댓글 쓰기 영역 -->
                                                    <div class="card">
                                                        <div class="card-body">
                                                            <div class="row">
                                                                <div class="col-md-9">
                                                                    <div class="form-group">
                                                                        <label for="newReplyText" hidden>댓글 내용</label>
                                                                        <textarea rows="3" id="newReplyText"
                                                                            name="replyText" class="form-control"
                                                                            placeholder="댓글을 입력해주세요."></textarea>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group">
                                                                        <label for="newReplyWriter" hidden>댓글
                                                                            작성자</label>
                                                                        <input id="newReplyWriter" name="replyWriter"
                                                                            type="text" class="form-control"
                                                                            placeholder="작성자 이름"
                                                                            style="margin-bottom: 6px;">
                                                                        <button id="replyAddBtn" type="button"
                                                                            class="btn btn-dark form-control">등록</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div> <!-- end reply write -->


                                                    <!--댓글 내용 영역-->
                                                    <div class="card">
                                                        <!-- 댓글 내용 헤더 -->
                                                        <div class="card-header text-white m-0"
                                                            style="background: #343A40;">
                                                            <div class="float-left">댓글 (<span id="replyCnt">0</span>)
                                                            </div>
                                                        </div>

                                                        <!-- 댓글 내용 바디 -->
                                                        <div id="replyCollapse" class="card">
                                                            <div id="replyData">
                                                                <!-- 
                                    < JS로 댓글 정보 DIV삽입 > 
                                -->
                                                            </div>

                                                            <!-- 댓글 페이징 영역 -->
                                                            <ul class="pagination justify-content-center">
                                                                <!-- 
                                    < JS로 댓글 페이징 DIV삽입 > 
                                -->
                                                            </ul>
                                                        </div>
                                                    </div> <!-- end reply content -->
                                                </div>
                                            </div> <!-- end replies row -->
                                        </div> <!-- end content container -->


                                        <!-- 댓글 수정 모달 -->
                                        <div class="modal fade bd-example-modal-lg" id="replyModifyModal">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">

                                                    <!-- Modal Header -->
                                                    <div class="modal-header"
                                                        style="background: #343A40; color: white;">
                                                        <h4 class="modal-title">댓글 수정하기</h4>
                                                        <button type="button" class="close text-white"
                                                            data-bs-dismiss="modal">X</button>
                                                    </div>

                                                    <!-- Modal body -->
                                                    <div class="modal-body">
                                                        <div class="form-group">
                                                            <input id="modReplyId" type="hidden">
                                                            <label for="modReplyText" hidden>댓글내용</label>
                                                            <textarea id="modReplyText" class="form-control"
                                                                placeholder="수정할 댓글 내용을 입력하세요." rows="3"></textarea>
                                                        </div>
                                                    </div>

                                                    <!-- Modal footer -->
                                                    <div class="modal-footer">
                                                        <button id="replyModBtn" type="button"
                                                            class="btn btn-dark">수정</button>
                                                        <button type="button" class="btn btn-danger"
                                                            data-bs-dismiss="modal" id="modal-close">닫기</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- end replyModifyModal -->


                                        <!-- 댓글 관련 스크립트 -->
                                        <script>
                                            //댓글 처리 js
                                            //start jquery
                                            $(function () {
                                                //원본 글 번호
                                                const serialNo = '${article.serialNo}';
                                                //날짜 포맷 변환 함수
                                                function formatDate(datetime) {
                                                    //문자열 날짜 데이터를 날짜객체로 변환
                                                    const dateObj = new Date(datetime);
                                                    // console.log(dateObj);
                                                    //날짜객체를 통해 각 날짜 정보 얻기
                                                    let year = dateObj.getFullYear();
                                                    //1월이 0으로 설정되어있음.
                                                    let month = dateObj.getMonth() + 1;
                                                    let day = dateObj.getDate();
                                                    let hour = dateObj.getHours();
                                                    let minute = dateObj.getMinutes();
                                                    //오전, 오후 시간체크
                                                    let ampm = '';
                                                    if (hour < 12 && hour >= 6) {
                                                        ampm = '오전';
                                                    } else if (hour >= 12 && hour < 21) {
                                                        ampm = '오후';
                                                        if (hour !== 12) {
                                                            hour -= 12;
                                                        }
                                                    } else if (hour >= 21 && hour <= 24) {
                                                        ampm = '밤';
                                                        hour -= 12;
                                                    } else {
                                                        ampm = '새벽';
                                                    }
                                                    //숫자가 1자리일 경우 2자리로 변환
                                                    (month < 10) ? month = '0' + month: month;
                                                    (day < 10) ? day = '0' + day: day;
                                                    (hour < 10) ? hour = '0' + hour: hour;
                                                    (minute < 10) ? minute = '0' + minute: minute;
                                                    return year + "-" + month + "-" + day + " " + ampm + " " +
                                                        hour + ":" + minute;
                                                }
                                                //댓글 태그 생성, 배치 함수
                                                function makeReplyListDOM(replyMap) {

                                                    let tag = '';


                                                    //댓글 페이지 태그 생성 배치함수
                                                    function makePageDOM(pageInfo) {
                                                        let tag = "";

                                                        const begin = pageInfo.beginPage;
                                                        const end = pageInfo.endPage;

                                                        //이전 버튼 만들기
                                                        if (pageInfo.prev) {
                                                            tag +=
                                                                "<li class='page-item'><a class='page-link page-active' href='" +
                                                                (begin - 1) +
                                                                "'>이전</a></li>";
                                                        }

                                                        //페이지 번호 리스트 만들기
                                                        for (let i = begin; i <= end; i++) {
                                                            const active = (pageInfo.page.pageNum === i) ?
                                                                'p-active' : '';
                                                            tag += "<li class='page-item' " + active +
                                                                "><a class='page-link page-custom " +
                                                                active + "' href='" +
                                                                i + "'>" +
                                                                i + "</a></li>";
                                                        }

                                                        //다음 버튼 만들기
                                                        if (pageInfo.next) {
                                                            tag +=
                                                                "<li class='page-item'><a class='page-link p-active' href='" +
                                                                (end + 1) +
                                                                "'>다음</a></li>";
                                                        }

                                                        //태그 삽입하기
                                                        $(".pagination").html(tag);
                                                    }


                                                    for (let reply of replyMap.replyList) {
                                                        tag +=
                                                            "<div id='replyContent' class='card-body' data-replyId='" +
                                                            reply.replyNo + "'>" +
                                                            "    <div class='row user-block'>" +
                                                            "       <span class='col-md-3'>" +
                                                            "         <b>" + reply.replyWriter + "</b>" +
                                                            "       </span>" +
                                                            "       <span class='offset-md-6 col-md-3 text-right'><b>" +
                                                            formatDate(reply
                                                                .replyDate) +
                                                            "</b></span>" +
                                                            "    </div><br>" +
                                                            "    <div class='row'>" +
                                                            "       <div class='col-md-6'>" + reply.replyText +
                                                            "</div>" +
                                                            "       <div class='offset-md-2 col-md-4 text-right'>" +
                                                            "         <a id='replyModBtn' class='btn btn-sm btn-outline-dark' data-bs-toggle='modal' data-bs-target='#replyModifyModal'>수정</a>&nbsp;" +
                                                            "         <a id='replyDelBtn' class='btn btn-sm btn-outline-dark' href='#'>삭제</a>" +
                                                            "       </div>" +
                                                            "    </div>" +
                                                            " </div>";
                                                    }
                                                    //만든 태그를 댓글목록 안에 배치
                                                    //document.querySelector('#replyData').innerHTML = tag;
                                                    $('#replyData').html(tag);

                                                    //댓글 수 배치
                                                    $('#replyCnt').text(replyMap.maker.totalCount);

                                                    //페이지 태그 배치
                                                    makePageDOM(replyMap.maker);
                                                }



                                                //댓글 목록 비동기 요청 처리 함수
                                                function getReplyList(pageNum) {
                                                    fetch('/api/v1/reply/' + serialNo + '/' + pageNum)
                                                        .then(res => res.json())
                                                        .then(replyMap => {
                                                            console.log(replyMap);
                                                            makeReplyListDOM(replyMap);
                                                        });
                                                }

                                                //페이지 버튼 클릭 이벤트
                                                $('.pagination').on('click', 'li a', e => {
                                                    e.preventDefault(); //태그 고유기능 중지
                                                    getReplyList(e.target.getAttribute('href'));
                                                });

                                                //페이지 진입시 댓글목록 불러오기
                                                getReplyList(1);

                                                //=====================================================//
                                                //댓글 등록 처리
                                                $('#replyAddBtn').on('click', e => {
                                                    //서버로 댓글 내용을 전송해서 DB에 저장
                                                    const reqInfo = {
                                                        method: 'POST', //요청 방식
                                                        headers: { //요청 헤더 내용
                                                            'content-type': 'application/json'
                                                        },
                                                        //서버로 전송할 데이터 (JSON)
                                                        body: JSON.stringify({
                                                            serial: serialNo,
                                                            replyText: $('#newReplyText')
                                                                .val(),
                                                            replyWriter: $(
                                                                '#newReplyWriter').val()
                                                        })
                                                    };
                                                    fetch('/api/v1/reply', reqInfo)
                                                        .then(res => res.text())
                                                        .then(msg => {
                                                            if (msg === 'insertSuccess') {
                                                                getReplyList(1);
                                                                $('#newReplyText').val('');
                                                                $('#newReplyWriter').val('');
                                                            } else {
                                                                alert('댓글 등록에 실패했습니다.');
                                                            }
                                                        });
                                                });
                                                //=================== 댓글 수정 이벤트 =======================//
                                                //댓글 수정 창 진입 이벤트
                                                const $modal = $('#replyModifyModal');
                                                $('#replyData').on('click', '#replyModBtn', e => {
                                                    //console.log('수정 창 버튼 클릭!');
                                                    //기존 댓글 내용을 가져오기
                                                    const originText = e.target.parentNode
                                                        .previousElementSibling.textContent;
                                                    console.log(originText);
                                                    //해당 댓글번호 가져오기
                                                    const replyNo = e.target.parentNode.parentNode
                                                        .parentNode.dataset.replyid;
                                                    //댓글내용 모달에 넣어놓기
                                                    $('#modReplyText').val(originText);
                                                    //input hidden에 댓글번호 넣어놓기
                                                    $('#modReplyId').val(replyNo);
                                                }); // end ModifyShow

                                                //댓글 수정 완료 이벤트
                                                $('#replyModBtn').on('click', e => {

                                                    //수정 정보 전달
                                                    const rno = $('#modReplyId').val();

                                                    //JSON에게 정보 전달
                                                    const reqInfo = {
                                                        method: 'PUT',
                                                        headers: {
                                                            'content-type': 'application/json'
                                                        },
                                                        body: JSON.stringify({
                                                            replyNo: rno,
                                                            replyText: $('#modReplyText')
                                                                .val()
                                                        })
                                                    }
                                                    fetch('/api/v1/reply/' + rno, reqInfo)
                                                        .then(res => res.text())
                                                        .then(msg => {
                                                            if (msg === 'modSuccess') {
                                                                // 모달 숨김 <-> show : 열림
                                                                // $modal.modal('hide');
                                                                $('#modal-close').click();
                                                                getReplyList(1);
                                                            } else {
                                                                alert('댓글 수정 실패!');
                                                            }
                                                        });
                                                }); // end modifyEvent

                                                //댓글 삭제 비동기 요청 이벤트
                                                $("#replyData").on("click", "#replyDelBtn", e => {
                                                    const replyId = e.target.parentNode.parentNode
                                                        .parentNode.dataset.replyid;
                                                    //console.log("삭제 버튼 클릭! : " + replyId);
                                                    if (!confirm("진짜로 삭제할거니??")) {
                                                        return;
                                                    }
                                                    const reqInfo = {
                                                        method: 'DELETE'
                                                    };
                                                    fetch('/api/v1/reply/' + replyId, reqInfo)
                                                        .then(res => res.text())
                                                        .then(msg => {
                                                            if (msg === 'delSuccess') {
                                                                getReplyList(1);
                                                            } else {
                                                                alert("댓글 삭제에 실패했습니다.");
                                                            }
                                                        })
                                                });


                                            }); //end jquery
                                        </script>



                                        <%@ include file="../include/footer.jsp" %>


                                    </div>
                                    <script src="js/jquery-3.1.1.min.js"></script>
                                    <script src="js/bootstrap.min.js"></script>
                                    <script src="js/owl.carousel.min.js"></script>
                                    <script src="js/isotope.pkgd.js"></script>
                                    <script src="js/active.js"></script>

                                    <script>
                                        //삭제 버튼 클릭 이벤트

                                        const btn = document.getElementById('del-btn');
                                        btn.addEventListener('click', D => {

                                            D.preventDefault(); //a태그 링크이동기능 중지

                                            console.log('삭제버튼 클릭됨!');
                                            const serialNo = D.target.dataset.serialNo;
                                            const categoryNo = D.target.dataset.categoryNo;
                                            console.log(serialNo);
                                            console.log(categoryNo);

                                            location.href = '/board/delete?serialNo=' + serialNo +
                                                '&categoryNo=' + categoryNo;
                                        });

                                        //텍스트 길이에 맞게 높이 설정
                                        function resize(obj) {
                                            obj.style.height = "1px";
                                            obj.style.height = (12 + obj.scrollHeight) + "px";
                                        }
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    </section>


</body>

</html>