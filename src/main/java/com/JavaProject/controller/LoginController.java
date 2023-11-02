package com.JavaProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.security.Principal;

/**
 * The LoginController class is a Java controller that handles the login functionality, redirecting to
 * the home page if the user is already authenticated.
 */
@Controller
public class LoginController {

    @GetMapping("/login")
    public String login(Principal principal) {

        if (principal != null) {
            return "redirect:/home";
        }
        return "/login";
    }

}
