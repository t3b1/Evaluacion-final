package cl.awakelab.prueba.model.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.awakelab.prueba.model.Visita;

public class VisitaDAOImpl implements IvisitaDAO{
	
JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}


	@Override
	public List<Visita> readAll() {
		
		 String sql = "select idvisita, visfecha, vishora, cliente_rutcliente from visita";
			
			return template.query(sql, new VisitaRowMapper());
	}

}

class VisitaRowMapper implements RowMapper<Visita> {

    @Override
    public Visita mapRow(ResultSet rs, int rowNum) throws SQLException {
        return new Visita(rs.getInt("idvisita"), rs.getString("visfecha"), rs.getString("vishora"), rs.getInt("cliente_rutcliente"));
    }

}
