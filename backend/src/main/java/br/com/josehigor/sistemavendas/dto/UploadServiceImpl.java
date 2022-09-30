package br.com.josehigor.sistemavendas.dto;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import br.com.josehigor.sistemavendas.services.IUploadService;

@Component
public class UploadServiceImpl implements IUploadService{
	/*Copia o arquivo via requisição para uma pasta definida e retornar o caminho do 
	 * arquivo, caso dê erro será retornado NULL*/
	public String uploadFile(MultipartFile arquivo) {
		try {
			
			System.out.println("DEBUG: " +arquivo.getOriginalFilename());
			//Caminho para onde será copiado o arquivo
			String caminho = "D:\\projetos\\Testes\\Projetos\\sistema_vendas\\images";
			Path path = Paths.get(caminho + File.separator + arquivo.getOriginalFilename());
			Files.copy(arquivo.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
			System.out.println("DEBUG - Arquivo copiado");
			return path.toString();
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

}
