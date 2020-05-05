package com.akella.quiz.repository;

import com.akella.quiz.Entity.UserEntity;
import com.akella.quiz.service.PersistServiceImpl;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

@Component
public class DataInit implements ApplicationRunner {

    private UserRepository userRepository;

    @Autowired
    private PersistServiceImpl persistService;

    @Autowired
    private QuestionRepository questionRepository;

    @Autowired
    private AnswerRepository answerRepository;


    private static final DateFormat df = new SimpleDateFormat("yyyy-MM-dd");

    @Autowired
    public DataInit(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public void run(ApplicationArguments args) throws Exception {
        long count = userRepository.count();

        if (count == 0) {
            UserEntity user1 = new UserEntity();

user1.setUserName("admin123");
user1.setPassword("admin1234");
user1.setEmail("admin.email@gmail.com");
user1.setEnabled(false);
user1.setId((long) 1);

            //
            UserEntity user2 = new UserEntity();

            user2.setUserName("phani1234");
            user2.setPassword("phani1234");
            user2.setEnabled(true);
            user2.setEmail("phani.email@gmail.com");
            user2.setId((long) 2);
            persistService.save(user1);
            persistService.save(user2);

            //enter to question table
        }

    }

}