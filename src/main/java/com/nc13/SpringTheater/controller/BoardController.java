package com.nc13.SpringTheater.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board/")
public class BoardController {
    @GetMapping("choice")
    public String choice(Authentication authentication) {
        System.out.println(authentication);
        return "/board/choice";
    }
}
