package com.nc13.SpringTheater.service;

import com.nc13.SpringTheater.model.UserDTO;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserService {
    @Autowired
    private final SqlSession SESSION;
    private final String NAMESPACE = "com.nc13.mappers.UserMapper";

    public UserDTO selectByUsername(String username) {
        return SESSION.selectOne(NAMESPACE + ".selectByUsername", username);
    }

    public boolean isValidateUserName(String username) {
        return SESSION.selectOne(NAMESPACE + ".isValidateUserName", username) == null;
    }
}
