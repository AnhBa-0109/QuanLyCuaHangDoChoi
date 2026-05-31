package khanh.ntu.models;

import jakarta.persistence.*;

@Entity
@Table(name = "Brand")
public class Brand {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "BrandID")
    private Integer brandId;

    @Column(name = "BrandName", nullable = false, length = 100)
    private String brandName;

    @Column(name = "BrandCode", length = 50)
    private String brandCode;

	public Brand(Integer brandId, String brandName, String brandCode) {
		super();
		this.brandId = brandId;
		this.brandName = brandName;
		this.brandCode = brandCode;
	}

	public Brand() {
		super();
	}

	public Integer getBrandId() {
		return brandId;
	}

	public void setBrandId(Integer brandId) {
		this.brandId = brandId;
	}

	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public String getBrandCode() {
		return brandCode;
	}

	public void setBrandCode(String brandCode) {
		this.brandCode = brandCode;
	}
}