package br.com.josehigor.sistemavendas.dto;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.josehigor.sistemavendas.dao.ProdutoDAO;
import br.com.josehigor.sistemavendas.model.Categoria;
import br.com.josehigor.sistemavendas.model.Produto;
import br.com.josehigor.sistemavendas.services.IProdutoService;

@Component
public class ProdutoServiceImpl implements IProdutoService {

	@Autowired
	private ProdutoDAO dao;

	@Override
	public Produto inserirNovoProduto(Produto produto) {
		try {
			dao.save(produto);
			return produto;

		} catch (Exception ex) {
			System.out.println("---------------------ProdutoService.inserirNovoProduto------------");
			ex.printStackTrace();
			System.out.println("------------------------------------------------------------------");
		}
		return null;
	}

	@Override
	public Produto alterarProduto(Produto produto) {
		try {
			dao.save(produto);
			return produto;

		} catch (Exception ex) {
			System.out.println("---------------------ProdutoService.alterarProduto------------");
			ex.printStackTrace();
			System.out.println("------------------------------------------------------------------");
		}
		return null;
	}

	@Override
	public ArrayList<Produto> recuperarDisponiveis() {

			return dao.findAllByDisponivel(1); // todos os produtos "1" como disponivel
	}

	@Override
	public ArrayList<Produto> recuperarTodosProdutos() {
	
		return (ArrayList<Produto>)dao.findAll();
	
	}

	@Override
	public ArrayList<Produto> recuperarPorCategoria(Categoria categoria) {
		
		return dao.findAllByDisponivelAndCategoria(1, categoria);
	}
	
	@Override
	public ArrayList<Produto> recuperarIndisponiveis() {
	
			return dao.findAllByDisponivel(0); // todos os produtos "1" como disponivel
	}

	@Override
	public Produto recuperarPorId(int id) {
		// TODO Auto-generated method stub
		return dao.findById(id).orElse(null);
	}

}
