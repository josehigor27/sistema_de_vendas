package br.com.josehigor.sistemavendas.dao;

import org.springframework.data.repository.CrudRepository;

import br.com.josehigor.sistemavendas.model.Usuario;

public interface UsuarioDAO extends CrudRepository<Usuario, Integer>{
	/**/
	public Usuario findByUsernameOrEmail(String username, String email);
}
