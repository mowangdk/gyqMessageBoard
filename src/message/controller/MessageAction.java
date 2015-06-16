package message.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import message.bean.Message;
import message.bean.ReMessage;
import message.service.MessageService;

import com.opensymphony.xwork2.ActionSupport;

public class MessageAction extends ActionSupport {
		private MessageService ms = new MessageService(); 

		private Message message;
		
		private int id;
		
		public int getId() {
			return id;
		}


		public void setId(int id) {
			this.id = id;
		}


		public Message getMessage() {
			return message;
		}


		public void setMessage(Message message) {
			this.message = message;
		}
		private ReMessage	rmessage;
		
	
		public ReMessage getRmessage() {
			return rmessage;
		}


		public void setRmessage(ReMessage rmessage) {
			this.rmessage = rmessage;
		}


		@Override
		public String execute() throws Exception {
			HttpServletRequest request = ServletActionContext.getRequest();
			System.out.println(request.getRemoteAddr());
			message.setUserIP(request.getRemoteAddr());
			ms.addMessage(message);
			return SUCCESS;
			
		}
		public String repl()throws Exception{
			ms.update(id, rmessage);
			return SUCCESS;
		}
}
