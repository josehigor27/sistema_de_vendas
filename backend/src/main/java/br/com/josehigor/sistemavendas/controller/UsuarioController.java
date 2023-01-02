package br.com.josehigor.sistemavendas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import br.com.josehigor.sistemavendas.model.Usuario;
import br.com.josehigor.sistemavendas.security.JWTToken;
import br.com.josehigor.sistemavendas.security.JWTTokenUtil;
import br.com.josehigor.sistemavendas.services.IUsuarioService;

@RestController
public class UsuarioController {

		@Autowired
		private IUsuarioService service;
		
		@PostMapping("/login")
		public ResponseEntity<JWTToken> login(@RequestBody Usuario login){
			Usuario username = service.recuperarUsuario(login);
			if(username != null) { //aqui confere se o usuario existe
				if(username.getSenha().equals(login.getSenha())) { // aqui confere se a senha é a certa
					//aqui eu preciso criar o token do usuário
					
					JWTToken jwtToken = new JWTToken();
					
					jwtToken.setToken(JWTTokenUtil.generateToken(username));
					return ResponseEntity.ok(jwtToken);
				}
				return ResponseEntity.status(403).build();
			}
			return ResponseEntity.notFound().build();
	}
}
