# PostgreSQL-AlquilerVehicular 
create DATABASE alquilerVehicular;
/*TABLA TRABAJADOR*/
create table TRABAJADOR(
	IDTrabajador integer PRIMARY KEY NOT NULL,
	apellidos varchar(25) NOT null,
	Nombres varchar(25) NOT null,
	CI numeric NOT null,
	fechNacimiento date,
	telefono varchar(10) NOT null,
	correoElectr varchar (90) NOT null,
	fechaIngreso date
);

/*TABLA DEPARTAMENTO*/
create table DEPARTAMENTO(
	CodDep integer PRIMARY KEY NOT NULL,
	nombreArea varchar (40) NOT null,
	NumTrabajadores integer NOT null
);

/*TABLA REGISTRO ENCARGADO DEPARTAMENTO*/
create table REGISTROENCARGADODEPART(
	IDRegEncDepr integer PRIMARY KEY NOT NULL,
	CodDeppk integer NOT NULL,
	IDTrabajadorEncargpk integer NOT null,
	inicioCargo date NOT null,
	CONSTRAINT CodDeppkfkey FOREIGN KEY (CodDeppk)
   	REFERENCES DEPARTAMENTO(CodDep) MATCH SIMPLE
   	ON UPDATE CASCADE ON DELETE CASCADE,
	
	CONSTRAINT IDTrabajadorEncargpkfkey FOREIGN KEY (IDTrabajadorEncargpk)
   	REFERENCES TRABAJADOR(IDTrabajador) MATCH SIMPLE
   	ON UPDATE CASCADE ON DELETE CASCADE
);

/*TABLA CLIENTE*/
create table CLIENTE(
	IDCliente integer PRIMARY KEY NOT NULL,
	cliente varchar(70) NOT null,
	telefono integer,
	correoElectronico varchar(90),
	direccion varchar (50),
	ciudad varchar (60),
	tipoCliente varchar (60) NOT null,
	Observacion varchar (200)
);

/*TABLA PROVEEDOR*/
create table PROVEEDOR(
	IDProv integer PRIMARY KEY NOT NULL,
	proveedor varchar(50) NOT null,
	direccion varchar (60) NOT null,
	telefono varchar(10) NOT null,
	correoElectr varchar (50) NOT null
);

/*TABLA MARCA VEHICULAR*/
create table MARCAVEHICULAR(
	IDMarca integer PRIMARY KEY NOT NULL,
	nombreMarca varchar(40) NOT null
);

/*TABLA VEHICULO*/
create table VEHICULO(
	CodiVehic integer PRIMARY KEY NOT NULL,
	IDProvpk integer NOT null,
	IDMarcapk integer NOT null,
	tipoVehiculo varchar (15)NOT null,
	placa varchar (15)NOT null,
	numMatricula varchar (25) NOT null,
        anioFabricacion date NOT null,
	improntaChasis varchar (40) NOT null,
	improntaMotor varchar (40) NOT null,
	GPS varchar (2) NOT null,
	precioAlquiler double precision NOT null,
	descripcion varchar (100) NOT null,
	CONSTRAINT IDProvpkfkey FOREIGN KEY (IDProvpk)
  	REFERENCES PROVEEDOR(IDProv) MATCH SIMPLE
  	ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT IDMarcapkfkey FOREIGN KEY (IDMarcapk)
    	REFERENCES MARCAVEHICULAR(IDMarca) MATCH SIMPLE
    	ON UPDATE CASCADE ON DELETE CASCADE
);

/*TABLA RESERVA*/
create table RESERVA(
	CodiReserva integer PRIMARY KEY NOT NULL,
	IDClientepk integer NOT null,
	CodiVehicpk integer NOT null,
	tipoLicencia varchar (4)NOT null,
	fechaHoraRetiro timestamp NOT null,
	fechaHoraEntrega timestamp NOT null,
        tipoPago varchar (10) NOT null,
	estadoPago varchar (10) NOT null,
	CONSTRAINT IDClientepkfkey FOREIGN KEY (IDClientepk)
  	  REFERENCES CLIENTE(IDCliente) MATCH SIMPLE
  	  ON UPDATE CASCADE ON DELETE CASCADE,
	 CONSTRAINT CodiVehicpkfkey FOREIGN KEY (CodiVehicpk)
    	 REFERENCES VEHICULO(CodiVehic) MATCH SIMPLE
    	 ON UPDATE CASCADE ON DELETE CASCADE
);

/*TABLA REGISTRO REVISION*/
create table REGISTROREVISION(
	CodRevs integer PRIMARY KEY NOT NULL,
	IDClientepk integer NOT null,
	CodiVehicpk integer NOT null,
	IDTrabajadorResponsablepk integer NOT null,
	CodiReservapk integer NOT null,
	valorizacionAlCliente smallint NOT null,
	observacion varchar (150),
	
	CONSTRAINT IDClientepkfkey FOREIGN KEY (IDClientepk)
  	  REFERENCES CLIENTE(IDCliente) MATCH SIMPLE
  	  ON UPDATE CASCADE ON DELETE CASCADE,
	
	 CONSTRAINT CodiVehicpkfkey FOREIGN KEY (CodiVehicpk)
    	 REFERENCES VEHICULO(CodiVehic) MATCH SIMPLE
    	 ON UPDATE CASCADE ON DELETE CASCADE,
	
	CONSTRAINT IDTrabajadorRespon_sablepkfkey FOREIGN KEY (IDTrabajadorResponsablepk)
  	  REFERENCES TRABAJADOR(IDTrabajador) MATCH SIMPLE
  	  ON UPDATE CASCADE ON DELETE CASCADE,
	
	CONSTRAINT CodiReservapkfkey FOREIGN KEY (CodiReservapk)
  	  REFERENCES RESERVA(CodiReserva) MATCH SIMPLE
  	  ON UPDATE CASCADE ON DELETE CASCADE
);

/*CONSULTAS DE TABLAS CREADAS*/
select * from TRABAJADOR;
select * from DEPARTAMENTO;
select * from REGISTROENCARGADODEPART;
select * from CLIENTE;
select * from PROVEEDOR;
select * from MARCAVEHICULAR;
select * from VEHICULO;
select * from RESERVA;
select * from REGISTROREVISION;

