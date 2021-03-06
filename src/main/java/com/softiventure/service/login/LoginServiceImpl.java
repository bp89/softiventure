package com.softiventure.service.login;

import com.softiventure.beans.login.UserRole;
import com.softiventure.beans.login.Users;
import com.softiventure.dao.login.LoginDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service("loginService")
public class LoginServiceImpl implements UserDetailsService {

    @Autowired
    LoginDao loginDao;

    @Override
    public UserDetails loadUserByUsername(String username)	throws UsernameNotFoundException {
        Users user = loginDao.findByUserName(username);
        List<GrantedAuthority> authorities = buildUserAuthority(user.getUserRole());
        return buildUserForAuthentication(user, authorities);
    }

    private User buildUserForAuthentication(Users user,
                                            List<GrantedAuthority> authorities) {
        return new User(user.getUsername(), user.getPassword(),
                user.isEnabled(), true, true, true, authorities);
    }

    private List<GrantedAuthority> buildUserAuthority(Set<UserRole> userRoles) {
        Set<GrantedAuthority> setAuths = new HashSet<GrantedAuthority>();
        // Build user's authorities
        for (UserRole userRole : userRoles) {
            setAuths.add(new SimpleGrantedAuthority(userRole.getRole()));
        }
        List<GrantedAuthority> Result = new ArrayList<GrantedAuthority>(
                setAuths);
        return Result;
    }

    public String providePassword(String username)
    {
        Users user = loginDao.findByUserName(username);
        String password = user.getPassword();
        //System.out.println(password);
        return password;
    }
}
