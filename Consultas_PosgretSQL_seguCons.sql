# PostgreSQL-AlquilerVehicular
/*¿Que vehículos son los más rentado por los clientes? */
select VEHICULO.IDMarcapk as VEHICULO, MARCAVEHICULAR.nombreMarca as MARCAVEHICULAR, 
COUNT (RESERVA.codivehicpk) AS RESERVA from RESERVA
inner join VEHICULO
on RESERVA.CodiVehicpk= VEHICULO.CodiVehic
inner join MARCAVEHICULAR
on VEHICULO.IDMarcapk= MARCAVEHICULAR.IDMarca 
GROUP BY 
VEHICULO.IDMarcapk, MARCAVEHICULAR.nombreMarca, RESERVA.codivehicpk
order by RESERVA.codivehicpk, VEHICULO.IDMarcapk, MARCAVEHICULAR.nombreMarca DESC;
