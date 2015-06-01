package message.controller;
import message.service.MessageService;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int[] id;
	MessageService messageservice = new MessageService();
	public int[] getId() {
		return id;
	}

	public void setId(int[] id) {
		this.id = id;
	}

	@Override
	public String execute() throws Exception {
		messageservice.delete(id);
		return SUCCESS;
	}
}
