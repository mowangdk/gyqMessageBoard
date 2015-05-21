package message;

import java.util.List;

import message.bean.Message;
import message.dao.MessageDao;

import org.junit.Test;

public class MessageTest {
	private MessageDao md = new MessageDao();
	@Test
	public void test1(){
		List<Message> list = md.get();
		System.out.println(list.toString());
	}
}
