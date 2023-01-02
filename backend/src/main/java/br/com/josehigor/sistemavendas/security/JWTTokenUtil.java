package br.com.josehigor.sistemavendas.security;



import java.security.Key;
import java.util.Date;

import br.com.josehigor.sistemavendas.model.Usuario;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;

public class JWTTokenUtil {
	
	private static final String SECRET_KEY 	= "**B1sc0it0ED1f3rent3DeB0l4cHa!**";
	private static final int 	EXPIRATION 	= 2*60*100;
	private static final String TK_PREFIX 	= "Bearer " ;
	private static final String HEADER_AUTH = "Authorization";
	
	public static String generateToken(Usuario usuario) {
		
		Key secretKey = Keys.hmacShaKeyFor(SECRET_KEY.getBytes());
		String jwt = Jwts.builder()
					.setSubject(usuario.getUsername())
					.setIssuer("*JoseHigor")
					.setExpiration(new Date(System.currentTimeMillis()+EXPIRATION))
					.signWith(secretKey, SignatureAlgorithm.HS256)
					.compact();
		
		
		return TK_PREFIX + jwt;
	}
	
}
