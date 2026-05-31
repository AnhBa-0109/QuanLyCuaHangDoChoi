package khanh.ntu.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import khanh.ntu.models.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	User findByUsername(String username);
    boolean existsByUsername(String username);  
    boolean existsByEmail(String email);
}
