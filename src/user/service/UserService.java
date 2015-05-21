package user.service;

import user.bean.User;
import user.dao.UserDao;

public class UserService {
	private UserDao userdao = new UserDao();
	public void save(User user){
			
		userdao.save(user);
		
	}
	public String load(User user){
		User user1 = userdao.load(user);
		if(user1.getIsadmin()==1){
			return "admin";
			
		}else if(user1.getIsadmin()==0){
			return "user";
		}
		return "";
	}
	
	
}
