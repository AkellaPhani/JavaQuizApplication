package com.akella.quiz.controller;

import com.akella.quiz.Entity.Question;
import com.akella.quiz.service.QuestionService;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class QuestionController {
@Autowired
    private QuestionService questionService;

    private static final Logger logger = LoggerFactory.getLogger(QuestionController.class);

    @RequestMapping(value = "/takeQuiz", method = RequestMethod.GET)
public String questions(ModelMap model) {
    List<Question> questionList =  questionService.findAll();
    List<Question> randomQuestionList =  getRandomQuestions(questionList, 5);
    model.put("questions", randomQuestionList);

    return "/index";

}


   @RequestMapping(value = "/answerSubmit", method = RequestMethod.GET)
    public String submitAnswers(HttpServletRequest request) {
        try {
            int score = 0;
            String[] questionsIds = request.getParameterValues("questionId");

            for (String questionId : questionsIds) {
                int answerIdCorrect = questionService.findAnswerId(Integer.parseInt(questionId));
                if (answerIdCorrect == Integer.parseInt(request.getParameter("question_" + questionId))) {
                    score++;
                }

            }
            request.setAttribute("score", score);
        } catch (Exception e) {
e.printStackTrace();
        }

        return "/result";

    }


public List<Question> getRandomQuestions(List<Question> list, int totalItems) {

    {
        Random rand = new Random();

        // create a temporary list for storing
        // selected element
        List<Question> newList = new ArrayList<>();
        for (int i = 0; i < totalItems; i++) {

            // take a raundom index between 0 to size
            // of given List
            int randomIndex = rand.nextInt(list.size());

            // add element in temporary list
            newList.add(list.get(randomIndex));

            // Remove selected element from orginal list
            list.remove(randomIndex);
        }
        return newList;
    }
}
}

