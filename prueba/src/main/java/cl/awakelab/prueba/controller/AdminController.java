package cl.awakelab.prueba.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cl.awakelab.prueba.model.Pago;
import cl.awakelab.prueba.model.Usuario;
import cl.awakelab.prueba.model.DAO.PagoDAOImpl;
import cl.awakelab.prueba.model.DAO.UsuarioDAOImpl;

@Controller
public class AdminController {
	
	@Autowired
	public UsuarioDAOImpl  uDAO;
	
	@Autowired
	public PagoDAOImpl pDAO;
	
	
	//controller user
	
	
	@RequestMapping(value="/crearUsuario", method=RequestMethod.GET)
	public String crearVe(Model model) {
		

		return "crearUsuario";
	}
	
	@RequestMapping(value="/crearUsuario", method=RequestMethod.POST)
	public String crear(Model model, @RequestParam("runusuario") int runusuario, @RequestParam("usunombre") String usunombre, @RequestParam("usuapellido") String usuapellido, @RequestParam("tipousuario") int tipousuario) {

		
		Usuario u = new Usuario();
		
		u.setRunusuario(runusuario);
		u.setUsunombre(usunombre);
		u.setUsuapellido(usuapellido);
		u.setTipousuario(tipousuario);
		
	    uDAO.create(u);		
		
		return "redirect:/listarUsuario";
	}
	
	@RequestMapping(value="/listarUsuario", method=RequestMethod.GET)
	public ModelAndView listar() {
		
		List<Usuario> Usuario = uDAO.ReadAll();
		
		ModelAndView mv = new ModelAndView("listarUsuario");
		
		mv.addObject("Usuario", Usuario);
		
		
		return mv;
	}
	
	
	//controller pago
	
	@RequestMapping(value="/crearPago", method=RequestMethod.GET)
	public String create(Model model) {
		

		return "crearPago";
	}
	
	@RequestMapping(value="/crearPago", method=RequestMethod.POST)
	public String creaate(Model model, @RequestParam("pagmonto") int pagmonto, @RequestParam("pagano") int pagano, @RequestParam("pagmes") int pagmes, @RequestParam("cliente_rutcliente") int cliente_rutcliente) {

		
		Pago p= new Pago();
		
		p.setPagmonto(pagmonto);
		p.setPagano(pagano);
		p.setPagmes(pagmes);
		p.setCliente_rutcliente(cliente_rutcliente);
		
	    pDAO.create(p);		
		
		return "redirect:/listarPago";
	}
	
	@RequestMapping(value="/listarPago", method=RequestMethod.GET)
	public ModelAndView listarver() {
		
		List<Pago> Pago = pDAO.readAll();
		
		ModelAndView mv = new ModelAndView("listarPago");
		
		mv.addObject("Pago", Pago);
		
		
		return mv;
	}
	
	

}
