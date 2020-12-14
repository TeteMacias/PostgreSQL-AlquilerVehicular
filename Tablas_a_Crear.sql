# PostgreSQL-AlquilerVehicular 

/*TABLA TRABAJADORES*/
create table TRABAJADORES(
	IDTrabajador varchar(20) PRIMARY KEY NOT NULL,
	apellidosNombres varchar(65) NOT null,
	CI numeric NOT null,
	telefono varchar(10) NOT null,
	correoElectr varchar (90) NOT null
);

/*TABLA DEPARTAMENTO*/
create table DEPARTAMENTO(
	CodDep varchar(7) PRIMARY KEY NOT NULL,
	IDTrabajadorEncargpk varchar(20) NOT null,
	nombreArea varchar (40) NOT null,
	NumTrabajadores integer NOT null,
	CONSTRAINT IDTrabajadorEncargpkfkey FOREIGN KEY (IDTrabajadorEncargpk)
   	REFERENCES TRABAJADORES(IDTrabajador) MATCH SIMPLE
   	ON UPDATE CASCADE ON DELETE CASCADE
);

/*TABLA CLIENTE*/
create table CLIENTE(
	IDCliente integer PRIMARY KEY NOT NULL,
	nombreApellido varchar(70) NOT null,
	telefono integer,
	correoElectronico varchar(90),
	direccion varchar (50),
	ciudad varchar (60),
	tipoCliente varchar (60) NOT null,
	Observacion varchar (200)
);

/*TABLA PROVEEDOR*/
create table PROVEEDOR(
	IDProv varchar (6) PRIMARY KEY NOT NULL,
	nombre varchar(50) NOT null,
	direccion varchar (60) NOT null,
	telefono varchar(10) NOT null,
	correoElectr varchar (50) NOT null
);

/*TABLA MARCA VEHICULAR*/
create table MARCAVEHICULAR(
	IDMarca varchar (5) PRIMARY KEY NOT NULL,
	nombreMarca varchar(40) NOT null
);

/*TABLA VEHICULO*/
create table VEHICULO(
	CodiVehic varchar (6) PRIMARY KEY NOT NULL,
	IDProvpk varchar(6) NOT null,
	IDMarcapk varchar(5)NOT null,
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
	CodiReserva varchar (5) PRIMARY KEY NOT NULL,
	IDClientepk integer NOT null,
	CodiVehicpk varchar(6)NOT null,
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
	CodiVehicpk varchar(6)NOT null,
	IDTrabajadorResponsablepk varchar(20)NOT null,
	CodiReservapk varchar(5)NOT null,
	CodDeppk varchar (7) NOT NULL,
	valorizacionAlCliente smallint NOT null,
	observacion varchar (150),
	
	CONSTRAINT IDClientepkfkey FOREIGN KEY (IDClientepk)
  	  REFERENCES CLIENTE(IDCliente) MATCH SIMPLE
  	  ON UPDATE CASCADE ON DELETE CASCADE,
	
	 CONSTRAINT CodiVehicpkfkey FOREIGN KEY (CodiVehicpk)
    	 REFERENCES VEHICULO(CodiVehic) MATCH SIMPLE
    	 ON UPDATE CASCADE ON DELETE CASCADE,
	
	CONSTRAINT IDTrabajadorResponsablepkfkey FOREIGN KEY (IDTrabajadorResponsablepk)
  	  REFERENCES TRABAJADORES(IDTrabajador) MATCH SIMPLE
  	  ON UPDATE CASCADE ON DELETE CASCADE,
	
	CONSTRAINT CodiReservapkfkey FOREIGN KEY (CodiReservapk)
  	  REFERENCES RESERVA(CodiReserva) MATCH SIMPLE
  	  ON UPDATE CASCADE ON DELETE CASCADE,
	
	CONSTRAINT CodDeppkfkey FOREIGN KEY (CodDeppk)
  	  REFERENCES DEPARTAMENTO(CodDep) MATCH SIMPLE
  	  ON UPDATE CASCADE ON DELETE CASCADE
);

/*CONSULTAS DE TABLAS CREADAS*/
select * from TRABAJADORES;
select * from DEPARTAMENTO;
select * from CLIENTE;
select * from PROVEEDOR;
select * from MARCAVEHICULAR;
select * from VEHICULO;
select * from RESERVA;
select * from REGISTROREVISION;
