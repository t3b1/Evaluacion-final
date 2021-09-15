package cl.awakelab.prueba.model.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.awakelab.prueba.model.Usuario;

public class UsuarioDAOImpl  implements IusuarioDAO{
	
	
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}


	@Override
	public List<Usuario> ReadAll() {
		
          
		  
		  String sql = "select runusuario, usunombre, usuapellido, tipousuario from usuario";
			
			return template.query(sql, new UsuarioRowMapper());
	}

	@Override
	public Usuario ReadOne(int runusuario) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void create(Usuario u) {
		
		String sql = "insert into usuario (runusuario, usunombre, usuapellido, tipousuario) values " +
				"(?, ?, ?, ?)";
		
		
		template.update(sql, new Object[] {u.getRunusuario(), u.getUsunombre(),u.getUsuapellido(), u.getTipousuario()});
		
	}

	@Override
	public void delte(Usuario u) {
		// TODO Auto-generated method stub
		
	}
	
	
	
	

}

class UsuarioRowMapper implements RowMapper<Usuario> {

    @Override
    public Usuario mapRow(ResultSet rs, int rowNum) throws SQLException {
        return new Usuario(rs.getInt("runusuario"), rs.getString("usunombre"), rs.getString("usuapellido"), rs.getInt("tipousuario"));
    }

}
