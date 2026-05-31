package khanh.ntu.models;

import java.time.LocalDateTime;
import java.util.List;

public class OrderDetailDTO {
    private Integer orderId;
    private String customerName;
    private String paymentMethod;
    private String staffName;
    private String avatarUrl;
    private LocalDateTime orderDate;
    private Integer subTotal;
    private Integer total;
    private Boolean status;
    private List<OrderItem> products;

    public static class OrderItem {
        private String productName;
        private String productCode;
        private String imageUrl;
        private String brandName;
        private String categoryName;
        private Integer price;
        private Integer quantity;
		public String getProductName() {
			return productName;
		}
		public void setProductName(String productName) {
			this.productName = productName;
		}
		public String getProductCode() {
			return productCode;
		}
		public void setProductCode(String productCode) {
			this.productCode = productCode;
		}
		public String getImageUrl() {
			return imageUrl;
		}
		public void setImageUrl(String imageUrl) {
			this.imageUrl = imageUrl;
		}
		public String getBrandName() {
			return brandName;
		}
		public void setBrandName(String brandName) {
			this.brandName = brandName;
		}
		public String getCategoryName() {
			return categoryName;
		}
		public void setCategoryName(String categoryName) {
			this.categoryName = categoryName;
		}
		public Integer getPrice() {
			return price;
		}
		public void setPrice(Integer price) {
			this.price = price;
		}
		public Integer getQuantity() {
			return quantity;
		}
		public void setQuantity(Integer quantity) {
			this.quantity = quantity;
		}
        
    }

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public String getAvatarUrl() {
		return avatarUrl;
	}

	public void setAvatarUrl(String avatarUrl) {
		this.avatarUrl = avatarUrl;
	}

	public LocalDateTime getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(LocalDateTime orderDate) {
		this.orderDate = orderDate;
	}

	public Integer getSubTotal() {
		return subTotal;
	}

	public void setSubTotal(Integer subTotal) {
		this.subTotal = subTotal;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public List<OrderItem> getProducts() {
		return products;
	}

	public void setProducts(List<OrderItem> products) {
		this.products = products;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

   
}