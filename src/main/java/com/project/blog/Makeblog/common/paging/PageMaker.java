package com.project.blog.Makeblog.common.paging;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * ############ 컨트롤러에서 연결해야해서 파라미터로 사용했음 list 관련 코드 확인
 *
 * 서버 측에서 클라이언트에게 각종 페이지 정보를 응답하기 위해
 * 페이징 데이터(이전, 다음버튼 활성화 여부, 시작, 끝페이지 번호 정보 등)을 생성하는 클래스
 * 여기서 페이지 알고리즘 다 만들어서 jsp 에 보낼 예정
 */

@Getter
@Setter
@ToString
public class PageMaker {

    private int beginPage; //시작페이지 번호
    private int endPage; //끝페이지 번호
    private boolean prev, next; //이전,다음활성화 버튼 여부

    private Page page; //현재 요청 페이지 정보
    private int totalCount; //전체 게시물 수 => 어떻게 게시물 수가 연결되는건지 모르겠다

    private static final int PAGE_COUNT = 10;//한 화면에 배치할 페이지 수( <- 1,2,3,4,5 -> 를 뜻함)


    //page, totalCount 는 받아와야 해서 기본 생성자를 직접 만들었다.
    public PageMaker(Page page, int totalCount) {
        this.page = page;
        this.totalCount = totalCount;

        //현재 페이지 27이면 30페이지까지 나와야 한다.

        /* 올림을 위해 소숫점이 필요해서 double 형변환을 했는데 ceil 후 리턴 타입 또한 double 로, 1,2,3이 아니라 1.0, 2.0, 3.0으로
           나타나는 문제가 발생하기 떄문에 int 형변환(캐스팅) 필요하다.*/

        /* 페이지를 나타내는 숫자를 몇 개 나타낼지 마지막 숫자를 구하는 알고리즘. (amount 는 나타낼 게시물 수, PAGE_COUNT 는 나타낼 페이지 수이다.)
         ceil (현재 페이지 번호 / 한 화면에 보여줄 페이지 수) * 한 화면에 보여질 페이지 수*/

        //마지막 페이지 수 계산
        this.endPage = (int) Math.ceil((double) page.getPageNum() / PAGE_COUNT) * PAGE_COUNT;

        //시작 페이지 수 계산
        this.beginPage = this.endPage - PAGE_COUNT + 1;

        /*  가장 마지막 페이지 끝부분을 보정한 수 = realEnd
            ex) 총 게시물 수가 284개이고, 화면당 10페이지씩 배치가 되고있다면,
            가장 마지막 페이지 구간은 21~30이 아니라 21~29가 되어야 한다. (이런 경우 29가 realEnd가 된다.)
            따라서 마지막 endPage를 다듬은 realEnd가 필요함. */

        int realEnd = (int) Math.ceil((double) totalCount / page.getAmount());

        //보정은 마지막 구간에서만 일어나야 한다. 285개 글에서 마지막 앤드페이지 -> 30(보정 전), 리얼앤드 = 29(보정 후) (즉, 29 리얼앤드 < 30 앤드페이지)
        if (realEnd < endPage) {
            this.endPage = realEnd;
        }

        //이전 버튼 활성화 여부
        this.prev = this.beginPage > 1; //True, 가장 처음에만 비활성화가 된다.

        //다음 버튼 활성화 여부
        this.next = this.endPage < realEnd; //True, 가장 마지막에만 비활성화가 된다.
    }

}
