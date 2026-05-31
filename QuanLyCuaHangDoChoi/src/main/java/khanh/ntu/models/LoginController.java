package khanh.ntu.models;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String showLoginPage(@RequestParam(required = false) String error,
                                 @RequestParam(required = false) String logout,
                                 ModelMap model) {
        if (error != null) {
            model.addAttribute("error", "Tên đăng nhập hoặc mật khẩu không đúng!");
        }
        if (logout != null) {
            model.addAttribute("success", "Đăng xuất thành công!");
        }
        return "login";
    }
}
