package webinfo.user.controller;

import webinfo.bean.Webinfo;
import webinfo.user.service.LoginService;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private Webinfo webinfo;
	private LoginService logservice = new LoginService();
	public Webinfo getWebinfo() {
		return webinfo;
	}
	public void setWebinfo(Webinfo webinfo) {
		this.webinfo = webinfo;
	}
	public String login() throws Exception {
		System.out.println(webinfo.getAdpass());
		logservice.login(webinfo);
		return SUCCESS;
	}
	
}
