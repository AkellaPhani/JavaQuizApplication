package com.akella.quiz.controller;


import com.akella.quiz.Entity.ConfirmationToken;
import com.akella.quiz.Entity.UserEntity;
import com.akella.quiz.Model.RegistrationModel;
import com.akella.quiz.repository.ConfirmationTokenRepo;
import com.akella.quiz.repository.EmailRepo;
import com.akella.quiz.service.PersistServiceImpl;
import com.akella.quiz.util.EmailSender;
import com.akella.quiz.util.ValidateRegForm;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

    @Autowired
    private PersistServiceImpl persistService;

/*    @Autowired
    private SecurityService securityService;*/

    @Autowired
    private RegistrationModel registrationModel;

    @Autowired
    private EmailRepo emailRepo;

    @Autowired
    private ValidateRegForm validateRegForm;

    @Autowired
    private EmailSender emailSender;

    @Autowired
    private ConfirmationTokenRepo confirmationTokenRepo;

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
    public String welcome(Model model) {

        return "welcome";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {

        model.addAttribute("userForm", new RegistrationModel());
        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registerUser(Model model, @ModelAttribute("userForm") RegistrationModel registrationModel, BindingResult bindingResult) {
        String validate = "";

        validate = validateRegForm.validateReg(registrationModel, model);
        if (validate.isEmpty()) {
            UserEntity userEntity = new UserEntity();
            userEntity.setUserName(registrationModel.getUserName());
            userEntity.setPassword(registrationModel.getPassword());
            userEntity.setEmail(registrationModel.getEmail());
            persistService.save(userEntity);

            ConfirmationToken confirmationToken = new ConfirmationToken(userEntity);

            confirmationTokenRepo.save(confirmationToken);

            SimpleMailMessage mailMessage = new SimpleMailMessage();
            mailMessage.setTo(registrationModel.getEmail());
            mailMessage.setSubject("Complete Registration!");
            mailMessage.setFrom("akella.phanikumar007@gmail.com");
            mailMessage.setText("To confirm your account, please click here : "
                    + "http://localhost:8080/confirm-account?token=" + confirmationToken.getConfirmationToken());
            try {
                emailSender.sendEmail(mailMessage);
                model.addAttribute("message", registrationModel.getEmail());
                validate = "successfulRegistrartion";

            } catch (Exception e) {
                model.addAttribute("message", e.getMessage());
                validate = "errorPage";
            }
        }

        return validate;
    }

    @RequestMapping(value = "/login", method = {RequestMethod.GET, RequestMethod.POST})
    public String login(Model model, String error, String logout) {
        if (error != null && !error.isEmpty())
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

    @RequestMapping(value = "/confirm-account", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView confirmUserAccount(ModelAndView modelAndView, @RequestParam("token") String confirmationToken) {
        ConfirmationToken token = confirmationTokenRepo.findByConfirmationToken(confirmationToken);

        if (token != null) {
            UserEntity user = emailRepo.findByEmailIgnoreCase(token.getUser().getEmail());
            user.setEnabled(true);
            persistService.save(user);
            modelAndView.setViewName("accountVerified");
        } else {
            modelAndView.addObject("message", "The link is invalid or broken!");
            modelAndView.setViewName("errorPage");
        }

        return modelAndView;
    }

}




