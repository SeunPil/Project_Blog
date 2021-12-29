package com.project.blog.Makeblog.repository;

import com.project.blog.Makeblog.common.paging.Page;
import com.project.blog.Makeblog.domain.Blog;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class BlogMapperTest {

    @Autowired
    BlogMapper blogMapper;

    @Test
    @DisplayName("50개의 게시물을 등록해야 한다.")
    void bulkInsert() {
        // 테스트 제목, 내용, 카테고리 번호만 바꿔서 돌리기
        for (int i = 1; i <= 100; i++) {
            Blog blog = new Blog();
            blog.setBoardTitle("영화 테스트 제목 " + i);
            blog.setBoardContent("영화 테스트 내용영화 테스트 내용영화 테스트 내용영화 테스트 내용영화 테스트 내용영화 테스트 내용영화 테스트 내용영화 테스트 내용영화 테스트 내용영화 테스트 내용영화 테스트 내용영화 테스트 내용영화 테스트 내용영화 테스트 내용영화 테스트 내용영화 테스트 내용영화 테스트 내용영화 테스트 내용영화 테스트 내용영화 테스트 내용영화 테스트 내용 " + i);
            //카테고리 1: 영화
            blog.setCategoryNo(1);
            blog.setBoardNo(i);

            blogMapper.insertArticle(blog);
        }
        System.out.println("게시물 등록 성공!");
    }

    @Test
    @DisplayName("게시글을 수정")
    void modify() {
        Blog blog = new Blog();
        blog.setSerialNo(11);
        blog.setBoardNo(1);
        blog.setCategoryNo(2);
        blog.setBoardContent("121241241243");
        blog.setBoardTitle("123");
        blogMapper.modifyArticle(blog);
    }

    @Test
    @DisplayName("게시글 삭제")
    @Transactional
    @Rollback
    void delete() {
        blogMapper.deleteArticle(3, 1);
    }

//    @Test
//    @DisplayName("게시글 상세 조회")
//    void info() {
//        Blog content = blogMapper.getContent(3);
//
//    }

    @Test
    @DisplayName("전체 게시물을 글번호 내림차순으로 조회해야 한다.")
    void selectAll(Page page) {
        List<Blog> articles = blogMapper.getSearchArticles(page);

        for (Blog article : articles) {
            System.out.println(article);
        }
        // size는 게시물의 개수
        Assertions.assertTrue(articles.size() == 10);
    }

    @Test
    void selectTest() {
        List<Blog> movieArticles = blogMapper.getMovieArticles();
        for (Blog movieArticle : movieArticles) {
            System.out.println(movieArticle);
        }
    }

    @Test
    @DisplayName("전체 목록을 조회해야 한다.")
    void viewAll() {
        List<Blog> movie = blogMapper.getMovieArticles();
        List<Blog> restaurant = blogMapper.getRestaurantArticles();
        List<Blog> daily = blogMapper.getDailyArticles();

        for (Blog article : movie) {
            System.out.println(movie);
        }
        for (Blog article : restaurant) {
            System.out.println(restaurant);
        }
        for (Blog article : daily) {
            System.out.println(daily);
        }
        // size는 게시물의 개수
        Assertions.assertTrue(movie.size() > 5);
        Assertions.assertTrue(restaurant.size() > 5);
        Assertions.assertTrue(daily.size() > 5);
    }

    @Test
    @DisplayName("페이징을 적용하여 영화 게시물이 조회되어야 한다.")
    void pageTest1() {
        int page = 3;
        int amount = 20;
        Page p = new Page();
        p.setPageNum(page);
        p.setAmount(amount);

        List<Blog> articles = blogMapper.getMovieArticles(p);

        System.out.println("\n =================================");
        for(Blog article : articles) {
            System.out.println(article);
        }
    }
}