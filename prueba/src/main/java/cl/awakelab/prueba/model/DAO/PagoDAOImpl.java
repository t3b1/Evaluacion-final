package cl.awakelab.prueba.model.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.awakelab.prueba.model.Pago;

public class PagoDAOImpl implements IpagoDAO{
	
	 JdbcTemplate template;
		
		
		
		public void setTemplate(JdbcTemplate template) {
			this.template = template;
		}

	@Override
	public List<Pago> readAll() {
		
		String sql = "select idpago, pagmes, pagano, cliente_rutcliente from pago";
		
		  return template.query(sql, new PagoRowMapper());
	}

	@Override
	public Pago readOne(int idpago) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void create(Pago p) {
		
		String sql = "insert into pago (pagmonto, pagano, pagmes, cliente_rutcliente) values " +
				"(?, ?, ?, ?)";
		
		
		
		template.update(sql, new Object[] {p.getPagmonto(), p.getPagano(), p.getPagmes(), p.getCliente_rutcliente()});
		
	}

	@Override
	public void update(Pago p) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Pago p) {
		// TODO Auto-generated method stub
		
	}

}

class PagoRowMapper implements RowMapper<Pago> {

    @Override
    public Pago mapRow(ResultSet rs, int rowNum) throws SQLException {
        return new Pago(rs.getInt("idpago"), rs.getInt("pagmes"), rs.getInt("pagano"), rs.getInt("cliente_rutcliente"));
    }
}
