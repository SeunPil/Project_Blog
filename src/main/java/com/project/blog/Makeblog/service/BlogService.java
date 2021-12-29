package com.project.blog.Makeblog.service;

import com.project.blog.Makeblog.common.paging.Page;
import com.project.blog.Makeblog.domain.Blog;
import com.project.blog.Makeblog.repository.BlogMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
public class BlogService {

    private final BlogMapper blogMapper;

    // ##################### 최신글 목록 가져오기 #####################
    public List<Blog> getMovieRecentArticle() {
        List<Blog> recent = blogMapper.getMovieRecentArticle();
        //게시글 제목 ...붙이기
        for (Blog article : recent) {
            String title = article.getBoardTitle();
            if (title.length() > 12)
                article.setBoardTitle(title.substring(0, 12) + "...");
        }
        //게시글 내용 ...붙이기
        for (Blog article : recent) {
            String content = article.getBoardContent();
            if (content.length() > 50)
                article.setBoardContent(content.substring(0, 50) + "...");
        }
        return recent;
    }
    // ##################### 인기글 목록 가져오기 #####################
    public List<Blog> getMovieBestArticle() {
        List<Blog> best = blogMapper.getMovieBestArticle();

        //게시글 제목 ...붙이기
        for (Blog article : best) {
            String title = article.getBoardTitle();
            if (title.length() > 12)
                article.setBoardTitle(title.substring(0, 12) + "...");
        }
        //게시글 내용 ...붙이기
        for (Blog article : best) {
            String content = article.getBoardContent();
            if (content.length() > 50)
                article.setBoardContent(content.substring(0, 50) + "...");
        }
        return best;
    }

    public List<Blog> getRestaurantBestArticle() {
        List<Blog> best = blogMapper.getRestaurantBestArticle();

        //게시글 제목 ...붙이기
        for (Blog article : best) {
            String title = article.getBoardTitle();
            if (title.length() > 12)
                article.setBoardTitle(title.substring(0, 12) + "...");
        }
        //게시글 내용 ...붙이기
        for (Blog article : best) {
            String content = article.getBoardContent();
            if (content.length() > 50)
                article.setBoardContent(content.substring(0, 50) + "...");
        }
        return best;
    }

    public List<Blog> getDailyBestArticle() {
        List<Blog> best = blogMapper.getDailyBestArticle();

        //게시글 제목 ...붙이기
        for (Blog article : best) {
            String title = article.getBoardTitle();
            if (title.length() > 12)
                article.setBoardTitle(title.substring(0, 12) + "...");
        }
        //게시글 내용 ...붙이기
        for (Blog article : best) {
            String content = article.getBoardContent();
            if (content.length() > 50)
                article.setBoardContent(content.substring(0, 50) + "...");
        }
        return best;
    }


    //1. ###################### 게시물 목록 가져오기 ######################
    public List<Blog> getMovieArticles(Page page) {
//        List<Blog> articles = blogMapper.getMovieArticles(page);

        //1-3. 최종 검색기능 추가한 서비스
        List<Blog> articles = blogMapper.getMovieArticles(page);

        //게시글 제목 ...붙이기
        for (Blog article : articles) {
            String title = article.getBoardTitle();
            if (title.length() > 20)
                article.setBoardTitle(title.substring(0, 20) + "...");
        }
        //게시글 내용 ...붙이기
        for (Blog article : articles) {
            String content = article.getBoardContent();
            if (content.length() > 50)
                article.setBoardContent(content.substring(0, 50) + "...");
        }
        //3분 이내 신규글 new마크 붙이기
        for (Blog article : articles) {
            //각 게시물들의 등록시간 읽어오기(밀리초)
            long regTime = article.getBoardDate().getTime();
            //현재시간 읽어오기(밀리초)
            long now = System.currentTimeMillis();
            if (now - regTime < 60 * 10 * 1000) {
                article.setNewFlag(true);
            }
        }
        return articles;
    }

    public List<Blog> getRestaurantArticles(Page page) {
        List<Blog> articles = blogMapper.getRestaurantArticles(page);

        //게시글 제목 ...붙이기
        for (Blog article : articles) {
            String title = article.getBoardTitle();
            if (title.length() > 12)
                article.setBoardTitle(title.substring(0, 12) + "...");
        }
        //게시글 내용 ...붙이기
        for (Blog article : articles) {
            String content = article.getBoardContent();
            if (content.length() > 50)
                article.setBoardContent(content.substring(0, 50) + "...");
        }
        //3분 이내 신규글 new마크 붙이기
        for (Blog article : articles) {
            //각 게시물들의 등록시간 읽어오기(밀리초)
            long regTime = article.getBoardDate().getTime();

            //현재시간 읽어오기(밀리초)
            long now = System.currentTimeMillis();

            if (now - regTime < 60 * 10 * 1000) {
                article.setNewFlag(true);
            }
        }
        return articles;
    }

    public List<Blog> getDailyArticles(Page page) {
        List<Blog> articles = blogMapper.getDailyArticles(page);

        //게시글 제목 ...붙이기
        for (Blog article : articles) {
            String title = article.getBoardTitle();
            if (title.length() > 12)
                article.setBoardTitle(title.substring(0, 12) + "...");
        }
        //게시글 내용 ...붙이기
        for (Blog article : articles) {
            String content = article.getBoardContent();
            if (content.length() > 50)
                article.setBoardContent(content.substring(0, 50) + "...");
        }
        //3분 이내 신규글 new마크 붙이기
        for (Blog article : articles) {
            //각 게시물들의 등록시간 읽어오기(밀리초)
            long regTime = article.getBoardDate().getTime();

            //현재시간 읽어오기(밀리초)
            long now = System.currentTimeMillis();

            if (now - regTime < 60 * 10 * 1000) {
                article.setNewFlag(true);
            }
        }
        return articles;
    }

    // 전체 게시글 조회
    public List<Blog> getAllArticles(Page page) {
        List<Blog> articles = blogMapper.getAllArticles(page);

        //게시글 내용 ...붙이기
        for (Blog article : articles) {
            String content = article.getBoardContent();
            if (content.length() > 50)
                article.setBoardContent(content.substring(0, 50) + "...");
        }
        return articles;
    }

    //################## 페이징을 위해 총 게시물 수 조회(하단은 카테고리별) ##################
    public int getCount(Page page) {
        return blogMapper.getTotalCount(page);
    }

    public int getMovieCount(Page page) {
        return blogMapper.getMovieTotalCount(page);
    }

    public int getRestaurantCount(Page page) {
        return blogMapper.getRestaurantTotalCount(page);
    }

    public int getDailyCount(Page page) {
        return blogMapper.getDailyTotalCount(page);
    }


    //    ################# 게시글 리스트(테이블) 조회 #################
  /*  public List<Blog> getSearchArticles(Page page) {
        List<Blog> articles = blogMapper.getSearchArticles(page);

        //게시글 제목 ...붙이기
        //게시글 내용은 따로 나타나지 않아서 생략했다.
        for (Blog article : articles) {
            String title = article.getBoardTitle();
            if (title.length() > 12)
                article.setBoardTitle(title.substring(0, 12) + "...");
        }

        for (Blog blog : articles) {

            //각 게시물들의 등록시간 읽어오기(밀리초)
            long regTime = blog.getBoardDate().getTime();

            //현재시간 읽어오기(밀리초)
            long now = System.currentTimeMillis();

            if (now - regTime < 60 * 3 * 1000) {
                blog.setNewFlag(true);
            }
        }
        return articles;
    }*/

    // 2. 게시물 상세 조회
    @Transactional
    public Blog getContent(int serialNo, int categoryNo) {
        Blog content = blogMapper.getContent(serialNo, categoryNo);
        return content;
    }

    // 3. 게시물 등록
    public boolean insert(Blog blog) {
        return blogMapper.insertArticle(blog);
    }

    // 4. 게시물 삭제
    public boolean remove(int serialNo, int categoryNo) {
        return blogMapper.deleteArticle(serialNo, categoryNo);
    }

    // 5. 게시물 수정
    public boolean modify(Blog blog) {
        return blogMapper.modifyArticle(blog);
    }

    // 6. 조회수 상승
    public int upViewCount(int serialNo) {
        return blogMapper.upViewCount(serialNo);
    }
}
