package br.com.josehigor.sistemavendas.dao;

import org.springframework.data.repository.CrudRepository;

import br.com.josehigor.sistemavendas.model.Cliente;

public interface ClienteDAO extends CrudRepository<Cliente, Integer>{
	
	public Cliente findByEmailOrTelefone(String email, String telefone);

}
