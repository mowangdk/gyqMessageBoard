package user.controller;

import user.bean.User;
import user.service.UserService;

import com.opensymphony.xwork2.ActionSupport;

public class RegistAction extends ActionSupport {
		private UserService userservice = new UserService();
		private User user;
		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}

		
		public String regist() throws Exception {
				System.out.println(user);
				userservice.save(user);
				return SUCCESS;
		}
		public String login() throws Exception{
			String str = userservice.load(user);			
			return null;
		}

}
