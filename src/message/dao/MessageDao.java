package message.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import message.bean.Message;

public class MessageDao {
	
	private SessionFactory sf;
	
	
	public MessageDao() {
		Configuration cfg = new	Configuration().configure();
		sf = cfg.buildSessionFactory(new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build());
		
	}

	public void save(Message message) {
		Session session = sf.getCurrentSession();
		session.beginTransaction();
		session.save(message);
		session.getTransaction().commit();
	}
	public List<Message> get(){
		Session session = sf.getCurrentSession();
		session.beginTransaction();
		Query q = session.createQuery("from Message");
		List<Message> listmessage = (List<Message>)q.list();
		return listmessage;
	}

}
