/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tecsup.security.controller.security;


import com.tecsup.security.dao.UsuarioDAO;
import com.tecsup.security.model.Usuario;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author alumno
 */
@Service("userDetailsService")
@Transactional(readOnly = true)
public class UserDetailsServiceImp implements UserDetailsService {    
    @Autowired
    private UsuarioDAO usuarioDAO;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Usuario u = usuarioDAO.findByLogin(username);  
        System.out.println(u.getUsername());          
        
        if (u == null) {
            throw new UsernameNotFoundException("Usuario no encontrado");
        }      

        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority(u.getRol()));
        return new User(username, u.getPassword(), authorities);
    }   
}
