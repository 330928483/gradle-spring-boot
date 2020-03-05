package com.yatou.web;

import static org.mockito.BDDMockito.given;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.boot.info.GitProperties;

@RunWith(MockitoJUnitRunner.class)
public class HelloControllerTest {

  @InjectMocks
  private HelloController helloController;
  @Mock
  private GitProperties gitProperties;

  @Test
  public void should_invoke_sayHello() {
    // given
    given(gitProperties.getCommitId()).willReturn("1234");
    // when
    String hello = helloController.hello();
    // then
    Assert.assertEquals("123", hello);
  }
}