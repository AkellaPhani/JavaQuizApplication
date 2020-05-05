package com.akella.quiz.service;

import com.akella.quiz.Entity.Role;
import com.akella.quiz.Entity.UserEntity;
import com.akella.quiz.repository.UserRepository;
import java.util.HashSet;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
    @Autowired
    private UserRepository userRepository;

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String username) {
        UserEntity user = userRepository.findByUserName(username);
        if (user == null) throw new UsernameNotFoundException(username);
        if( !user.isEnabled()) throw new UsernameNotFoundException(username + " did not activate his account.");

        Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
        for (Role role : user.getRoles()){
            grantedAuthorities.add(new SimpleGrantedAuthority(role.getName()));
        }


        return new org.springframework.security.core.userdetails.User(user.getUserName(), user.getPassword(),user.isEnabled(),true,true,true, grantedAuthorities);
    }
}