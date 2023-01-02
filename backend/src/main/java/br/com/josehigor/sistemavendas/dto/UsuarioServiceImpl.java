package br.com.josehigor.sistemavendas.dto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.josehigor.sistemavendas.dao.UsuarioDAO;
import br.com.josehigor.sistemavendas.model.Usuario;
import br.com.josehigor.sistemavendas.services.IUsuarioService;

@Component
public class UsuarioServiceImpl implements IUsuarioService{
	
	@Autowired
	private UsuarioDAO dao;
	
	@Override
	public Usuario recuperarUsuario(Usuario usuario) {
		
		return dao.findByUsernameOrEmail(usuario.getUsername(), usuario.getEmail());
	}

}
