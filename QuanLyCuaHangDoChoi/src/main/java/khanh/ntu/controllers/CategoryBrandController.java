package khanh.ntu.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import khanh.ntu.models.Brand;
import khanh.ntu.models.Category;
import khanh.ntu.models.User;
import khanh.ntu.services.BrandService;
import khanh.ntu.services.CategoryService;
import khanh.ntu.services.UserService;

@Controller
public class CategoryBrandController {
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private BrandService brandService;
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/admin/category")
	public String showCategoryPage(ModelMap m) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String username = auth.getName();   
	    User currentUser = userService.getByUsername(username);
	    
		m.addAttribute("categories", categoryService.getAll());
		m.addAttribute("brands", brandService.getAll());
		m.addAttribute("currentUser", currentUser);
		m.addAttribute("brandProductCount", brandService.getBrandProductCountMap());
        m.addAttribute("categoryProductCount", categoryService.getCategoryProductCountMap());
		return "category_template/categoryPage";
	}
	
	//save cho brand
	@PostMapping("/admin/brand/save")
	public String saveBrand(@ModelAttribute("brand") Brand b, RedirectAttributes redirectAttributes) {
		try {
			if (b.getBrandId() != null) {
				redirectAttributes.addFlashAttribute("successMessage", "Đã sửa thông tin thành công!");
	            brandService.edit(b);
	        } else {
	        	redirectAttributes.addFlashAttribute("successMessage", "Đã thêm thành công!");
	            brandService.save(b);
	        }
		} catch (RuntimeException e) {
			redirectAttributes.addFlashAttribute("errorMessage", e.getMessage());
		}
		return "redirect:/admin/category";
	}
	
	//save cho category
	@PostMapping("/admin/category/save")
	public String saveCategory(@ModelAttribute("category") Category c, RedirectAttributes redirectAttributes) {
		try {
			if (c.getCategoryId() != null) {
				redirectAttributes.addFlashAttribute("successMessage", "Đã sửa thông tin thành công!");
	            categoryService.edit(c);
	        } else {
				redirectAttributes.addFlashAttribute("successMessage", "Đã thêm thành công!");
	            categoryService.save(c);
	        }
		} catch (RuntimeException e) {
			redirectAttributes.addFlashAttribute("errorMessage", e.getMessage());
		}
		return "redirect:/admin/category";
	}
	
	@GetMapping("/admin/brands/delete/{id}")
    public String deleteBrand(@PathVariable Integer id, RedirectAttributes redirectAttributes) {
        try {
            brandService.delete(id);
            redirectAttributes.addFlashAttribute("successMessage", "Đã xóa Thương hiệu thành công!");
        } catch (IllegalStateException e) {
            redirectAttributes.addFlashAttribute("errorMessage", e.getMessage());
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Đã xảy ra lỗi không xác định!");
        }
        return "redirect:/admin/category";
    }

    // 3. Xử lý xóa Category
    @GetMapping("/admin/categories/delete/{id}")
    public String deleteCategory(@PathVariable Integer id, RedirectAttributes redirectAttributes) {
        try {
            categoryService.delete(id);
            redirectAttributes.addFlashAttribute("successMessage", "Đã xóa Danh mục thành công!");
        } catch (IllegalStateException e) {
            redirectAttributes.addFlashAttribute("errorMessage", e.getMessage());
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Đã xảy ra lỗi không xác định!");
        }
        return "redirect:/admin/category";
    }
	
}
