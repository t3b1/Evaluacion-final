package cl.awakelab.prueba.model.DAO;

import org.springframework.jdbc.core.JdbcTemplate;

import cl.awakelab.prueba.model.Administrativo;

public class AdministrativoDAOImpl implements IadministrativoDAO{
	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public void delete(Administrativo a) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Administrativo a) {
		// TODO Auto-generated method stub
		String sql = "update administrativo set admnombresup = ?, admarea_1 = ?, admexpprev = ?, admfuncion = ? where " +
				"usuario_runusuario = ?";
		
		template.update(sql, new Object[] {a.getAdmnombresup(), a.getAdmarea_1(), a.getAdmexpprev(), a.getAdmfuncion()});
		
	}

}
