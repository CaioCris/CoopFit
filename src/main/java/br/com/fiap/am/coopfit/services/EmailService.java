package br.com.fiap.am.coopfit.services;

import org.springframework.mail.SimpleMailMessage;

import br.com.fiap.am.coopfit.domain.Pessoa;
import br.com.fiap.am.coopfit.domain.Questionario;

public interface EmailService {
	
	void sendQuationarioConfirmationEmail(Questionario obj);
	
	void sendEmail(SimpleMailMessage msg);

	void sendNewPasswordEmail(Pessoa pesoa, String newPass);
	
}
