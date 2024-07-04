package com.nc13.SpringTheater.restController;

import com.nc13.SpringTheater.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/user/")
public class UserRestController {
    @Autowired
    private UserService userService;

    @GetMapping("/isValidateUsername")
    public Map<String, Object> isValidateUsername(String username) {
        boolean result = userService.isValidateUserName(username);
        System.out.println(result);
        Map<String, Object> map = new HashMap<>();
        if (result) {
            map.put("result", "success");
        } else {
            map.put("result", "fail");
        }
        return map;
    }


}
