package br.com.josehigor.sistemavendas.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import br.com.josehigor.sistemavendas.model.Categoria;
import br.com.josehigor.sistemavendas.model.Produto;
import br.com.josehigor.sistemavendas.services.IProdutoService;
import br.com.josehigor.sistemavendas.services.IUploadService;

@RestController
public class ProdutoController {
	
	@Autowired
	private IProdutoService service;
	@Autowired
	private IUploadService upload;
	
	@PostMapping("/produto")
	public ResponseEntity<Produto> novoProduto(@RequestBody Produto produto){
		try {
			
			service.inserirNovoProduto(produto);
			return ResponseEntity.status(201).body(produto);
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return ResponseEntity.badRequest().build();
		
	}
	
	@PostMapping("/produto/upload")
	public ResponseEntity<String> uploadFoto(@RequestParam (name = "arquivo") MultipartFile arquivo){
		String path = upload.uploadFile(arquivo);
		
		if(path!=null) {
			return ResponseEntity.status(201).body(path);
		}
		
		return ResponseEntity.badRequest().build();
	}
	
	@GetMapping("/produto")
	public ResponseEntity<ArrayList<Produto>> listarTodos(){
		return ResponseEntity.ok().body(service.recuperarTodosProdutos());
	}
	
	@GetMapping("/produto/categoria/{id}")
	public ResponseEntity<ArrayList<Produto>> recuperarPorCategoria(@PathVariable (name = "id") int idCategoria ){
		Categoria categoria = new Categoria();
		categoria.setId(idCategoria);
		return ResponseEntity.ok(service.recuperarPorCategoria(categoria));
	}
	
	@GetMapping("/produto/{id}")
	public ResponseEntity <Produto> recuperarPorId(@PathVariable (name = "id") int idProduto){
		Produto produto = service.recuperarPorId(idProduto);
		if(produto != null) {
			return ResponseEntity.ok(produto);
		}
		
		return ResponseEntity.notFound().build();
	}
}
