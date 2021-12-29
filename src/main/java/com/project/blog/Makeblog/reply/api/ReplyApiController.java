package com.project.blog.Makeblog.reply.api;

import com.project.blog.Makeblog.common.paging.Page;
import com.project.blog.Makeblog.reply.domain.Reply;
import com.project.blog.Makeblog.reply.service.ReplyService;
import com.project.blog.Makeblog.common.paging.PageMaker;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import static org.springframework.http.HttpStatus.INTERNAL_SERVER_ERROR;
import static org.springframework.http.HttpStatus.OK;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

// 비동기 통신

@RestController
@RequestMapping("/api/v1/reply")
@Log4j2
@RequiredArgsConstructor
public class ReplyApiController {

    private final ReplyService replyService;

    // 댓글 목록 조회 요청 처리
    @GetMapping("/{boardNo}/{page}")
    //@PathVariable은 경로를 읽어다가 매개변수에 넣어준다.
    public ResponseEntity<Map<String, Object>> list(
            @PathVariable int serialNo, @PathVariable("page") int pageNum) {
        log.info("/api/v1/reply/" + serialNo + " GET!");
        Page page = new Page(pageNum, 10);
        //서비스에게 댓글 목록 요청
        Map<String, Object> replyList = replyService.getList(serialNo, page);



        return new ResponseEntity<>(replyList, OK);

    }

    //댓글 등록 처리 요청
    @PostMapping("")
    // @RequestBody: 클라이언트에서 전달한 JSON데이터를 자바객체로 변환해 줌
    public ResponseEntity<String> create(@RequestBody Reply reply) {
        log.info("/api/v1/reply POST! - " + reply);
        return replyService.register(reply)
                ? new ResponseEntity<>("insertSuccess", OK)
                : new ResponseEntity<>("insertFail", INTERNAL_SERVER_ERROR);
    }
    //댓글 수정 요청 처리
    @PutMapping("/{rno}")
    public ResponseEntity<String> modify(
            @PathVariable("rno") int replyNo
            , @RequestBody Reply reply
    ) {
        reply.setReplyNo(replyNo);
        log.info("/api/v1/reply/ " + replyNo + " PUT  - " + reply);
        return replyService.modify(reply)
                ? new ResponseEntity<>("modSuccess", OK)
                : new ResponseEntity<>("modFail", INTERNAL_SERVER_ERROR);
    }
    //댓글 삭제 요청 처리
    @DeleteMapping("/{rno}")
    public ResponseEntity<String> remove(@PathVariable("rno") int replyNo) {
        log.info("/api/v1/reply/" + replyNo + " DELETE !!");
        return replyService.remove(replyNo)
                ? new ResponseEntity<>("delSuccess", OK)
                : new ResponseEntity<>("delFail", INTERNAL_SERVER_ERROR);
    }
}

