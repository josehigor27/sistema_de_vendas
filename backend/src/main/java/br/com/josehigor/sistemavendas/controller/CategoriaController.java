package br.com.josehigor.sistemavendas.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import br.com.josehigor.sistemavendas.model.Categoria;
import br.com.josehigor.sistemavendas.services.ICategoriaService;

@RestController
public class CategoriaController {

	@Autowired
	private ICategoriaService service;

	@GetMapping("/categoria")
	public ResponseEntity<ArrayList<Categoria>> listarTodas() {
		return ResponseEntity.ok().body(service.recuperarTodasCategorias());
	}

	@GetMapping("/categoria/search")
	// Usado a anotação @RequestParam(name="key"), para passar a palavra-chave de
	// categoria
	// <servidor>/categoria/search?key=<palavra-chave>
	public ResponseEntity<ArrayList<Categoria>> recuperarPorPalavraChave(
			@RequestParam(name = "key") String palavraChave) {
		if (palavraChave != null) {
			return ResponseEntity.ok().body(service.recuperarPoPalavraChave(palavraChave));
		}
		return ResponseEntity.badRequest().build();
	}

	@PostMapping("/categoria")
	public ResponseEntity<Categoria> adicionarNova(@RequestBody Categoria categoria) {
		
		if(categoria.getId()!=null) {
			categoria.setId(null);
		}
		
		Categoria resultado = service.inserirNovaCategoria(categoria);
		if(resultado != null) {
			return ResponseEntity.status(201).body(resultado);
			//return ResponseEntity.ok(resultado);
		}

		return ResponseEntity.badRequest().build();
	}
	
	@PutMapping("/categoria")
	public ResponseEntity<Categoria> alterarDados(@RequestBody Categoria categoria){
		Categoria resultado = service.alterarCategoria(categoria);
		if(resultado !=null) {
			return ResponseEntity.ok(resultado);
		}
		
		return ResponseEntity.badRequest().build();
	}

}
