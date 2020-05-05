package com.akella.quiz.repository;

import com.akella.quiz.Entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;


public interface EmailRepo  extends JpaRepository<UserEntity, String> {
UserEntity findByEmailIgnoreCase(String email);
}
