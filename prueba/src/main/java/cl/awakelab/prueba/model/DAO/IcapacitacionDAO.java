package cl.awakelab.prueba.model.DAO;

import java.util.List;

import cl.awakelab.prueba.model.Capacitacion;

public interface IcapacitacionDAO {
	
	public List<Capacitacion> readAll();
	public Capacitacion readOne(int id);
	public void create(Capacitacion c);
	public void update(Capacitacion c);
}

