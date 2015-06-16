package webinfo.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import webinfo.bean.Webinfo;

public class WebDao {
	private SessionFactory sf;
	{
		Configuration cfg = new	Configuration().configure();
		sf = cfg.buildSessionFactory(new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build());
	}
	public void insert(Webinfo wi){
		Session session = sf.getCurrentSession();
		session.beginTransaction();
		session.save(wi);
		session.getTransaction().commit();
		
	}
	public Webinfo get(){
		Session session = sf.getCurrentSession();
		session.beginTransaction();
		Webinfo wi = (Webinfo) session.get(Webinfo.class, 5100);
		session.getTransaction().commit();
		return wi;
		
	}
	public void update(Webinfo webinfo) {
		Session session = sf.getCurrentSession();
		session.beginTransaction();
		Webinfo wi = (Webinfo) session.get(Webinfo.class, 5100);
		wi.setAdmin(webinfo.getAdmin());
		wi.setAdpass(webinfo.getAdpass());
		wi.setCount(webinfo.getCount());
		wi.setLength(webinfo.getLength());
		wi.setWebname(webinfo.getWebname());
		session.update(wi);
		session.getTransaction().commit();
	}
}
