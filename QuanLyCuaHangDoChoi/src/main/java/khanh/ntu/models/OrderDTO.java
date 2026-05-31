package khanh.ntu.models;

import java.util.ArrayList;
import java.util.List;

public class OrderDTO {
	private String customerName;
    private Integer userId;
    private String paymentMethod;
    private List<ProductSelectionDTO> products = new ArrayList<>();
	public OrderDTO() {
		super();
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	public List<ProductSelectionDTO> getProducts() {
		return products;
	}
	public void setProducts(List<ProductSelectionDTO> products) {
		this.products = products;
	}
    
    
}
