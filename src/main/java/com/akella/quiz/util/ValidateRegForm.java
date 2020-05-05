package com.akella.quiz.util;

import com.akella.quiz.Entity.UserEntity;
import com.akella.quiz.Model.RegistrationModel;
import com.akella.quiz.repository.EmailRepo;
import com.akella.quiz.service.PersistServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

@Component
public class ValidateRegForm {

    @Autowired
    private PersistServiceImpl persistService;

    @Autowired
    private EmailRepo emailRepo;

    public String validateReg(RegistrationModel user, Model model) {
        UserEntity existingEmail = emailRepo.findByEmailIgnoreCase(user.getEmail());
        UserEntity existingUser = persistService.findByUsername(user.getUserName());
        String page = "";
        if(existingUser != null)
        {
            model.addAttribute("message","UserName already exists!");
            page = "errorPage";
        } else if (existingEmail != null) {
            model.addAttribute("message","Email already registered!");
            page = "errorPage";
        }
        return page;
    }
}
