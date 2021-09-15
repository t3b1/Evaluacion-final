package cl.awakelab.prueba.model;

public class Visita {
	
	private int idvisita;
	private String visfecha;
	private String vishora;
	private String vislugar;
	private String visComentarios;
	private int cliente_rutcliente;
	private int profesiona_idprofesional;
	public Visita() {
		super();
	}
	public Visita(int idvisita, String visfecha, String vislugar, String visComentarios, int cliente_rutcliente,
			int profesiona_idprofesional) {
		super();
		this.idvisita = idvisita;
		this.visfecha = visfecha;
		this.vislugar = vislugar;
		this.visComentarios = visComentarios;
		this.cliente_rutcliente = cliente_rutcliente;
		this.profesiona_idprofesional = profesiona_idprofesional;
	}
	public Visita(int idvisita, String visfecha, String vishora, int cliente_rutcliente) {
		super();
		this.idvisita = idvisita;
		this.visfecha = visfecha;
		this.vishora = vishora;
		this.cliente_rutcliente = cliente_rutcliente;
	}
	public int getIdvisita() {
		return idvisita;
	}
	public void setIdvisita(int idvisita) {
		this.idvisita = idvisita;
	}
	public String getVisfecha() {
		return visfecha;
	}
	public void setVisfecha(String visfecha) {
		this.visfecha = visfecha;
	}
	public String getVislugar() {
		return vislugar;
	}
	public void setVislugar(String vislugar) {
		this.vislugar = vislugar;
	}
	public String getVisComentarios() {
		return visComentarios;
	}
	public void setVisComentarios(String visComentarios) {
		this.visComentarios = visComentarios;
	}
	public int getCliente_rutcliente() {
		return cliente_rutcliente;
	}
	public void setCliente_rutcliente(int cliente_rutcliente) {
		this.cliente_rutcliente = cliente_rutcliente;
	}
	public int getProfesiona_idprofesional() {
		return profesiona_idprofesional;
	}
	public void setProfesiona_idprofesional(int profesiona_idprofesional) {
		this.profesiona_idprofesional = profesiona_idprofesional;
	}
	public String getVishora() {
		return vishora;
	}
	public void setVishora(String vishora) {
		this.vishora = vishora;
	}
	
	

}
