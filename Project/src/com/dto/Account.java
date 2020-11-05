package com.dto;

public class Account {
      private int acc_id;
      private String ifsc;
      private String cif;
      private String acc;
      private String amt;
      private String bran;
      private String email;
      private String ano;
      private String pno;
      private String mno;
      private int userid;
	public Account() {
		}
	public int getAcc_id() {
		return acc_id;
	}
	public void setAcc_id(int acc_id) {
		this.acc_id = acc_id;
	}
	public String getIfsc() {
		return ifsc;
	}
	public void setIfsc(String ifsc) {
		this.ifsc = ifsc;
	}
	public String getCif() {
		return cif;
	}
	public void setCif(String cif) {
		this.cif = cif;
	}
	public String getAcc() {
		return acc;
	}
	public void setAcc(String acc) {
		this.acc = acc;
	}
	public String getAmt() {
		return amt;
	}
	public void setAmt(String amt) {
		this.amt = amt;
	}
	public String getBran() {
		return bran;
	}
	public void setBran(String bran) {
		this.bran = bran;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAno() {
		return ano;
	}
	public void setAno(String ano) {
		this.ano = ano;
	}
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	
	public String getMno() {
		return mno;
	}
	public void setMno(String mno) {
		this.mno = mno;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	@Override
	public String toString() {
		return "Account [acc_id=" + acc_id + ", ifsc=" + ifsc + ", cif=" + cif + ", acc=" + acc + ", amt=" + amt
				+ ", bran=" + bran + ", email=" + email + ", ano=" + ano + ", pno=" + pno + ", mno=" + mno + ", userid="
				+ userid + "]";
	}	
}

