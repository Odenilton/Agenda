package br.com.unimb.agenda.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.unimb.agenda.model.Contato;
import br.com.unimb.agenda.service.ContatoService;

@Controller
public class ContatoController {

	@Autowired
	private ContatoService service;

	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("index");

		List<Contato> contatos = service.listAll();
		mav.addObject("contatos", contatos);

		return mav;
	}

	@RequestMapping("/new")
	public String newContato(Map<String, Object> model) {
		model.put("contato", new Contato());
		return "new";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveContato(@ModelAttribute("contato") Contato contato) {

		service.save(contato);

		return "redirect:/";
	}

	@RequestMapping("/edit")
	public ModelAndView editContato(@RequestParam Long id) {
		ModelAndView mav = new ModelAndView("new");

		Contato contato = service.findById(id);
		mav.addObject("contato", contato);

		return mav;
	}
	
	@RequestMapping("/delete")
	public String deleteContato(@RequestParam Long id) {
		
		Contato contato = service.findById(id);
		service.remove(contato);

		return "redirect:/";
	}
}
