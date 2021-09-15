package cl.awakelab.prueba.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cl.awakelab.prueba.model.Capacitacion;
import cl.awakelab.prueba.model.DAO.CapacitacionDAOImpl;

@Controller
public class ClienteController {
	
	@Autowired
	private CapacitacionDAOImpl cDAO;
	
	@RequestMapping(value="/crearCapacitacion", method=RequestMethod.GET)
	public String crearVer(Model model) {
		

		return "crearCapacitacion";
	}
	
	@RequestMapping(value="/crearCapacitacion", method=RequestMethod.POST)
	public String crear(Model model, @RequestParam("capfecha") String capfecha, @RequestParam("caphora") String caphora, @RequestParam("caplugar") String caplugar, @RequestParam("capduracion") int capduracion, @RequestParam("cliente_rutcliente") int cliente_rutcliente) {

		
		Capacitacion c = new Capacitacion();
		
		c.setCapfecha(capfecha);
		c.setCaphora(caphora);
		c.setCaplugar(caplugar);
		c.setCapduracion(capduracion);
		c.setCliente_rutcliente(cliente_rutcliente);
	    cDAO.create(c);		
		
		return "redirect:/listarCapacitacion";
	}
	
	@RequestMapping(value="/listarCapacitacion", method=RequestMethod.GET)
	public ModelAndView listar() {
		
		List<Capacitacion> Capacitacion = cDAO.readAll();
		
		ModelAndView mv = new ModelAndView("listarCapacitacion");
		
		mv.addObject("Capacitacion", Capacitacion);
		
		
		return mv;
	}
	
	@RequestMapping(value="/contacto", method=RequestMethod.GET)
	public String contac() {
		return"contacto";
	}
	
	@RequestMapping(value="/inicioCliente", method=RequestMethod.GET)
	public String incio() {
		return"inicioCliente";
	}

}
