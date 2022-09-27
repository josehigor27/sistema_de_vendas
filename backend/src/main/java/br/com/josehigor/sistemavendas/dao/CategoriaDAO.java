package br.com.josehigor.sistemavendas.dao;

import java.util.ArrayList;

import org.springframework.data.repository.CrudRepository;

import br.com.josehigor.sistemavendas.model.Categoria;

public interface CategoriaDAO extends CrudRepository<Categoria, Integer>{
	//consultas customizadas
	
   // consulta por palavra-chave
	
	public ArrayList<Categoria> findByNomeContaining(String palavra);
}
