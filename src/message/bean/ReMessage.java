package message.bean;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

import org.hibernate.annotations.Cascade;
@Entity
@SequenceGenerator(name="userGenerator",sequenceName="HIBERNATE_SEQUENCE")
public class ReMessage {
	@Id
	private int id;
	private String reMessage;
	private String reDate;
	private Message message;
	
	@ManyToOne(cascade=CascadeType.ALL)
	public Message getMessage() {
		return message;
	}
	public void setMessage(Message message) {
		this.message = message;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="userGenerator")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getReMessage() {
		return reMessage;
	}
	public void setReMessage(String reMessage) {
		this.reMessage = reMessage;
	}
	public String getReDate() {
		return reDate;
	}
	public void setReDate(String reDate) {
		this.reDate = reDate;
	}
	
	
}
