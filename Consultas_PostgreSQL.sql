# PostgreSQL-AlquilerVehicular

/*Muestre el ranking de los clientes que mejores calificaciones tienen al momento de regresar el carro en buenas condiciones a la empresa
de forma descendiente.*/
select valorizacionalcliente from REGISTROREVISION 
where valorizacionalcliente>=7 
 order by valorizacionalcliente DESC;
