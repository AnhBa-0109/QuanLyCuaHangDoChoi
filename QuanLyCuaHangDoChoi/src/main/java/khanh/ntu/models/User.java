package khanh.ntu.models;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "Users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "UserID")
    private Integer userId;

    @Column(name = "Username", nullable = false, length = 50, unique = true)
    private String username;

    @Column(name = "PasswordU", nullable = false, length = 100)
    private String passwordU;

    @Column(name = "FullName", length = 100)
    private String fullName;

    @Column(name = "RoleU", nullable = false, length = 20)
    private String roleU;

    @Column(name = "Phone", length = 20)
    private String phone;

    @Column(name = "Email", length = 100, unique = true)
    private String email;

    @Column(name = "Sex")
    private Boolean sex;

    @Column(name = "AvatarUrl", columnDefinition = "TEXT")
    private String avatarUrl;

    @Column(name = "BDay")
    private LocalDate bDay;

    @Column(name = "IsActive", nullable = false)
    private Boolean isActive = true;

	public User(Integer userId, String username, String passwordU, String fullName, String roleU, String phone,
			String email, Boolean sex, String avatarUrl, LocalDate bDay, Boolean isActive) {
		super();
		this.userId = userId;
		this.username = username;
		this.passwordU = passwordU;
		this.fullName = fullName;
		this.roleU = roleU;
		this.phone = phone;
		this.email = email;
		this.sex = sex;
		this.avatarUrl = avatarUrl;
		this.bDay = bDay;
		this.isActive = isActive;
	}

	public User() {
		super();
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPasswordU() {
		return passwordU;
	}

	public void setPasswordU(String passwordU) {
		this.passwordU = passwordU;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getRoleU() {
		return roleU;
	}

	public void setRoleU(String roleU) {
		this.roleU = roleU;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Boolean getSex() {
		return sex;
	}

	public void setSex(Boolean sex) {
		this.sex = sex;
	}

	public String getAvatarUrl() {
		return avatarUrl;
	}

	public void setAvatarUrl(String avatarUrl) {
		this.avatarUrl = avatarUrl;
	}

	public LocalDate getbDay() {
		return bDay;
	}

	public void setbDay(LocalDate bDay) {
		this.bDay = bDay;
	}

	public Boolean getIsActive() {
		return isActive;
	}

	public void setIsActive(Boolean isActive) {
		this.isActive = isActive;
	}

    
}
