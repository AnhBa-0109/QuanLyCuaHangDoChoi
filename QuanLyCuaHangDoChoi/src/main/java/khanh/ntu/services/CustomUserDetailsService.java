package khanh.ntu.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import khanh.ntu.Repositories.UserRepository;
import khanh.ntu.models.User;
@Service
public class CustomUserDetailsService implements UserDetailsService{
	@Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
    	
        User user = userRepository.findByUsername(username);
        
        if (user == null) {
            throw new UsernameNotFoundException("Không tìm thấy người dùng!");
        }
        
        if (user.getIsActive() == false) {
            throw new org.springframework.security.authentication.DisabledException("Tài khoản đã bị vô hiệu hóa!");
        }
        
        return org.springframework.security.core.userdetails.User
                .withUsername(user.getUsername())
                .password(user.getPasswordU())
                .authorities(List.of(new SimpleGrantedAuthority("ROLE_" + user.getRoleU())))
                .build();
    }
}
