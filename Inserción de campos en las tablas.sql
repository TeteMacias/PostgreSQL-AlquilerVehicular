# PostgreSQL-AlquilerVehicular

/*DATOS INSERTADOS EN TRABAJADORES*/
insert into TRABAJADORES values
('AB01', 'ZAMBRANO CASTRO MARIANA ELIZABETH', 1314576893, '0974562739', 'elizabethzambrano@gmail.com'),
('BC02', 'MERO MERO PABLO EDUARDO', 1303768972, '0934627801', 'pablopablo@gmail.com'),
('CD11', 'MOREIRA VERA ETHAN EMILIANO', 1314572389, '0877658903', 'ethanemiliano@gmail.com'),
('DE03', 'BAQUE GUERRERO JOSE ALBERTO', 0986345627, '0952673890', 'lili95@gmail.com'),
('F56G', 'VELIZ CHAVEZ MARIA BELEN', 1314576893, '0987542789', 'veliz_458@gmail.com'),
('HJD1', 'MACIAS QUIJIJE ALBERTO COLON', 1301276578, '0999864537', 'maciasalbert@gmail.com'),
('I0K1', 'BENITEZ ZAMBRANO ANA ROCIO', 1345367900, '0972456278', '1987_rocio@gmail.com'),
('L7U8', 'DELGADO VELIZ MAURO FABRICIO', 0987542212, '0975467389', 'delgadofabrico@gmail.com'),
('TU48', 'URETA LUCAS JUANA DEL ROCIO', 1312768394, '0965428908', 'ejuanaureta@gmail.com'),
('VB6G', 'ZAMBRANO ALAVA PAOLA ALEJANDRA', 1318764309, '0979988123', 'alavapao98@gmail.com');

/*DATOS INSERTADOS EN DEPARTAMENTO*/
insert into DEPARTAMENTO values
('01DIREF', 'VB6G', 'Dirección Financiera', 2),
('02DIRLG', 'AB01', 'Dirección Logística', 1),
('03ARTEC', 'HJD1', 'Área Técnico-Mecánica', 3),
('04DIRCP', 'TU48', 'Dirección de Compra', 1),
('05DRRHH', 'F56G', 'Dirección de Recursos Humanos', 1),
('06DICAR', 'CD11', 'Dirección de Contrato Arrendamiento', 1),
('07GEREN', 'I0K1', 'Gerencia', 1);

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
('0AB7', 'Ambacar La Paz', 'Av 4 de noviembre calle 119 diag Ig la Paz', '0976345674', 'ambacarecuador@hotmail.com'),
('2HTW', 'Corporación Maresa', 'Av. 113 #1114 y Calle 119', '0984167698', 'corpmaresa@gmail.com'),
('6WGD', 'Nissan Ecuador', 'Av 4 de noviembre 1003, Manta', '0986542167', 'nissanec20@live.org'),
('3DCV', 'Metrocar', 'Av 4 de noviembre ciudad Manta', '0987234564', 'metrocar@hotmail.com'),
('GH6X', 'Toyocosta', 'Av 4 de noviembre esq Manta', '0923456781', 'toyoecu@gmail.com');

/*DATOS INSERTADOS EN MARCA VEHICULAR*/
insert into MARCAVEHICULAR values
('N023A', 'Nissan'),
('C76hd', 'Chery'),
('J990P', 'Jeep'),
('FRD56', 'Ford'),
('MAZ45', 'Mazda'),
('C6YVL', 'Chevrolet'),
('KF7CD', 'Kia'),
('HUS80', 'Hyundai'),
('WVG45', 'Wolkswagen');

/*DATOS INSERTADOS EN VEHICULO*/
insert into VEHICULO values
('AB64','2HTW','N023A', 'Berlinas', 'MMN-0987', '987554D456', '2019-05-20',  '87TY678UH75E3', '9876435TG6', 'SI', 200, 'Auto Nissan Junior de color gris, con parqueo inteligente'),
('AB65','0AB7','C76hd', 'Crossovers','MAT-0734', '987554D456', '2020-02-10', '973YG78V9B0WY', 'I7D654TGCB', 'SI', 220, 'Auto Chery con 4 puertas, color negro comodidad para la familia'),
('AB66','6WGD','J990P', 'crossovers', 'MPL-0376', '987554D456', '2019-05-12','UF67V9C0BJJ0T', '8F6VTYD56S', 'SI', 230.99, 'Jeep color azul todo terreno para campo'),
('AB67','0AB7','FRD56', 'Camioneta', 'GTY-0345', '987554D456', '2019-06-25', '8VY6THNM7E89D', '0OCY5TE67C', 'SI', 280, 'Camioneta Ford doble cabina blanca con parqueo inteligente'),
('AB68','0AB7','MAZ45', 'Berlinas', 'PBT-0123', '987554D456', '2020-10-23',  '4SR5G6E78CBGF', '34CTY7UN68', 'SI', 126.90, 'Auto Mazda color rojo con 5 velocidades'),
('AB69','3DCV','C6YVL', 'Ejecutivo', 'MOP-0780', '987554D456', '2019-06-05', 'P08CBGF6YJSK3', '4TCVB56UNF', 'SI', 250, 'Auto de color plomo con parqueo inteligente'),
('AB70','2HTW','KF7CD', 'Berlinas', 'MMV-09091', '987554D456', '2020-08-01', 'XC387FG6YE78D', 'VBGT789COI', 'SI', 278.50, 'Color azul, 5 velocidades, parqueo inteligente'),
('AB71','GH6X','HUS80', 'compactos', 'MAD-0857', '987554D456', '2018-11-12', '97VGFTD7WUV8D', '0CIKUF67BBN', 'SI', 220, 'Ideal para la familia, con 5 velocidades, color rojo'),
('AB72','3DCV','WVG45', 'Ejecutivo', 'MRT-0460', '987554D456', '2020-03-15', 'P08BFF5678VFH', 'SY56CVFDT2', 'SI', 300, 'Auto ejecutivo para viajes color negro');

/*DATOS INSERTADOS EN RESERVA*/
insert into RESERVA values
('RS001',01, 'AB64', 'B', '2020/11/20 11:00.56', '2020/11/21 16:40.20', 'EFECTIVO',  'CANCELADO'),
('RS002',04, 'AB71', 'B', '2020/12/02 12:07.36', '2020/12/02 19:00.20', 'EFECTIVO', 'CANCELADO'),
('RS003',02, 'AB64', 'B', '2020/12/01 13:17.25', '2020/12/11 13:17.20', 'EFECTIVO','CANCELADO'),
('RS004',08, 'AB71', 'C', '2020/11/11 09:00.15', '2020/11/12 16:40.20', 'TARJETA', 'PENDIENTE'),
('RS005',06, 'AB68', 'B', '2020/12/09 14:00.10', '2020/12/15 14:00.20', 'EFECTIVO',  'PENDIENTE'),
('RS006',05, 'AB69', 'D', '2020/12/10 16:00.50', '2020/12/12 16:00.20', 'TARJETA', 'PENDIENTE');

/*datos insertados en REGISTRO REVISION*/
insert into REGISTROREVISION values
(100, 01, 'AB64', 'BC02', 'RS001', '03ARTEC', 10,  'Auto traido en buen estado, cliente sastifecho por el auto adquirido'),
(101, 04, 'AB71', 'DE03', 'RS002', '03ARTEC', 8, 'Auto traido en buen estado, cliente sastifecho por el auto adquirido'),
(102, 02, 'AB64', 'HJD1', 'RS003', '07GEREN', 7,'Auto revisado por el gerente por el tipo de cliente BROKERS, un pequeño rasguñón en el capó'),
(103, 08, 'AB71', 'L7U8', 'RS004', '03ARTEC', 5, 'Retraso de fecha-hora de entrega a la empresa de alquiler vehicular'),
(104, 06, 'AB68', 'DE03', 'RS005', '03ARTEC', 9, 'Auto viene por revision dia, aun no entrega el vehículo por la fecha de entrega modificada'),
(105, 05, 'AB69', 'L7U8', 'RS006', '03ARTEC', 3, 'Cliente puesto en observación por el estado regular del vehículo');

