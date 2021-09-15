package cl.awakelab.prueba.model;

public class Capacitacion {
	

		private int idcapacitacion;
		private String capfecha;
		private String caphora;
		private String caplugar;
		private int capduracion;
		private int cliente_rutcliente;
		private int profesional_idprofesional;
		
		
		
		
		
		public Capacitacion() {
			super();
		}



		public Capacitacion(int idcapacitacion, String capfecha, String caphora, int cliente_rutcliente) {
			super();
			this.idcapacitacion = idcapacitacion;
			this.capfecha = capfecha;
			this.caphora = caphora;
			this.cliente_rutcliente = cliente_rutcliente;
		
		}



		public Capacitacion(int idcapacitacion, String capfecha, String caphora, String caplugar, int capduracion,
				int cliente_rutcliente, int profesional_idprofesional) {
			super();
			this.idcapacitacion = idcapacitacion;
			this.capfecha = capfecha;
			this.caphora = caphora;
			this.caplugar = caplugar;
			this.capduracion = capduracion;
			this.cliente_rutcliente = cliente_rutcliente;
			this.profesional_idprofesional = profesional_idprofesional;
		}

		public int getIdcapacitacion() {
			return idcapacitacion;
		}

		public void setIdcapacitacion(int idcapacitacion) {
			this.idcapacitacion = idcapacitacion;
		}

		public String getCapfecha() {
			return capfecha;
		}

		public void setCapfecha(String capfecha) {
			this.capfecha = capfecha;
		}

		public String getCaphora() {
			return caphora;
		}

		public void setCaphora(String caphora) {
			this.caphora = caphora;
		}

		public String getCaplugar() {
			return caplugar;
		}

		public void setCaplugar(String caplugar) {
			this.caplugar = caplugar;
		}

		public int getCapduracion() {
			return capduracion;
		}

		public void setCapduracion(int capduracion) {
			this.capduracion = capduracion;
		}

		public int getCliente_rutcliente() {
			return cliente_rutcliente;
		}

		public void setCliente_rutcliente(int cliente_rutcliente) {
			this.cliente_rutcliente = cliente_rutcliente;
		}

		public int getProfesional_idprofesional() {
			return profesional_idprofesional;
		}

		public void setProfesional_idprofesional(int profesional_idprofesional) {
			this.profesional_idprofesional = profesional_idprofesional;
		}
		
		
		
	}


