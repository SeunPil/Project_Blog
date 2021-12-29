package com.project.blog.Makeblog.reply.repository;

import com.project.blog.Makeblog.common.paging.Page;
import com.project.blog.Makeblog.reply.domain.Reply;
import com.project.blog.Makeblog.reply.repository.ReplyMapper;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class ReplyMapperTest {

    @Autowired
    ReplyMapper replyMapper;

    @Test
    @DisplayName("특정 글번호 게시글에 댓글 20개를 삽입해야 한다.")
    void insertTest(){
        for (int i = 1; i < 20; i++) {
            Reply reply = new Reply();
            reply.setSerialNo(59);  //내 게시글목록중 최신글에 넣어봤음
            reply.setReplyText("테스트 댓글 " + i);
            reply.setReplyWriter("짹짹이" + i);

            replyMapper.save(reply);

        }
    }

    @Test
    @DisplayName("특정 게시물의 댓글 목록을 조회할 수 있어야 한다.")
    void getListTest() {
        List<Reply> list = replyMapper.getList(59, new Page(1, 10));
        System.out.println("=============================");
        for (Reply reply : list) {
            System.out.println(reply);
        }
        assertEquals(10, list.size());
    }

    @Test
    @DisplayName("특정 게시물을 수정할 수 있어야 한다.")
    void updateTest() {
        Reply reply = replyMapper.read(15);
        reply.setReplyText("수정된 댓글");

        replyMapper.update(reply);

        assertEquals(reply.getReplyText(), replyMapper.read(15).getReplyText());
    }

    @Test
    @DisplayName("특정 게시물을 삭제할 수 있어야 한다.")
    @Transactional
    @Rollback
    void deleteTest() {

        for (int i = 0; i < 11; i++) {

            replyMapper.delete(200);
        }

        assertTrue(replyMapper.getList(15, new Page(1, 10)).size() == 18);
    }


}