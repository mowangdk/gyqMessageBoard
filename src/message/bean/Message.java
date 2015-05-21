package message.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity
@SequenceGenerator(name="userGenerator",sequenceName="HIBERNATE_SEQUENCE")
public class Message {
		private int id;
		private String userName;
		private String userMail;
		private String url;
		private String qq;
		private String content;
		private int face;
		private int pic;
		private int showed;
		private String postDate;
		private String userIP;
		
		public String getUserIP() {
			return userIP;
		}
		public void setUserIP(String userIP) {
			this.userIP = userIP;
		}
		@Column(columnDefinition="int(10) default 0",nullable=false)
		public int getShowed() {
			return showed;
		}
		public void setShowed(int showed) {
			this.showed = showed;
		}
		public String getPostDate() {
			return postDate;
		}
		public void setPostDate(String postDate) {
			this.postDate = postDate;
		}
		@Id
		@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="userGenerator")
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getUserMail() {
			return userMail;
		}
		public void setUserMail(String userMail) {
			this.userMail = userMail;
		}
		public String getUrl() {
			return url;
		}
		public void setUrl(String url) {
			this.url = url;
		}
		public String getQq() {
			return qq;
		}
		public void setQq(String qq) {
			this.qq = qq;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public int getFace() {
			return face;
		}
		public void setFace(int face) {
			this.face = face;
		}
		public int getPic() {
			return pic;
		}
		public void setPic(int pic) {
			this.pic = pic;
		}
}
