package com.spboot.ecommerce.controllers;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Asus
 */
@Controller
public class LogoutController {
    @GetMapping("/logout")
    public String index(HttpServletRequest request) {
        HttpSession session = request.getSession(true);
        
        session.removeAttribute("id");
        session.removeAttribute("name");
        session.removeAttribute("email");
        session.removeAttribute("loggedIn");
        session.invalidate();
        
        return "redirect:/login";
    }
}
