package webinfo.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import webinfo.bean.Webinfo;
import webinfo.service.WebService;

import com.opensymphony.xwork2.ActionSupport;

public class WebAction extends ActionSupport {
	    private WebService ws = new WebService();
		private Webinfo webinfo;
		public Webinfo getWebinfo() {
			return webinfo;
		}

		public void setWebinfo(Webinfo webinfo) {
			this.webinfo = webinfo;
		}
		public String show()throws Exception {
			HttpServletRequest request = ServletActionContext.getRequest();	
			Webinfo wi = ws.findMessage();
			request.setAttribute("WebInfo",wi);
			return SUCCESS;
		}
		
		public String update(){
			System.out.println(webinfo.getAdmin()+webinfo.getAdpass());
			ws.update(webinfo);
			return SUCCESS;
		}
}
