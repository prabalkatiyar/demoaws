package com.prabal.demoaws.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    public static final Logger log = LogManager.getLogger(Controller.class);


    @GetMapping("/getMethod")
    public String getMethod() {
        try {
            log.info("Inside getMethod Controller");
            log.info("Project has deployed on AWS");
            return "Project has deployed on AWS";
        } catch (Exception e) {
            log.error("Exception occured in geMethod Controller");
        }
        return "";
    }

    @PostMapping("/postMethod")
    public String postMethod(@RequestBody String request) {
        try {
            log.info("Inside postMethod Controller");
            log.info(request);
            return request;
        } catch (Exception e) {
            log.error("Exception occured in geMethod Controller");
        }
        return "";
    }
}
