package webinfo.user.dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import webinfo.bean.Webinfo;

public class LoginDao {
	private SessionFactory sf;
	public LoginDao() {
		Configuration cfg = new	Configuration().configure();
		sf = cfg.buildSessionFactory(new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build());
	}
	public void login(Webinfo webinfo) {
		Session session = sf.getCurrentSession();
		session.beginTransaction();
		Query q = session.createQuery("from Webinfo where admin=? and adpass=?");
		q.setString(0, webinfo.getAdmin());
		q.setString(1, webinfo.getAdpass());
		List<Webinfo> list = q.list();
		Iterator it = list.iterator();
		while(it.hasNext()){
			System.out.println(it.next());
		}
		session.getTransaction().commit();
	}

}
