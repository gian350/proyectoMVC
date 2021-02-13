package com.unmsm.proyectoMVC.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.unmsm.proyectoMVC.model.Usuario;

public interface UsuarioDAO extends JpaRepository<Usuario, Long>{
	
}
