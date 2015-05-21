package message.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import message.bean.Message;
import message.service.MessageService;

import com.opensymphony.xwork2.ActionSupport;

public class MessageAction extends ActionSupport {
		private MessageService ms = new MessageService(); 

		private Message message;
		
	
		public Message getMessage() {
			return message;
		}


		public void setMessage(Message message) {
			this.message = message;
		}


		@Override
		public String execute() throws Exception {
			HttpServletRequest request = ServletActionContext.getRequest();
			System.out.println(request.getRemoteAddr());
			message.setUserIP(request.getRemoteAddr());
			ms.addMessage(message);
			return SUCCESS;
			
		}
}
