package khanh.ntu.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import khanh.ntu.models.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer>{

	boolean existsByCategoryCode(String categoryCode);
    boolean existsByCategoryCodeAndCategoryIdNot(String categoryCode, Integer categoryId);
}
