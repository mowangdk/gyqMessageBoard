package message;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import message.bean.Message;
import message.bean.ReMessage;
import message.dao.MessageDao;

import org.junit.BeforeClass;
import org.junit.Test;

public class MessageTest {
	private MessageDao md = new MessageDao();

	public void test1(){
		List<Message> list = md.get();
		Iterator it = list.iterator();
		while(it.hasNext()){
			Message message = (Message) it.next();
			System.out.println(message.getContent());
			System.out.println(message.getRmessages());
			Iterator it2 = message.getRmessages().iterator();
					while(it2.hasNext()){
						ReMessage rmessage = (ReMessage) it2.next();
						System.out.println(rmessage.getReMessage());
					}
		}
	}

	@Test
	public void test2(){
		Message message = new Message();
		message.setContent("lalalala");
		message.setFace(1);
		message.setPic(1);
		message.setPostDate("20141010");
		ReMessage rmessage = new ReMessage();
		rmessage.setReDate("20141010");
		rmessage.setReMessage("hahahahah");
		Set<ReMessage> rmessages = new HashSet<ReMessage>();
		rmessages.add(rmessage);
		message.setRmessages(rmessages);
		md.save(message);
		
	}
	@Test
	public void test3(){
		int[] id = new int[]{1500,1700};
		md.delete(id);
		
	}
	
	
}
