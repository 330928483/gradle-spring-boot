package com.yatou.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.info.GitProperties;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloController {

  @Autowired
  private GitProperties git;

  @GetMapping("/commit-id")
  public String getCommitId() {
    return git.getCommitId();
  }

  @GetMapping
  public String hello() {
    return "Hello Docker World";
  }


}
