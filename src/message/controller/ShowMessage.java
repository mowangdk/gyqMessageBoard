package message.controller;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import message.bean.Message;
import message.bean.PageInfo;
import message.service.MessageService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ShowMessage extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private MessageService ms= new MessageService(); 
	private PageInfo pi = new PageInfo();
	private int id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public PageInfo getPi() {
		return pi;
	}
	public void setPi(PageInfo pi) {
		this.pi = pi;
	}
	public String execute() throws Exception {
		long Count = ms.getRowCount();//取出总行数
		if(Count%5 !=0){
			pi.setPageCount((int)Count/5+1);
		}else{
			pi.setPageCount((int)Count/5);
		}
		pi.setRowCount((int)Count);
		List<Message> list = ms.getPageMessage(pi);
		ActionContext.getContext().getSession().put("ml", list);
		ActionContext.getContext().getSession().put("pi", pi);
		return SUCCESS;
	}
	public String getMessageById()throws Exception{
		Message message = ms.getMessageById(id);
		ActionContext.getContext().getSession().put("ms", message);
		return SUCCESS;
	}
	public String getAllMessage(){
		List<Message> list = ms.getAllMessage();
		ServletActionContext.getRequest().setAttribute("allMessage", list);
		return SUCCESS;
	}
}
