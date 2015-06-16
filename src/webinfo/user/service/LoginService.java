package webinfo.user.service;

import org.junit.Test;

import webinfo.bean.Webinfo;
import webinfo.user.dao.LoginDao;

public class LoginService {
	private LoginDao logindao = new LoginDao();
	public void login(Webinfo webinfo) {
		logindao.login(webinfo);
	}

}
