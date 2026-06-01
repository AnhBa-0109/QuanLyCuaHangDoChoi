package khanh.ntu.services;

import khanh.ntu.Repositories.ProductRepository;
import khanh.ntu.models.Product;
import khanh.ntu.models.ProductSalesDTO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

@Service
public class ProductService {
    @Autowired 
    private ProductRepository productRepository;
    
    @Autowired
    private BrandService brandService;

    @Autowired
    private CategoryService categoryService;

    public List<Product> getAll() { 
    	return productRepository.findAll(); 
    }
    
    public Product getById(Integer id) { 
    	return productRepository.findById(id).orElse(null); 
    }
    
    @Transactional
    public void save(Product prod, MultipartFile productImage) throws IOException{
    	
    	if (productImage != null && !productImage.isEmpty()) {
            String fileName = productImage.getOriginalFilename();
            String uploadDir = "D:/Learn/Web Exercises/QuanLyCuaHangDoChoi/QuanLyCuaHangDoChoi/Images/Products";

            Path uploadPath = Paths.get(uploadDir);
            if (!Files.exists(uploadPath)) {
                Files.createDirectories(uploadPath);
            }
            Files.copy(productImage.getInputStream(),
                       uploadPath.resolve(fileName),
                       StandardCopyOption.REPLACE_EXISTING);
            prod.setImageUrl("/Images/Products/" + fileName);
        }
    	
    	prod.setIsActive(true);
    	
    	Product savedProd = productRepository.save(prod); 
        
    	String brandCode = brandService.getById(savedProd.getBrand().getBrandId()).getBrandCode();
        String categoryCode = categoryService.getById(savedProd.getCategory().getCategoryId()).getCategoryCode();
        
        savedProd.setProductCode(String.format("%s-%s-%04d", brandCode, categoryCode, savedProd.getProductId()));

        productRepository.save(savedProd);
    }
    
    public void delete(Integer id) { 
    	Product product = productRepository.findById(id).orElse(null);
    	
    	if(product != null)
    	{
    		product.setQuantity(0);
    		product.setIsActive(false);
    	}
    	productRepository.save(product);
    }
    
    public Page<Product> getFilteredAndPaginatedProducts(Integer brandId, Integer categoryId, String keyword, String status, Pageable pageable) {
        String cleanKeyword = (keyword != null && !keyword.trim().isEmpty()) ? keyword.trim() : null;
        String cleanStatus = (status != null && !status.trim().isEmpty()) ? status.trim() : null;
        
        return productRepository.findProductsWithFilters(brandId, categoryId, cleanKeyword, cleanStatus, pageable);
    }
    
    public long countTotalProducts() {
        return productRepository.countActiveProducts();
    }

    public long countLowStockProducts() {
        return productRepository.countLowStockProducts();
    }

    public List<ProductSalesDTO> getTopSellingProducts(int limit) {
        return productRepository.findTopSellingProducts(PageRequest.of(0, limit));
    }
}
