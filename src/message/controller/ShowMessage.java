package message.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import message.bean.Message;
import message.service.MessageService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ShowMessage extends ActionSupport {
	private MessageService ms= new MessageService(); 
	public String execute() throws Exception {
		List<Message> list = ms.getAllMessage();
		ActionContext.getContext().getSession().put("ml", list);
		return SUCCESS;
	}

}
