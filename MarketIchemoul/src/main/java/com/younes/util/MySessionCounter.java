package com.younes.util;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionListener;

import org.springframework.stereotype.Component;

@Component
public class MySessionCounter implements HttpSessionListener{
private static int activeSessions=0;
public void sessionCreated(HttpSession se) {
	activeSessions++;
}
public void sessionDestroyed(HttpSession se) {
	if(activeSessions>0)
		activeSessions--;
}
public static int getActiveSessions() {
	return activeSessions;
}
}
