package khanh.ntu.models;

import jakarta.persistence.*;

@Entity
@Table(name = "Category")
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "CategoryID")
    private Integer categoryId;

    @Column(name = "CategoryName", length = 100)
    private String categoryName;

    @Column(name = "CategoryCode", length = 50)
    private String categoryCode;

	public Category(Integer categoryId, String categoryName, String categoryCode) {
		super();
		this.categoryId = categoryId;
		this.categoryName = categoryName;
		this.categoryCode = categoryCode;
	}

	public Category() {
		super();
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}

    

    
}
