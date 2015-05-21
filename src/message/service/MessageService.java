package message.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import message.bean.Message;
import message.dao.MessageDao;

public class MessageService {
	private MessageDao messagedao = new MessageDao();
	public void addMessage(Message message) {
		message.setContent(message.getContent().replaceAll("&", "&amp;")
				.replaceAll("<", "&lt;").replaceAll(">", "&gt;")
				.replaceAll(" ", "&nbsp;").replaceAll("'", "&#39;")
				.replaceAll("\"", "&quot;").replaceAll("\n", "<br>"));
		
		
		Date date = new Date();
		SimpleDateFormat simpledate = new SimpleDateFormat("yyyy-mm-dd");
		message.setPostDate(simpledate.format(date));
		
		messagedao.save(message);
		
		
	}
	public List<Message> getAllMessage(){
		return messagedao.get();
	}
	
}
