package com.auction.project.DTO;

public class E_ListDTO {
	private String e_num;
	private String e_product;
    private String member_email;
    private String name;
    private int e_count;
    private String e_input_date;
    private int seq;
    
    public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public final String getE_num() {
		return e_num;
	}
	public final void setE_num(String e_num) {
		this.e_num = e_num;
	}
	public final String getE_product() {
		return e_product;
	}
	public final void setE_product(String e_product) {
		this.e_product = e_product;
	}
	public final String getMember_email() {
		return member_email;
	}
	public final void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public final String getName() {
		return name;
	}
	public final void setName(String name) {
		this.name = name;
	}
	public final int getE_count() {
		return e_count;
	}
	public final void setE_count(int e_count) {
		this.e_count = e_count;
	}
	public final String getE_input_date() {
		return e_input_date;
	}
	public final void setE_input_date(String e_input_date) {
		this.e_input_date = e_input_date;
	}
    
    
}
