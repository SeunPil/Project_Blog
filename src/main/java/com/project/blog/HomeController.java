package com.project.blog;

import javafx.application.Application;
import javafx.stage.Stage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
//<!-- NOTICE -->
//<!-- 폰트어썸 충돌 오류 방지로 java.com...HomeController.jsp가 시작 메뉴로 지정 -->

@Controller
public class HomeController  {

    @GetMapping("/")
    public String home() {
        return "index";
    }

}
