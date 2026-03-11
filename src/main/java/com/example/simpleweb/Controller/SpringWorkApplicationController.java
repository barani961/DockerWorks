package com.example.simpleweb.Controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SpringWorkApplicationController {
    @GetMapping("/hello")
    public String hello(){
        return "hello world";
    }
}
