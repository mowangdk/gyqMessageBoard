package webinfo.service;

import org.junit.Test;

import webinfo.bean.Webinfo;
import webinfo.dao.WebDao;

public class WebService {
	private WebDao wd = new WebDao();
	public Webinfo findMessage() {
		Webinfo wi = wd.get();
		return wi;
	}
	
	@Test
	public void insert(){
		Webinfo wi = new Webinfo();
		wi.setAdmin("geyingqi");
		wi.setAdpass("123456");
		wi.setCount(3);
		wi.setLength(30);
		wi.setWebname("gyq's message");
		wd.insert(wi);
	}

	public void update(Webinfo webinfo) {
		wd.update(webinfo);
		
	}
}
