package com.project.blog.Makeblog.reply.repository;


import com.project.blog.Makeblog.common.paging.Page;
import com.project.blog.Makeblog.reply.domain.Reply;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;


@Mapper
public interface ReplyMapper {

    //댓글 입력
    boolean save(Reply reply);

    //댓글 수정
    boolean update(Reply reply);

    //댓글 삭제
    boolean delete(int replyNo);

    //댓글 목록 조회

    /**
     * 마이바티스 매퍼는 기본적으로 1개의 매개값만 받을 수 있음
     * 그러나 @Param을 통해 여러개를 처리할 수 있음
     *
     * @param serialNo
     * @param page
     * @return
     */
    // @Param에 쓴 이름은 #{이름} (xml에 사용될)이 된다.
    List<Reply> getList(@Param("serialNo") int serialNo,
                        @Param("page") Page page);

    //총 댓글 수 조회
    int getCount(int serialNo);

    //댓글 개별 조회
    Reply read(int serialNo);
}

