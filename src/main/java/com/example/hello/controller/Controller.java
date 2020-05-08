package com.example.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.UnknownHostException;

@RestController("/")
public class Controller {
    @GetMapping
    public String hello(){
        InetAddress ip = null;
        try{
            ip = InetAddress.getLocalHost();
        } catch (UnknownHostException e){
            e.printStackTrace();
        }

        return "hello from server 2 - "+ ip;
    }
}
