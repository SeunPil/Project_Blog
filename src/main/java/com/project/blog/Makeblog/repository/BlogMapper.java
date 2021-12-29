package com.project.blog.Makeblog.repository;

import com.project.blog.Makeblog.common.paging.Page;
import com.project.blog.Makeblog.domain.Blog;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BlogMapper {

    //1. 게시물 목록 조회(페이지정보, 갯수정보 필요)
    // 매퍼 인터페이스는 웬만해서 하나를 넣어줘야한다. 두개는 골치아파진다.
    // => 하나를 포장해서 두개를 보내면 되겠다! => 도메인에서

    //카테고리 번호를 전달 받아 목록을 보여주고, 그에 맞는 메뉴로 이동 할 때 사용해야 되는 번호이다.
    //긱 정보에 맞는 카테고리 번호를 뿌려주고, JSP에서 조건문으로 설정 해주자.
    List<Blog> getMovieArticles();

    List<Blog> getRestaurantArticles();

    List<Blog> getDailyArticles();


    //1-2 페이지 기능 추가 후 서비스, 컨트롤러에 파라미터로 page 넣는다.
    List<Blog> getMovieArticles(Page page);
    List<Blog> getRestaurantArticles(Page page);
    List<Blog> getDailyArticles(Page page);

    List<Blog> getAllArticles(Page page);

    //1-3. #### 최종 페이징, 검색 적용    (최종본. 1. 1-2 는 연습용)
    List<Blog> getSearchArticles(Page page);

    // 각 카테고리별 총 게시물 수 조회
    int getTotalCount(Page page);   //전체 수

    int getMovieTotalCount(Page page);
    int getDailyTotalCount(Page page);
    int getRestaurantTotalCount(Page page);

    //2. 게시물 상세 조회
    Blog getContent(int serialNo, int categoryNo);


    //3. 게시물 등록(게시물 등록 성공하면 트루)
    boolean insertArticle(Blog blog);

    //4. 게시물 삭제
    boolean deleteArticle(int serialNo, int categoryNo);

    //5. 게시물 수정
    boolean modifyArticle(Blog blog);


    //6. 조회수 상승
    int upViewCount(int serialNo);

    //6-2. ######################### 게시글 등록시 보드넘버 상승->관련 코드 전부 삭제
    int upBoardNo(int serialNo);


    //7. 각 카테고리 최신 게시글 조회
    List<Blog> getMovieRecentArticle();
    List<Blog> getRestaurantRecentArticle();
    List<Blog> getDailyRecentArticle();

    //7-2. 각 카테고리에 인기 게시물 조회
    List<Blog> getMovieBestArticle();
    List<Blog> getRestaurantBestArticle();
    List<Blog> getDailyBestArticle();



}



