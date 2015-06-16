package webinfo.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="webinfo")
@SequenceGenerator(name="userGenerator",sequenceName="HIBERNATE_SEQUENCE")
public class Webinfo {
		private int id;
		private String webname;
		private String admin;
		private String adpass;
		private int length;
		private int count;
		
		@Id
		@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="userGenerator")
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getWebname() {
			return webname;
		}
		public void setWebname(String webname) {
			this.webname = webname;
		}
		@Column(name="adminName")
		public String getAdmin() {
			return admin;
		}
		public void setAdmin(String admin) {
			this.admin = admin;
		}
		public String getAdpass() {
			return adpass;
		}
		public void setAdpass(String adpass) {
			this.adpass = adpass;
		}
		@Column(name="Messagelength")
		public int getLength() {
			return length;
		}
		public void setLength(int length) {
			this.length = length;
		}
		@Column(name="PageCount")
		public int getCount() {
			return count;
		}
		public void setCount(int count) {
			this.count = count;
		}
}
