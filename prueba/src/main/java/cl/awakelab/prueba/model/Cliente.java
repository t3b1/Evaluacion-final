package cl.awakelab.prueba.model;

public class Cliente {
	
	private int rutcliente;
	private String clidireccion;
	private String clicomuna;
	private int clicantidadempleados;
	private String clitelefono;
	private String clirazonsocial;
	private int usuario_runusuario;
	public Cliente() {
		super();
	}
	public Cliente(int rutcliente, String clidireccion, String clicomuna, int clicantidadempleados, String clitelefono,
			String clirazonsocial, int usuario_runusuario) {
		super();
		this.rutcliente = rutcliente;
		this.clidireccion = clidireccion;
		this.clicomuna = clicomuna;
		this.clicantidadempleados = clicantidadempleados;
		this.clitelefono = clitelefono;
		this.clirazonsocial = clirazonsocial;
		this.usuario_runusuario = usuario_runusuario;
	}
	public int getRutcliente() {
		return rutcliente;
	}
	public void setRutcliente(int rutcliente) {
		this.rutcliente = rutcliente;
	}
	public String getClidireccion() {
		return clidireccion;
	}
	public void setClidireccion(String clidireccion) {
		this.clidireccion = clidireccion;
	}
	public String getClicomuna() {
		return clicomuna;
	}
	public void setClicomuna(String clicomuna) {
		this.clicomuna = clicomuna;
	}
	public int getClicantidadempleados() {
		return clicantidadempleados;
	}
	public void setClicantidadempleados(int clicantidadempleados) {
		this.clicantidadempleados = clicantidadempleados;
	}
	public String getClitelefono() {
		return clitelefono;
	}
	public void setClitelefono(String clitelefono) {
		this.clitelefono = clitelefono;
	}
	public String getClirazonsocial() {
		return clirazonsocial;
	}
	public void setClirazonsocial(String clirazonsocial) {
		this.clirazonsocial = clirazonsocial;
	}
	public int getUsuario_runusuario() {
		return usuario_runusuario;
	}
	public void setUsuario_runusuario(int usuario_runusuario) {
		this.usuario_runusuario = usuario_runusuario;
	}
	
	

}
