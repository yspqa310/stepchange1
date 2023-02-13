package com.stepchange.atf.core;

import org.openqa.selenium.WebDriver;

public class DriverManager {
	
	private static ThreadLocal<WebDriver> threadLocal = new InheritableThreadLocal<WebDriver>() ;
	public static WebDriver getDriver() { return threadLocal.get(); }
	public static void setDriver(WebDriver driver) { threadLocal.set(driver); }
	
	public static void closeDriver() {
		if(getDriver()!= null) {
			try {
				getDriver().close();
			} catch (Exception e) {
				e.printStackTrace() ;
			}
			try { getDriver().quit();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		threadLocal.remove();
	}

}
