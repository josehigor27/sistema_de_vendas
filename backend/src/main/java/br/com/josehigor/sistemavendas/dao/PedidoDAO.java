package br.com.josehigor.sistemavendas.dao;

import java.util.ArrayList;

import org.springframework.data.repository.CrudRepository;

import br.com.josehigor.sistemavendas.model.Cliente;
import br.com.josehigor.sistemavendas.model.Pedido;

public interface PedidoDAO extends CrudRepository<Pedido, Integer>{
	
	public ArrayList<Pedido> findAllByCliente(Cliente cliente);
	
}
