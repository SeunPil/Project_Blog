package com.project.blog.Makeblog.common.paging;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter @Getter @ToString
public class Page {

    private int pageNum; //현재 페이지 번호
    private int amount; //한 페이지당 게시물 수

    private String type; //검색조건
    private String keyword = ""; //검색어

    //(아마도 기본값 설정같다.) 현재 1페이지에 페이지당 게시물 10개로 설정하는 코드로 추측
    public Page() {
        this(1, 10);
    }

    public Page(int pageNum, int amount) {
        this.pageNum = pageNum;
        this.amount = amount;
    }


    //############### 버그 방지 ###############

    //주소창에 입력해서 고의로 서버 다운시킬 수 있는 가능성 차단
    public void setAmount(int amount) {
        if ( amount <= 0 || amount > 100) {
            this.amount = 10;
            return;
        }
        this.amount = amount;
    }

    //SQL 인젝션 공격 혹은 페이지 주소값에 -99같은 음수를 넣는 경우 대비
    public void setPageNum(int pageNum) {
        if (pageNum <= 0) {
            this.pageNum = 1;
            return;
        }
        this.pageNum = pageNum;
    }
}
