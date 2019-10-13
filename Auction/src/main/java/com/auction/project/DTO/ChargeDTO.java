package com.auction.project.DTO;

public class ChargeDTO {
	private String member_email;
	private int money;
	private double coupon;
	
	
	
	
	
	public double getCoupon() {
		return coupon;
	}
	public void setCoupon(double coupon) {
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
