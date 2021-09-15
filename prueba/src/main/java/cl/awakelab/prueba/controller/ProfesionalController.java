package cl.awakelab.prueba.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.awakelab.prueba.model.Visita;
import cl.awakelab.prueba.model.DAO.VisitaDAOImpl;

@Controller
public class ProfesionalController {
	
	@Autowired
	public VisitaDAOImpl vDAO;
	
	
	@RequestMapping(value="/listarVisita", method=RequestMethod.GET)
	public ModelAndView listar() {
		
		List<Visita> Visita = vDAO.readAll();
		
		ModelAndView mv = new ModelAndView("listarVisita");
		
		mv.addObject("Visita", Visita);
		
		
		return mv;
	}
	
	@RequestMapping(value="/responderCheck", method=RequestMethod.GET)
	public ModelAndView ver() {
		
		ModelAndView mv = new ModelAndView("responderCheck");
		
		return mv;
	}

}
