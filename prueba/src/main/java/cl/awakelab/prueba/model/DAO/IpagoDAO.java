package cl.awakelab.prueba.model.DAO;

import java.util.List;

import cl.awakelab.prueba.model.Pago;

public interface IpagoDAO {

	
	public List<Pago> readAll();
	public Pago readOne(int idpago);
	public void create(Pago p);
	public void update(Pago p);
	public void delete(Pago p);
}
