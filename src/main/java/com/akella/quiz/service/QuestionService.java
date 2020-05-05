package com.akella.quiz.service;

import com.akella.quiz.Entity.Question;
import java.util.List;

public interface QuestionService {

    public List<Question> findAll();
    public int findAnswerId(int questionId);
}
