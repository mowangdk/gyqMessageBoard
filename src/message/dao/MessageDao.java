package message.dao;

import java.util.List;
import java.util.Set;

import javax.validation.ConstraintViolationException;

import message.bean.Message;
import message.bean.PageInfo;
import message.bean.ReMessage;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

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
		session.getTransaction().commit();
		return listmessage;
	}

	public List<Message> pageSplit(int firstresult,int limit){
		Session session = sf.getCurrentSession();
		session.beginTransaction();
		Query q  = session.createQuery("from Message");
		q.setFirstResult(firstresult);
		q.setMaxResults(limit);
		List<Message> li = q.list();
		session.getTransaction().commit();
		return li;
	}
	public void update(ReMessage rmessage,int id) {
		Session session = sf.getCurrentSession();
		session.beginTransaction();
		Message message = (Message) session.get(Message.class,id);
		Set<ReMessage> rm = message.getRmessages();
		rm.add(rmessage);
		message.setRmessages(rm);
		session.update(message);
		session.getTransaction().commit();
	}

	public String delete(int[] id) {
		String hql = "";
		//拼接sql语句，id之间用or来连接
		for(int i=0; i<id.length;i++){
			if(i==0){
				hql = "id = "+id[i];
			}else{
				hql = hql + " or id = "+id[i];
			}
		}
		Session session =sf.getCurrentSession();
		System.out.println("delete from Message where "+hql);
		session.beginTransaction();
		Query q = session.createQuery("delete from Message where "+hql);
		try{
		q.executeUpdate();
		}catch(ConstraintViolationException e){
			String sqlException = "该浏览有回复,请先删除该留言回复";
			return sqlException;
		}
		session.getTransaction().commit();
		return null;
	}

	public Message getMessageById(int id) {
		Session session = sf.getCurrentSession();
		session.beginTransaction();
		Message message = (Message) session.get(Message.class,id);
		session.getTransaction().commit();
		return message;
	}
	public Long getRowCount(){
		Session session = sf.getCurrentSession();
		session.beginTransaction();
		Query q = session.createQuery("select count(*) from Message");
		Long pageCount = (Long) q.uniqueResult();
		session.getTransaction().commit();
		return pageCount;
		
	}

	public List<Message> getAllMessage() {
		Session session = sf.getCurrentSession();
		session.beginTransaction();
		Query q = session.createQuery("from Message");
		List<Message> list = q.list();
		session.getTransaction().commit();
		return list;
	}
}
