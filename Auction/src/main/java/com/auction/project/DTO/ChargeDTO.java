package com.auction.project.DTO;

public class ChargeDTO {
	private int member_money_seq;
	private String member_email;
	private int money;
	private int coupon;
	
	public int getMember_money_seq() {
		return member_money_seq;
	}
	public void setMember_money_seq(int member_money_seq) {
		this.member_money_seq = member_money_seq;
	}
	public int getCoupon() {
		return coupon;
	}
	public void setCoupon(int coupon) {
		this.coupon = coupon;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	
	 @Override
	 public String toString() {
	  return "PersonDTO [" + member_email +"," + money;
	 }  
}
