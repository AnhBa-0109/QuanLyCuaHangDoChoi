package khanh.ntu.Repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import khanh.ntu.models.Order;
import khanh.ntu.models.OrderDetail;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer>{
	List<OrderDetail> findByOrder(Order order);
}
