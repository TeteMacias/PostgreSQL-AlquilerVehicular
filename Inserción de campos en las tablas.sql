# PostgreSQL-AlquilerVehicular

/*DATOS INSERTADOS EN TRABAJADOR*/
insert into TRABAJADOR values
(101, 'ZAMBRANO CASTRO','MARIANA ELIZABETH', 1314576893, '1994-05-20', '0974562739', 'elizabethzambrano@gmail.com', '2017-09-11'),
(102, 'MERO MERO', 'PABLO EDUARDO', 1303768972,'1995-03-21', '0934627801', 'pablopablo@gmail.com', '2019-05-29'),
(103, 'MOREIRA VERA', 'ETHAN EMILIANO', 1314572389, '1990-10-09', '0877658903', 'ethanemiliano@gmail.com', '2018-02-02'),
(104, 'BAQUE GUERRERO', 'JOSE ALBERTO', 0986345627, '1995-02-11', '0952673890', 'lili95@gmail.com', '2016-05-20'),
(105, 'VELIZ CHAVEZ', 'MARIA BELEN', 1314576893, '1996-08-20', '0987542789', 'veliz_458@gmail.com', '2019-05-20'),
(106, 'MACIAS QUIJIJE', 'ALBERTO COLON', 1301276578, '1989-01-20', '0999864537', 'maciasalbert@gmail.com', '2014-04-07'),
(107, 'BENITEZ ZAMBRANO', 'ANA ROCIO', 1345367900, '1994-05-20', '0972456278', '1987_rocio@gmail.com', '2020-01-20'),
(108, 'DELGADO VELIZ', 'MAURO FABRICIO', 0987542212, '1980-06-28', '0975467389', 'delgadofabrico@gmail.com', '2020-03-01'),
(109, 'URETA LUCAS', 'JUANA DEL ROCIO', 1312768394, '1994-06-06', '0965428908', 'ejuanaureta@gmail.com', '2019-07-20'),
(110, 'ZAMBRANO ALAVA', 'PAOLA ALEJANDRA', 1318764309, '1995-10-31', '0979988123', 'alavapao98@gmail.com', '2019-08-12');

/*DATOS INSERTADOS EN DEPARTAMENTO*/
insert into DEPARTAMENTO values
(90, 'Dirección Financiera', 2),
(91, 'Dirección Logística', 1),
(92, 'Área Técnico-Mecánica', 3),
(93, 'Dirección de Compra', 1),
(94, 'Dirección de Recursos Humanos', 1),
(95, 'Dirección de Contrato Arrendamiento', 1),
(96, 'Gerencia', 1);

/*DATOS INSERTADOS EN ENCARGADO DEPARTAMENTO*/
insert into REGISTROENCARGADODEPART values
(81, 90, 110, '2020-02-10'),
(82, 91, 101, '2019-05-19'),
(83, 92, 106, '2017-08-11'),
(84, 93, 109, '2019-07-20'),
(85, 94, 105, '2019-12-16'),
(86, 95, 103, '2017-09-11'),
(87, 96, 107, '2020-01-20');

/*DATOS INSERTADOS EN CLIENTE*/
insert into CLIENTE values
(01, 'Bryan Luzardo Delgado', 0979218973, 'bryanci98@gmail.com', 'Centro', 'Manta', 'PERSONA NATURAL', 'N.A' ),
(02, 'Mario Delgado Gómez', 0999998878, 'mgmariodelga@gmail.com', 'Cdla Los Electricos', 'Portoviejo', 'BROKERS', 'Representante de la cadena de tiendas alquiler de vehiculo Manta ubicados en la ciudad de Portoviejo'),
(03, 'Maria Vera Vélez', 0987653478, 'mariaveravelez@org', 'Av 4 de Noviembre', 'Manta', 'BROKERS', 'Representante de la tienda de alquiler vehicular Cambio y Rento'),
(04, 'Paolo Cedeño Dueñas', 0987456999, 'paopol@hotmail.com', 'Los Esteros', 'Manta', 'PERSONA NATURAL', 'N.A'),
(05, 'Alfaro Moreno Moreno', 0999999999, 'N.A', 'N.A', 'MANTA', 'PERSONA NATURAL', 'N.A'),
(06, 'Ana Vivas Bailón', 0987656542, 'vivasana@hotmail.com', 'Nuevo Tarqui', 'Manta', 'PERSONA NATURAL', 'N.A'),
(07, 'Belen Soledispa Álava', 0987654334,'mariabelen_segu@hotmail.com', 'Calles Las Américas','Portoviejo', 'BROKERS', 'Representante de la cadena de tienda alquiler de vehicula Seguridad de Manta'),
(08, 'Rambo Gutierrez Gutierrez', 0999999999, 'N.A', 'Centro', 'Manta', 'PERSONA NATURAL', 'N.A');

/*DATOS INSERTADOS EN PROVEEDOR*/
insert into PROVEEDOR values
(200, 'Ambacar La Paz', 'Av 4 de noviembre calle 119 diag Ig la Paz', '0976345674', 'ambacarecuador@hotmail.com'),
(201, 'Corporación Maresa', 'Av. 113 #1114 y Calle 119', '0984167698', 'corpmaresa@gmail.com'),
(202, 'Nissan Ecuador', 'Av 4 de noviembre 1003, Manta', '0986542167', 'nissanec20@live.org'),
(203, 'Metrocar', 'Av 4 de noviembre ciudad Manta', '0987234564', 'metrocar@hotmail.com'),
(204, 'Toyocosta', 'Av 4 de noviembre esq Manta', '0923456781', 'toyoecu@gmail.com');

/*DATOS INSERTADOS EN MARCA VEHICULAR*/
insert into MARCAVEHICULAR values
(400, 'Nissan'),
(401, 'Chery'),
(402, 'Jeep'),
(403, 'Ford'),
(404, 'Mazda'),
(405, 'Chevrolet'),
(406, 'Kia'),
(407, 'Hyundai'),
(408, 'Wolkswagen');

/*DATOS INSERTADOS EN VEHICULO*/
insert into VEHICULO values
(300, 201, 400, 'Berlinas', 'MMN-0987', '987554D456', '2019-05-20',  '87TY678UH75E3', '9876435TG6', 'SI', 200, 'Auto Nissan Junior de color gris, con parqueo inteligente'),
(301, 200, 401, 'Crossovers','MAT-0734', '987554D456', '2020-02-10', '973YG78V9B0WY', 'I7D654TGCB', 'SI', 220, 'Auto Chery con 4 puertas, color negro comodidad para la familia'),
(302, 202, 402, 'crossovers', 'MPL-0376', '987554D456', '2019-05-12','UF67V9C0BJJ0T', '8F6VTYD56S', 'SI', 230.99, 'Jeep color azul todo terreno para campo'),
(303, 200, 403, 'Camioneta', 'GTY-0345', '987554D456', '2019-06-25', '8VY6THNM7E89D', '0OCY5TE67C', 'SI', 280, 'Camioneta Ford doble cabina blanca con parqueo inteligente'),
(304, 200, 404, 'Berlinas', 'PBT-0123', '987554D456', '2020-10-23',  '4SR5G6E78CBGF', '34CTY7UN68', 'SI', 126.90, 'Auto Mazda color rojo con 5 velocidades'),
(305, 203, 405, 'Ejecutivo', 'MOP-0780', '987554D456', '2019-06-05', 'P08CBGF6YJSK3', '4TCVB56UNF', 'SI', 250, 'Auto de color plomo con parqueo inteligente'),
(306, 201, 406, 'Berlinas', 'MMV-09091', '987554D456', '2020-08-01', 'XC387FG6YE78D', 'VBGT789COI', 'SI', 278.50, 'Color azul, 5 velocidades, parqueo inteligente'),
(307, 204, 407, 'compactos', 'MAD-0857', '987554D456', '2018-11-12', '97VGFTD7WUV8D', '0CIKUF67BBN', 'SI', 220, 'Ideal para la familia, con 5 velocidades, color rojo'),
(308, 203, 408, 'Ejecutivo', 'MRT-0460', '987554D456', '2020-03-15', 'P08BFF5678VFH', 'SY56CVFDT2', 'SI', 300, 'Auto ejecutivo para viajes color negro');

/*DATOS INSERTADOS EN RESERVA*/
insert into RESERVA values
(1000, 01, 300, 'B', '2020/11/20 11:00.56', '2020/11/21 16:40.20', 'EFECTIVO',  'CANCELADO'),
(1001, 04, 307, 'B', '2020/12/02 12:07.36', '2020/12/02 19:00.20', 'EFECTIVO', 'CANCELADO'),
(1002, 02, 300, 'B', '2020/12/01 13:17.25', '2020/12/11 13:17.20', 'EFECTIVO','CANCELADO'),
(1003, 08, 307, 'C', '2020/11/11 09:00.15', '2020/11/12 16:40.20', 'TARJETA', 'PENDIENTE'),
(1004, 06, 304, 'B', '2020/12/09 14:00.10', '2020/12/15 14:00.20', 'EFECTIVO',  'PENDIENTE'),
(1005, 05, 305, 'D', '2020/12/10 16:00.50', '2020/12/12 16:00.20', 'TARJETA', 'PENDIENTE');

/*datos insertados en REGISTRO REVISION*/
insert into REGISTROREVISION values
(100, 01, 300, 102, 1000, '2020/11/21', 10,  'Auto traido en buen estado, cliente sastifecho por el auto adquirido'),
(101, 04, 307, 104, 1001, '2020/12/03',  8, 'Auto traido en buen estado, cliente sastifecho por el auto adquirido'),
(102, 02, 304, 106, 1002, '2020/12/12',  7,'Auto revisado por el gerente por el tipo de cliente BROKERS, un pequeño rasguñón en el capó'),
(103, 08, 307, 108, 1003, '2020/11/12',  5, 'Retraso de fecha-hora de entrega a la empresa de alquiler vehicular'),
(104, 06, 304, 104, 1004, '2020/12/16',  9, 'Auto viene por revision dia, aun no entrega el vehículo por la fecha de entrega modificada'),
(105, 05, 305, 108, 1005, '2020/12/13',  3, 'Cliente puesto en observación por el estado regular del vehículo');
