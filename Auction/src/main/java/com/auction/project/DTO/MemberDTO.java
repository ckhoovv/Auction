package com.auction.project.DTO;

public class MemberDTO {
	private String email;		//사용자 이메일
	private String pw;			//사용자 비밀번호
	private String name;		//사용자 이름
	private String tel;			//사용자 전화번호
	private String birth;		//사용자 생일
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
}
