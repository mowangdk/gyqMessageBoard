package message.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import message.bean.Message;
import message.bean.PageInfo;
import message.bean.ReMessage;
import message.dao.MessageDao;

public class MessageService {
	private MessageDao messagedao = new MessageDao();

	public void addMessage(Message message) {
		message.setContent(message.getContent().replaceAll("&", "&amp;")
				.replaceAll("<", "&lt;").replaceAll(">", "&gt;")
				.replaceAll(" ", "&nbsp;").replaceAll("'", "&#39;")
				.replaceAll("\"", "&quot;").replaceAll("\n", "<br>"));
		
		
		Date date = new Date();
		SimpleDateFormat simpledate = new SimpleDateFormat("yyyy-MM-dd");
		message.setPostDate(simpledate.format(date));
		
		messagedao.save(message);
		
		
	}
	public List<Message> getPageMessage(PageInfo pageinfo){
	
	
		return messagedao.pageSplit((pageinfo.getPage()-1)*5, 5);
	}
	public void delete(int[] id) {
		
		messagedao.delete(id);
	}
	public Message getMessageById(int id){
		return messagedao.getMessageById(id);
	}
	public void update(int id,ReMessage rmessage){
		messagedao.update(rmessage, id);
	}
	public long getRowCount() {
	
		return messagedao.getRowCount();
	}
	public List<Message> getAllMessage() {
		 return messagedao.getAllMessage();
	}
}
