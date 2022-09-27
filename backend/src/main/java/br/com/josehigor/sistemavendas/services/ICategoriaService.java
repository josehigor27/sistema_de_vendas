package br.com.josehigor.sistemavendas.services;

import java.util.ArrayList;

import br.com.josehigor.sistemavendas.model.Categoria;

public interface ICategoriaService {

	//Este método recebe uma categoria só com o nome e vai inserir no banco
	public Categoria inserirNovaCategoria(Categoria categoria);
	
	//Este método vai alterar a categoria existente, e vai retorna-lá se o update tiver dado certo e Null caso contrário 
	public Categoria alterarCategoria(Categoria categoria);
	
	//Este método vai recuperar todas as categorias sem filtro
	public ArrayList<Categoria> recuperarTodasCategorias();
	
	//Este método vai recuperar todas as categoria por palavra chave
	public ArrayList<Categoria> recuperarPoPalavraChave(String palavraChave);
}
