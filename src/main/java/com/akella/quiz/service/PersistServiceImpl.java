package com.akella.quiz.service;

import com.akella.quiz.Entity.UserEntity;
import com.akella.quiz.repository.RoleRepository;
import com.akella.quiz.repository.UserRepository;
import java.util.HashSet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class PersistServiceImpl {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    private RoleRepository roleRepository;

    public void save(UserEntity user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(new HashSet<>(roleRepository.findAll()));
        userRepository.save(user);
    }

    public UserEntity findByUsername(String username) {
        return userRepository.findByUserName(username);
    }
}
