package cl.awakelab.prueba.model;

public class Pago {
	
	private int idpago;
	private String pagfecha;
	private int pagmonto;
	private int pagmes;
	private int pagano;
	private int cliente_rutcliente;
	private int administrativo_idadmin;
	
	public Pago() {
		super();
	}

	public Pago(int idpago, String pagfecha, int pagmonto, int pagmes, int pagano, int cliente_rutcliente,
			int administrativo_idadmin) {
		super();
		this.idpago = idpago;
		this.pagfecha = pagfecha;
		this.pagmonto = pagmonto;
		this.pagmes = pagmes;
		this.pagano = pagano;
		this.cliente_rutcliente = cliente_rutcliente;
		this.administrativo_idadmin = administrativo_idadmin;
	}

	

	public Pago(int idpago, int pagmes, int pagano, int cliente_rutcliente) {
		super();
		this.idpago = idpago;
		this.pagmes = pagmes;
		this.pagano = pagano;
		this.cliente_rutcliente = cliente_rutcliente;
	}


	public int getIdpago() {
		return idpago;
	}

	public void setIdpago(int idpago) {
		this.idpago = idpago;
	}

	public String getPagfecha() {
		return pagfecha;
	}

	public void setPagfecha(String pagfecha) {
		this.pagfecha = pagfecha;
	}

	public int getPagmonto() {
		return pagmonto;
	}

	public void setPagmonto(int pagmonto) {
		this.pagmonto = pagmonto;
	}

	public int getPagmes() {
		return pagmes;
	}

	public void setPagmes(int pagmes) {
		this.pagmes = pagmes;
	}

	public int getPagano() {
		return pagano;
	}

	public void setPagano(int pagano) {
		this.pagano = pagano;
	}

	public int getCliente_rutcliente() {
		return cliente_rutcliente;
	}

	public void setCliente_rutcliente(int cliente_rutcliente) {
		this.cliente_rutcliente = cliente_rutcliente;
	}

	public int getAdministrativo_idadmin() {
		return administrativo_idadmin;
	}

	public void setAdministrativo_idadmin(int administrativo_idadmin) {
		this.administrativo_idadmin = administrativo_idadmin;
	}
	
	


}
