package com.nc13.SpringTheater.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class HomeController {
    @GetMapping("/")
    public String showIndex() {
        return "index";
    }

    @GetMapping("/showMessage")
    public String showMessage(@ModelAttribute("message") String message, Model model) {
        model.addAttribute("message", message);
        return "showMessage";
    }
}
