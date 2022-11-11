package br.com.josehigor.sistemavendas.dto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.com.josehigor.sistemavendas.dao.PedidoDAO;
import br.com.josehigor.sistemavendas.model.ItemPedido;
import br.com.josehigor.sistemavendas.model.Pedido;
import br.com.josehigor.sistemavendas.services.IPedidoService;

@Component
public class PedidoServiceImpl implements IPedidoService{
	@Autowired
	private PedidoDAO dao;	
	
	@Override
	public Pedido inserirPedido(Pedido pedido) {
		try {
			for(ItemPedido item: pedido.getItensPedido()) {
				item.setPedido(pedido);
			}		
			dao.save(pedido);
			return pedido;
		}catch(Exception ex) {
			System.out.println("---------------------PedidoService.inserirNovoPedido------------");
			ex.printStackTrace();
			System.out.println("------------------------------------------------------------------");
		}
		return null;
	}

}
