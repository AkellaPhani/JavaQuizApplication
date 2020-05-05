package com.akella.quiz.repository;

import com.akella.quiz.Entity.ConfirmationToken;
import org.springframework.data.repository.CrudRepository;

public interface ConfirmationTokenRepo extends CrudRepository<ConfirmationToken, String> {
    com.akella.quiz.Entity.ConfirmationToken findByConfirmationToken(String confirmationToken);
}