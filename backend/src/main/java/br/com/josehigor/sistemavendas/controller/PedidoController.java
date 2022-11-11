package br.com.josehigor.sistemavendas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import br.com.josehigor.sistemavendas.model.Pedido;
import br.com.josehigor.sistemavendas.services.IPedidoService;

@RestController
public class PedidoController {
	@Autowired
	private IPedidoService service;
	
	@PostMapping("/pedido")
	public ResponseEntity<Pedido> inserirNovoPedido(@RequestBody Pedido pedido){
		try {
			service.inserirPedido(pedido);
			return ResponseEntity.status(201).body(pedido);
		}catch(Exception ex) {
			ex.printStackTrace();
			return ResponseEntity.badRequest().build();
		}
		
	}
}
