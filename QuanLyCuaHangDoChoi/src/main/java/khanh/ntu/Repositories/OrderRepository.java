package khanh.ntu.Repositories;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import khanh.ntu.models.Order;

public interface OrderRepository extends JpaRepository<Order, Integer>{

	@Query("SELECT FUNCTION('DATE_FORMAT', o.orderDate, '%d/%m') as label, SUM(o.totalAmount) as value " +
	       "FROM Order o " +
	       "WHERE o.orderDate >= :startDate AND o.status = true " +
	       "GROUP BY FUNCTION('DATE_FORMAT', o.orderDate, '%d/%m') " +
	       "ORDER BY label ASC")
	List<Object[]> getRevenueChartData(Date startDate);

	@Query("SELECT SUM(o.totalAmount) FROM Order o WHERE o.orderDate >= :start AND o.orderDate <= :end AND o.status = true")
	Double getRevenueBetween(@Param("start") LocalDateTime start, @Param("end") LocalDateTime end);

	@Query("SELECT COUNT(o) FROM Order o WHERE o.orderDate >= :start AND o.orderDate <= :end AND o.status = true")
	Integer countOrdersBetween(@Param("start") LocalDateTime start, @Param("end") LocalDateTime end);

	@Query("SELECT o FROM Order o WHERE " +
	        "(:search IS NULL OR o.customerName LIKE %:search% " +
	        "OR o.user.fullName LIKE %:search% " +
	        "OR CAST(o.orderId AS string) LIKE %:search%) " +
	        "AND (:fromDate IS NULL OR o.orderDate >= :fromDate) " +
	        "AND (:toDate IS NULL OR o.orderDate <= :toDate)")
	Page<Order> searchAndFilterOrders(
	        @Param("search") String search,
	        @Param("fromDate") LocalDateTime fromDate,
	        @Param("toDate") LocalDateTime toDate,
	        Pageable pageable
	);
}
