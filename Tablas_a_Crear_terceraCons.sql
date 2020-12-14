# PostgreSQL-AlquilerVehicular

/*De todos sus clientes, muestre solo los datos de los clientes tipo BROKERS*/
select*from CLIENTE
where tipoCliente like'B%';
