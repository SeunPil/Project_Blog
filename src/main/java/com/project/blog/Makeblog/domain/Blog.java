package com.project.blog.Makeblog.domain;

import lombok.*;

import java.util.Date;

@Getter @Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Blog {
    private int serialNo; // 구분 번호
    private int boardNo; // 글 번호
    private String boardTitle; // 글 제목
    private String boardContent; // 글 내용
    private int boardViewCnt; // 글 조회수
    private Date boardDate; //  글 작성 날짜
    private Integer categoryNo; // 카테고리 번호
    private String address;

    private boolean newFlag; //신규게시물 여부


}
