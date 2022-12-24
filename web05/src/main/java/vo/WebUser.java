package vo;

import java.io.Serializable;

// -- 웹 유저 객체
public class WebUser implements Serializable{
	
	// -- 아이디
	private String web_id;
	// -- 이름
	private String web_name;
	// -- 비밀번호
	private String web_pwd;
	// -- 전화번호
	private String web_cel;
	// -- 이메일
	private String web_email;
	// -- 자기소개
	private String web_introduce;

	public String getWeb_id() {
		return web_id;
	}
	public void setWeb_id(String web_id) {
		this.web_id = web_id;
	}
	public String getWeb_name() {
		return web_name;
	}
	public void setWeb_name(String web_name) {
		this.web_name = web_name;
	}
	public String getWeb_pwd() {
		return web_pwd;
	}
	public void setWeb_pwd(String web_pwd) {
		this.web_pwd = web_pwd;
	}
	public String getWeb_cel() {
		return web_cel;
	}
	public void setWeb_cel(String web_cel) {
		this.web_cel = web_cel;
	}
	public String getWeb_email() {
		return web_email;
	}
	public void setWeb_email(String web_email) {
		this.web_email = web_email;
	}
	public String getWeb_introduce() {
		return web_introduce;
	}
	public void setWeb_introduce(String web_introduce) {
		this.web_introduce = web_introduce;
	}
	
	
}
