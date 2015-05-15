package user.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import user.bean.User;

public class UserDao {
	static SessionFactory sf;
	public UserDao() {
		Configuration cfg = new Configuration().configure();
		sf = cfg.buildSessionFactory(new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build());
	}
	public void save(User user){
		Session session = sf.getCurrentSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
	}
	public User load(User user){
	      User us = null;
		  Session session = sf.getCurrentSession();
	      session.beginTransaction();
	      String sql = "from UserB where username='"+user.getUsername()+"' and userpass="+user.getUserpass();
	      List<User> list= session.createQuery(sql).list();
	      for(int i=0;i<list.size();i++){
	    	us=list.get(i);
	      }
	      return us;
	 
	      
	}
}
