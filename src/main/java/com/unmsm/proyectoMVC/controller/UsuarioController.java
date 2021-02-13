package com.unmsm.proyectoMVC.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.unmsm.proyectoMVC.dao.UsuarioDAO;
import com.unmsm.proyectoMVC.model.Usuario;


@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioDAO usuarioDAO;
	
	//GET
	@RequestMapping(value="/listaUsuarios", method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("listaUsuarios");
		List<Usuario> listUsers = usuarioDAO.findAll();
		model.addObject("listUsers",listUsers);
		return model;
	}
	
	@RequestMapping(value="/addUsuario", method=RequestMethod.GET)
	 public ModelAndView addUsuario() {
	  ModelAndView model = new ModelAndView();
	  
	  Usuario user = new Usuario();
	  model.addObject("addUser", user);
	  model.setViewName("ingresarUsuario");
	  
	  return model;
	 }
	
	
}
