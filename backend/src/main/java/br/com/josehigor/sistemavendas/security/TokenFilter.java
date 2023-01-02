package br.com.josehigor.sistemavendas.security;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.filter.OncePerRequestFilter;

public class TokenFilter extends OncePerRequestFilter{

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {
		
		/*requisições que não precisam de autenticação
		 * não levam em conta um item do cabeçalho 
		 * - Authorization
		 * 
		 * 
		 * Requisições que precisam de autenticação, 
		 * vão precisar de uma informação de autorização no cabeçalho
		 * 
		 * - se o token for valido, eu monto um cabeçalho de autorização e encaminho a requisição
		 * 
		 * */
		System.out.println("Requisição passou pelo filtro");
		/*
		 * 
		 * */
		
		filterChain.doFilter(request, response);
		
		
	}
	
	

}
