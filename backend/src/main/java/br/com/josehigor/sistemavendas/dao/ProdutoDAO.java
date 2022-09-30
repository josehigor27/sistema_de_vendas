package br.com.josehigor.sistemavendas.dao;

import java.util.ArrayList;

import org.springframework.data.repository.CrudRepository;

import br.com.josehigor.sistemavendas.model.Categoria;
import br.com.josehigor.sistemavendas.model.Produto;

public interface ProdutoDAO extends CrudRepository<Produto, Integer>{
	
	//recupera todos os produtos relacionados a categoria passada
	public ArrayList<Produto> findAllByCategoria(Categoria categoria);
	
	//recuperar todos os produtos disponiveis
	public ArrayList<Produto> findAllByDisponivel(int disponivel);
	
	//recuperar todos os produtos disponiveis relacionados a uma categoria especifica
	public ArrayList<Produto> findAllByDisponivelAndCategoria(int disponivel, Categoria categoria);

}
