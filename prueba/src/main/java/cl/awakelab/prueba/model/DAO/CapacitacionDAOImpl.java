package cl.awakelab.prueba.model.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


import cl.awakelab.prueba.model.Capacitacion;



public class CapacitacionDAOImpl  implements IcapacitacionDAO{
	
     JdbcTemplate template;
	
	
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public List<Capacitacion> readAll() {
	
		
		String sql = "select idcapacitacion, capfecha, caphora, cliente_rutcliente from capacitacion";
		
		  return template.query(sql, new CapacitacionRowMapper());
	}



	@Override
	public Capacitacion readOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void create(Capacitacion c) {
		// TODO Auto-generated method stub
		
		
		String sql = "insert into capacitacion (capfecha, caphora, caplugar, capduracion, cliente_rutcliente) values " +
				"(?, ?, ?, ?, ?)";
		
		
		
		template.update(sql, new Object[] {c.getCapfecha(), c.getCaphora(),c.getCaplugar(), c.getCapduracion(), c.getCliente_rutcliente()});
		
	}

	@Override
	public void update(Capacitacion c) {
		// TODO Auto-generated method stub
		
	}



}
	class CapacitacionRowMapper implements RowMapper<Capacitacion> {

	    @Override
	    public Capacitacion mapRow(ResultSet rs, int rowNum) throws SQLException {
	        return new Capacitacion(rs.getInt("idcapacitacion"), rs.getString("capfecha"), rs.getString("caphora"), rs.getInt("cliente_rutcliente"));
	    }

}


