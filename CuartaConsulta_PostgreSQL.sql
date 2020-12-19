# PostgreSQL-AlquilerVehicular

/*Muestre los proveedores que ofrecen la marca vehicular KIA, NISSAN, FORD e HYUNDAI*/
select VEHICULO.IDMarcapk as codigomarcaVehicular, MARCAVEHICULAR.nombreMarca as MARCAVEHICULAR, 
MAX (PROVEEDOR.proveedor) AS Proveedor from VEHICULO
inner join PROVEEDOR
on VEHICULO.IDProvpk= PROVEEDOR.IDProv
inner join MARCAVEHICULAR
on VEHICULO.IDMarcapk= MARCAVEHICULAR.IDMarca 
where nombreMarca like'K%' OR nombreMarca like'N%' OR nombreMarca like'F%' OR nombreMarca like'H%'
GROUP BY 
VEHICULO.IDMarcapk, MARCAVEHICULAR.nombreMarca, PROVEEDOR.IDProv
