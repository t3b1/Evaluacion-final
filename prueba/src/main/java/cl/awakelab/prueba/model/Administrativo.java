package cl.awakelab.prueba.model;

public class Administrativo {

	private int idadmin;
	private String admnombresup;
	private String admarea_1;
	private String admexpprev;
	private String admfuncion;
	private int usuario_runusuario;
	public Administrativo() {
		super();
	}
	public Administrativo(int idadmin, String admnombresup, String admarea_1, String admexprev, String admfuncion,
			int usuario_runusuario) {
		super();
		this.idadmin = idadmin;
		this.admnombresup = admnombresup;
		this.admarea_1 = admarea_1;
		this.admexpprev = admexprev;
		this.admfuncion = admfuncion;
		this.usuario_runusuario = usuario_runusuario;
	}
	public int getIdadmin() {
		return idadmin;
	}
	public void setIdadmin(int idadmin) {
		this.idadmin = idadmin;
	}
	public String getAdmnombresup() {
		return admnombresup;
	}
	public void setAdmnombresup(String admnombresup) {
		this.admnombresup = admnombresup;
	}
	public String getAdmarea_1() {
		return admarea_1;
	}
	public void setAdmarea_1(String admarea_1) {
		this.admarea_1 = admarea_1;
	}
	public String getAdmexprev() {
		return admexpprev;
	}
	public void setAdmexprev(String admexprev) {
		this.admexpprev = admexprev;
	}
	public String getAdmfuncion() {
		return admfuncion;
	}
	public void setAdmfuncion(String admfuncion) {
		this.admfuncion = admfuncion;
	}
	public int getUsuario_runusuario() {
		return usuario_runusuario;
	}
	public void setUsuario_runusuario(int usuario_runusuario) {
		this.usuario_runusuario = usuario_runusuario;
	}
	
	
}
