package cl.awakelab.prueba.model;

public class Usuario {

	
	private int runusuario;
	private String usunombre;
	private String usuapellido;
	private String usufechanacimiento;
	private int tipousuario;
	private String password;
	
	
	
	
	public Usuario() {
		super();
	}


	public Usuario(int runusuario, String usunombre, String usuapellido, int tipousuario) {
		super();
		this.runusuario = runusuario;
		this.usunombre = usunombre;
		this.usuapellido = usuapellido;
		this.tipousuario = tipousuario;
	}


	public Usuario(int runusuario, String usunombre, String usuapellido, String usufechanacimiento,
			int tipousuario, String password) {
		super();
		this.runusuario = runusuario;
		this.usunombre = usunombre;
		this.usuapellido = usuapellido;
		this.usufechanacimiento = usufechanacimiento;
		this.tipousuario = tipousuario;
		this.password = password;
	}





	public int getRunusuario() {
		return runusuario;
	}


	public void setRunusuario(int runusuario) {
		this.runusuario = runusuario;
	}


	public String getUsunombre() {
		return usunombre;
	}


	public void setUsunombre(String usunombre) {
		this.usunombre = usunombre;
	}


	public String getUsuapellido() {
		return usuapellido;
	}


	public void setUsuapellido(String usuapellido) {
		this.usuapellido = usuapellido;
	}


	public String getUsufechanacimiento() {
		return usufechanacimiento;
	}


	public void setUsufechanacimiento(String usufechanacimiento) {
		this.usufechanacimiento = usufechanacimiento;
	}


	public int getTipousuario() {
		return tipousuario;
	}


	public void setTipousuario(int tipousuario) {
		this.tipousuario = tipousuario;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
}
