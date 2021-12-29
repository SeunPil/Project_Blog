package com.project.blog.Makeblog.reply.domain;

import lombok.*;

import java.util.Date;

@Getter @Setter @ToString
@NoArgsConstructor
@AllArgsConstructor
public class Reply {

    private int replyNo; //댓글번호
    private int serialNo; //원본글번호
    private String replyText; //댓글 내용
    private String replyWriter; //댓글 작성자명
    private Date replyDate; //댓글 작성 시간
}