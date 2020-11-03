package com.dto;

public class Expense {
	private int expenseId;
	private String itemName;
	private String purchaseDate;
	private float price;
	private int userId;
	
	public Expense() {
	}
	
	public int getExpenseId() {
		return expenseId;
	}
	public void setExpenseId(int expenseId) {
		this.expenseId = expenseId;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(String purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "expense [expenseId=" + expenseId + ", itemName=" + itemName + ", purchaseDate=" + purchaseDate
				+ ", price=" + price + "]";
	}	
}
