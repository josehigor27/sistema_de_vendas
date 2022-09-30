package br.com.josehigor.sistemavendas.services;

import org.springframework.web.multipart.MultipartFile;

// intefarce será usada para o serviço de upload dos arquivos dos produtos

public interface IUploadService {
	
	public String uploadFile(MultipartFile arquivo);

}
