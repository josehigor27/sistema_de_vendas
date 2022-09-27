package br.com.josehigor.sistemavendas.dto;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.josehigor.sistemavendas.dao.CategoriaDAO;
import br.com.josehigor.sistemavendas.model.Categoria;
import br.com.josehigor.sistemavendas.services.ICategoriaService;

/*Classe injetável para que o controller não faça acesso direto ao DAO, 
 * pois pode ser que a classe da CategoriaController precise de alguma regra de negócio
 * antes de fazer alguma operação no banco de dados*/

@Component
public class CategoriaServiceImpl implements ICategoriaService{
	//
	@Autowired
	private CategoriaDAO dao;

	@Override
	public Categoria inserirNovaCategoria(Categoria categoria) {
		try {
			if(categoria.getNome() != null && categoria.getNome().trim().length()>0) {
				dao.save(categoria);
				return categoria;
			}
			
		} catch(IllegalArgumentException ex) {
			System.out.println("DEBUG = " + ex.getMessage());
		} catch(Exception ex) {
			System.out.println("DEBUG = " + ex.getMessage());
		}
		return null;
	}

	@Override
	public Categoria alterarCategoria(Categoria categoria) {
		try {
			if(categoria.getId() != null && categoria.getNome()!=null && categoria.getNome().trim().length()>0) {
				dao.save(categoria);
				return categoria;
			}
			
		} catch(IllegalArgumentException ex) {
			System.out.println("DEBUG = " + ex.getMessage());
		} catch(Exception ex) {
			System.out.println("DEBUG = " + ex.getMessage());
		}
		return null;
	}

	@Override
	public ArrayList<Categoria> recuperarTodasCategorias() {
		try {
			
			return (ArrayList<Categoria>)dao.findAll();
			
		}catch(IllegalArgumentException ex) {
			System.out.println("DEBUG = " + ex.getMessage());
		} catch(Exception ex) {
			System.out.println("DEBUG = " + ex.getMessage());
		}
		return null;
	}

	@Override
	public ArrayList<Categoria> recuperarPoPalavraChave(String palavraChave) {
		try {
			if(palavraChave != null)
			return dao.findByNomeContaining(palavraChave);
			
		} catch(IllegalArgumentException ex) {
			System.out.println("DEBUG = " + ex.getMessage());
		} catch(Exception ex) {
			System.out.println("DEBUG = " + ex.getMessage());
		}
		return null;
	}

}
