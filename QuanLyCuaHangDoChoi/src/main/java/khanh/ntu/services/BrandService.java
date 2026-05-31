package khanh.ntu.services;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import khanh.ntu.Repositories.BrandRepository;
import khanh.ntu.Repositories.ProductRepository;
import khanh.ntu.models.Brand;

@Service
public class BrandService {
    @Autowired 
    private BrandRepository brandRepository;
    
    @Autowired
    private ProductRepository productRepository;

    public List<Brand> getAll() {
    	return brandRepository.findAll(); 
    }
    
    public Brand getById(Integer id) { 
    	return brandRepository.findById(id).orElse(null); 
    }
    
    public void save(Brand brand) { 
    	if(brandRepository.existsByBrandCode(brand.getBrandCode())) {
    		throw new RuntimeException("Mã thương hiệu đã tồn tại!");
    	}
    	brandRepository.save(brand); 
    }
    
    public void edit(Brand brand) {
    	if (brandRepository.existsByBrandCodeAndBrandIdNot(brand.getBrandCode(), brand.getBrandId())) {
            throw new RuntimeException("Mã thương hiệu đã trùng với thương hiệu khác!");
        }
        
        Brand existing = brandRepository.findById(brand.getBrandId())
                .orElseThrow(() -> new RuntimeException("Không tìm thấy thương hiệu cần sửa!"));
        
        existing.setBrandName(brand.getBrandName());
        existing.setBrandCode(brand.getBrandCode());
        brandRepository.save(existing);
    }
    
    public void delete(Integer id) {
        long productCount = productRepository.countByBrand_BrandId(id);
        if (productCount > 0) {
            throw new IllegalStateException("Không thể xóa Thương hiệu vì đang chứa " + productCount + " sản phẩm.");
        }
        brandRepository.deleteById(id);
    }

    public Map<Integer, Long> getBrandProductCountMap() {
        return productRepository.countTotalProductsPerBrand().stream()
                .collect(Collectors.toMap(
                        row -> (Integer) row[0], 
                        row -> (Long) row[1]
                ));
    }
}