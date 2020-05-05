package com.akella.quiz.service;

import com.akella.quiz.Entity.Answer;
import com.akella.quiz.Entity.Question;
import com.akella.quiz.repository.QuestionRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QuestionServiceImpl implements QuestionService {

@Autowired
    private QuestionRepository questionRepository;
    @Override
    public List<Question> findAll() {
        return questionRepository.findAll();
    }

    @Override
    public int findAnswerId(int questionId) {
        Question question = questionRepository.findById((long) questionId).get();
        for(Answer answer:question.getAnswers()) {
            if(answer.isCorrect()) {
                return Math.toIntExact(answer.getId());
            }
        }
        return -1;
    }
}
