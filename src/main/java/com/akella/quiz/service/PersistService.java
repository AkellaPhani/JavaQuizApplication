package com.akella.quiz.service;

import com.akella.quiz.Entity.UserEntity;

@FunctionalInterface
    public interface PersistService {
        void save(UserEntity user);

    }


