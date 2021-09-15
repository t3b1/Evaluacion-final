package cl.awakelab.prueba.model;

public class Profesional {
	
	private int idprofesional;
	private int profanoexp;
	private String profdepto;
	private String proftitulo;
	private String proffechaingreso;
	private int usuario_runusuario;
	public Profesional(int idprofesional, int profanoexp, String profdepto, String proftitulo, String proffechaingreso,
			int usuario_runusuario) {
		super();
		this.idprofesional = idprofesional;
		this.profanoexp = profanoexp;
		this.profdepto = profdepto;
		this.proftitulo = proftitulo;
		this.proffechaingreso = proffechaingreso;
		this.usuario_runusuario = usuario_runusuario;
	}
	public Profesional() {
		super();
	}
	public int getIdprofesional() {
		return idprofesional;
	}
	public void setIdprofesional(int idprofesional) {
		this.idprofesional = idprofesional;
	}
	public int getProfanoexp() {
		return profanoexp;
	}
	public void setProfanoexp(int profanoexp) {
		this.profanoexp = profanoexp;
	}
	public String getProfdepto() {
		return profdepto;
	}
	public void setProfdepto(String profdepto) {
		this.profdepto = profdepto;
	}
	public String getProftitulo() {
		return proftitulo;
	}
	public void setProftitulo(String proftitulo) {
		this.proftitulo = proftitulo;
	}
	public String getProffechaingreso() {
		return proffechaingreso;
	}
	public void setProffechaingreso(String proffechaingreso) {
		this.proffechaingreso = proffechaingreso;
	}
	public int getUsuario_runusuario() {
		return usuario_runusuario;
	}
	public void setUsuario_runusuario(int usuario_runusuario) {
		this.usuario_runusuario = usuario_runusuario;
	}
	
	

}
