package cl.awakelab.prueba.model.DAO;

import org.springframework.jdbc.core.JdbcTemplate;

import cl.awakelab.prueba.model.Profesional;

public class ProfesionalDAOImpl implements IprofesionalDAO{
	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public void delete(Profesional p) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Profesional p) {
		// TODO Auto-generated method stub
		
		String sql = "update profesional set profanoexp = ?, profdepto = ?, proftitulo = ?, proffechaingreso = ? where " +
				"usuario_runusuario = ?";
		
		template.update(sql, new Object[] {p.getProfanoexp(), p.getProfdepto(), p.getProftitulo(), p.getProffechaingreso()});
		
	}

}
