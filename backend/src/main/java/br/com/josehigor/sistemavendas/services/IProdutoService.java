package br.com.josehigor.sistemavendas.services;

import java.util.ArrayList;

import br.com.josehigor.sistemavendas.model.Categoria;
import br.com.josehigor.sistemavendas.model.Produto;

public interface IProdutoService {
	
	public Produto inserirNovoProduto(Produto produto);
	
	public Produto alterarProduto(Produto produto);
	
	public ArrayList<Produto> recuperarDisponiveis();
	
	public ArrayList<Produto> recuperarTodosProdutos();
	
	public ArrayList<Produto> recuperarPorCategoria(Categoria categoria);
	
	public ArrayList<Produto> recuperarIndisponiveis();

}
