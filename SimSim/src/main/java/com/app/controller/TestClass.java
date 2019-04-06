package com.app.controller;

public class TestClass {
public static void main(String[] args) {
//	System.out.println(java.time.LocalTime.now());
//	System.out.println(java.time.LocalDate.now().toString()); 
//	System.out.println(java.time.LocalDateTime.now());  
	
	String s = "*888";
	String[] arr = s.split("\\*");
	System.out.println(arr.length);
	System.out.println(arr[0]);
	System.out.println("--------------------");
	System.out.println(arr[1]);
}
}
