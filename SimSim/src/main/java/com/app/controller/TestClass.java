package com.app.controller;

import java.util.regex.Pattern;

public class TestClass {
public static void main(String[] args) {
String number ="0999666888";
int n = Integer.parseInt(number);

int sum = 0;
while (n > 0) {
	sum = sum + n % 10;
	n = n / 10;
}

short rs = Short.parseShort(sum+"");
System.out.println(rs);
short a = 10;
System.out.println(rs+a);

}
}
