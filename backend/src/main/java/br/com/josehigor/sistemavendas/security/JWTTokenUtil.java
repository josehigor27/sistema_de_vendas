package br.com.josehigor.sistemavendas.security;



import java.security.Key;
import java.util.Date;
import java.util.Collections;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;

import br.com.josehigor.sistemavendas.model.Usuario;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;


public class JWTTokenUtil {
	
	private static final String SECRET_KEY 	= "**B1sc0it0ED1f3rent3DeB0l4cHa!**";
	private static final int 	EXPIRATION 	= 3*60*100;
	private static final String TK_PREFIX 	= "Bearer " ;
	private static final String HEADER_AUTH = "Authorization";
	
	public static String generateToken(Usuario usuario) {
		
		Key secretKey = Keys.hmacShaKeyFor(SECRET_KEY.getBytes());
		String jwt = Jwts.builder()
					.setSubject(usuario.getUsername())
					.setIssuer("*JoseHigor*")
					.setExpiration(new Date(System.currentTimeMillis()+EXPIRATION))
					.signWith(secretKey, SignatureAlgorithm.HS256)
					.compact();
		
		
		return TK_PREFIX + jwt;
	}
	
	public static boolean isIssuerValid(String issuer) {
		return issuer.equals("*JoseHigor*");
	}
	
	public static boolean isSubjectValid(String subject) {
		return subject !=null && subject.length() > 0;
	}
	public static boolean isExpiration(Date expiration) {
		return expiration.after(new Date(System.currentTimeMillis()));
	}
	public static Authentication decodeToken(HttpServletRequest request) {
		String token = request.getHeader(HEADER_AUTH);
		token = token.replace(TK_PREFIX, "");
		
		Jws<Claims> jwsClaims = Jwts.parserBuilder().setSigningKey(SECRET_KEY.getBytes()).build().parseClaimsJws(token);
		
		String username = jwsClaims.getBody().getSubject();
		String issuer = jwsClaims.getBody().getIssuer();
		Date expiration = jwsClaims.getBody().getExpiration();
		
		if(isSubjectValid(username) && isIssuerValid(issuer) && isExpiration(expiration)) {
			return new UsernamePasswordAuthenticationToken(username,null, Collections.emptyList());
		}
		return null;
				
	}
	
}
