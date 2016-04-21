package com.springproject.eshop;

import java.util.Arrays;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
@Aspect
public class LoggerAOP {
	// When it will be applied

	 // Where it will applied

//	 @Before("execution(* com.springproject.eshop..*.*(..))")
	@Before("execution(* admin*(..))")
	 public void tracebeforemethod(JoinPoint joinpoint) {

	 // What we want to do

	 System.out.println("before execution of method ");

	 }

	 // When it will be applied

	 // Where it will applied

//	 @After("execution(* com.springproject.eshop..*.*(..))")
	@After("execution(* admin*(..))")
	 public void traceaftermethod(JoinPoint joinpoint) {

	 // What we want to do

	 System.out.println("after execution of method ");

	 }

}
