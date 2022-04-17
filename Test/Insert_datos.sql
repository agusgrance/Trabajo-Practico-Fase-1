use trabajo_practico;

INSERT INTO participante (legajo, nombre, apellido, rol) 
VALUES (5523479,'Pablo', 'Perez', 'Desarrollador'),
(5523453,'Federico', 'Benitez', 'QA'),
(5456223,'Ricardo', 'Garcia', 'Project Manager'),
(1235574,'Maria', 'Saavedra', 'Desarrollador'),
(3325552,'Soledad', 'Ramirez', 'QA');

INSERT INTO proyecto (nombre, horas_asignadas)
VALUES ('Sitio Web', 60),
('Aplicacion', 80);

INSERT INTO asignacion (id_proyecto, id_participante , horas_asignadas)
VALUES(1,1,12),
(1,2,12),
(2,4,12),
(2,5,12);

INSERT INTO cliente (nombre,id_proyecto)
VALUES ('Aluminios SRL', 1),
('Wallet Coin', 2);