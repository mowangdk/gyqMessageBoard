package user;

import org.junit.Test;

import user.bean.User;
import user.dao.UserDao;

public class UserTest {
	UserDao userDao = new UserDao();

	public void test1(){
		User user = new User("clannad","123456","家族",1,"my best anime");
		
		userDao.save(user);
	}
	@Test
	public void test2(){
		User user = new User("clannad","123456",null,0,null);
		User user1 = userDao.load(user);
		System.out.println(user1.getUsername());
		
	}



}
