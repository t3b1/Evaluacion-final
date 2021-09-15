package cl.awakelab.prueba.model.DAO;

import org.springframework.jdbc.core.JdbcTemplate;

import cl.awakelab.prueba.model.Cliente;

public class ClienteDAOImpl implements IclienteDAO{
	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public void delte(Cliente c) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Cliente c) {
		// TODO Auto-generated method stub
		
		String sql = "update cliente set rutcliente = ?, clidireccion = ?, clicomuna = ?, clicantidaempleado = ?, clitelefono = ?, clirazonsocial = ? where " +
				"usuario_runusuario = ?";
		
		template.update(sql, new Object[] {c.getRutcliente(), c.getClidireccion(), c.getClicomuna(), c.getClicantidadempleados(), c.getClitelefono(), c.getClirazonsocial()});
		
	}

}
