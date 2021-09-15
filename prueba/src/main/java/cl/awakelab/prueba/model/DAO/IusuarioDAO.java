package cl.awakelab.prueba.model.DAO;

import java.util.List;

import cl.awakelab.prueba.model.Usuario;

public interface IusuarioDAO {
	
	public List<Usuario> ReadAll();
	public Usuario ReadOne(int runusuario);
	public void create(Usuario u);
	public void delte(Usuario u);

}
