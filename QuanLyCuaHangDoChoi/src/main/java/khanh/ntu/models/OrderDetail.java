package khanh.ntu.models;

import jakarta.persistence.*;

@Entity
@Table(name = "OrderDetails")
public class OrderDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ODetailID")
    private Integer oDetailId;

    @ManyToOne
    @JoinColumn(name = "OrderID")
    private Order order;

    @ManyToOne
    @JoinColumn(name = "ProductID")
    private Product product;

    @Column(name = "Quantity")
    private Integer quantity;

    @Column(name = "Price")
    private Integer price;

	public OrderDetail(Integer oDetailId, Order order, Product product, Integer quantity, Integer price) {
		super();
		this.oDetailId = oDetailId;
		this.order = order;
		this.product = product;
		this.quantity = quantity;
		this.price = price;
	}

	public OrderDetail() {
		super();
	}

	public Integer getoDetailId() {
		return oDetailId;
	}

	public void setoDetailId(Integer oDetailId) {
		this.oDetailId = oDetailId;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}
    
    
}
