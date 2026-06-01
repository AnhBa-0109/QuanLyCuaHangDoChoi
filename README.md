# 🧸 Quản Lý Cửa Hàng Đồ Chơi

Hệ thống quản lý cửa hàng đồ chơi được xây dựng bằng **Java Spring Boot**, hỗ trợ quản lý sản phẩm, đơn hàng và khách hàng một cách hiệu quả.

---

## 📋 Mục Lục

- [Giới thiệu](#giới-thiệu)
- [Tính năng](#tính-năng)
- [Công nghệ sử dụng](#công-nghệ-sử-dụng)
- [Yêu cầu hệ thống](#yêu-cầu-hệ-thống)
- [Cài đặt & Chạy dự án](#cài-đặt--chạy-dự-án)
- [Cấu trúc dự án](#cấu-trúc-dự-án)
- [Tác giả](#tác-giả)

---

## 📖 Giới thiệu

**Quản Lý Cửa Hàng Đồ Chơi** là một ứng dụng web cho phép chủ cửa hàng dễ dàng quản lý toàn bộ hoạt động kinh doanh: từ danh mục sản phẩm, quản lý tồn kho, đến xử lý đơn hàng và thông tin khách hàng. Dự án được phát triển theo kiến trúc **Layered Architecture** chuẩn Spring Boot gồm 4 tầng: **Controller – Service – Repository – Model**, kết hợp **Thymeleaf** làm template engine để render giao diện phía server.

---

## ✨ Tính Năng

- **Quản lý sản phẩm** – Thêm, sửa, xóa và tìm kiếm sản phẩm đồ chơi
- **Quản lý danh mục** – Phân loại sản phẩm theo từng nhóm hàng
- **Quản lý tồn kho** – Theo dõi số lượng hàng tồn theo thời gian thực
- **Quản lý đơn hàng** – Tạo và theo dõi trạng thái đơn hàng
- **Quản lý khách hàng** – Lưu trữ và tra cứu thông tin khách hàng
- **Thống kê & Báo cáo** – Thống kê doanh thu, sản phẩm bán chạy và tình trạng tồn kho
- **Giao diện web** – Giao diện thân thiện, dễ sử dụng trên trình duyệt

---

## 🛠️ Công Nghệ Sử Dụng

| Kiến trúc   | Layered Architecture (Controller – Service – Repository – Model) |
| Thành phần  | Công nghệ                        |
|-------------|----------------------------------|
| Backend     | Java Spring Boot                 |
| Frontend    | Thymeleaf, HTML, CSS, JavaScript |
| Database    | MySQL                            |
| ORM         | Spring Data JPA (Hibernate)      |
| Server      | Apache Tomcat (Embedded)         |
| Build tool  | Maven                            |
| IDE         | Eclipse IDE                      |

---

## 💻 Yêu Cầu Hệ Thống

- **JDK** 17 trở lên (khuyến nghị)
- **Maven** 3.6+
- **MySQL** 8.x
- **Eclipse IDE** hoặc IntelliJ IDEA
- Trình duyệt web hiện đại (Chrome, Firefox, Edge, ...)

---

## 🚀 Cài Đặt & Chạy Dự Án

### 1. Clone repository

```bash
git clone https://github.com/AnhBa-0109/QuanLyCuaHangDoChoi.git
```

### 2. Cấu hình Database

Tạo database trong MySQL:

```sql
CREATE DATABASE quanly_dochoi;
```

Cập nhật thông tin kết nối trong file `src/main/resources/application.properties`:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/quanly_dochoi?useSSL=false&serverTimezone=UTC
spring.datasource.username=root
spring.datasource.password=your_password
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

### 3. Build & Chạy dự án

**Bằng Maven CLI:**

```bash
cd QuanLyCuaHangDoChoi
mvn spring-boot:run
```

**Bằng Eclipse:**

- Import project: `File` → `Import` → `Existing Maven Projects`
- Click chuột phải vào project → `Run As` → `Spring Boot App`

### 4. Truy cập ứng dụng

Mở trình duyệt và truy cập:

```
http://localhost:8080/admin
```

---

## 📁 Cấu Trúc Dự Án

```
QuanLyCuaHangDoChoi/
├── .metadata/                          # Metadata Eclipse workspace
└── QuanLyCuaHangDoChoi/                # Thư mục dự án chính
    ├── pom.xml                         # Cấu hình Maven & dependencies
    └── src/
        └── main/
            ├── java/
            │   └── com/example/...
            │       ├── model/          # Entity classes (JPA)
            │       ├── repository/     # Spring Data JPA Repository
            │       ├── service/        # Business logic
            │       ├── controller/     # Spring MVC Controller
            │       └── ...Application.java  # Entry point
            └── resources/
                ├── application.properties  # Cấu hình ứng dụng
                ├── static/             # CSS, JS, hình ảnh tĩnh
                └── templates/          # Thymeleaf HTML templates
```

---

## 👤 Tác Giả

**AnhBa-0109**
- GitHub: [@AnhBa-0109](https://github.com/AnhBa-0109)

---

## 📄 Giấy Phép

Dự án này được phát triển cho mục đích học tập. Mọi đóng góp và phản hồi đều được hoan nghênh!

## Video giới thiệu đề tài
[![Xem demo](https://img.youtube.com/vi/xyWXlmjNumo/0.jpg)](https://www.youtube.com/watch?v=xyWXlmjNumo)
