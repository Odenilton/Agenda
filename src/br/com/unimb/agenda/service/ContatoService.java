package br.com.unimb.agenda.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.unimb.agenda.model.Contato;
import br.com.unimb.agenda.repository.ContatoRepository;

@Service
public class ContatoService {

	@Autowired
	private ContatoRepository repository;
	
	public List<Contato> listAll() {
		return (List<Contato>) repository.findAll();
	}

	public void save(Contato contato) {
		repository.save(contato);
	}

	public Contato findById(Long id) {
		Optional<Contato> result = repository.findById(id);		
		return result.get();
	}

	public void remove(Contato contato) {
		repository.delete(contato);
	}
	
}
