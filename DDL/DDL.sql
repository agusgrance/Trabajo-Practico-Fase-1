create database trabajo_practico;
use trabajo_practico;

create table participante (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  legajo INT NOT NULL,
  nombre VARCHAR(255),
  apellido VARCHAR(255),
  rol VARCHAR(255)
);


create table proyecto (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255),
  horas_asignadas INT
);
create table rendicion_de_horas (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_participante INT NOT NULL,
  id_proyecto INT NOT NULL,
  detalle VARCHAR(255),
  fecha DATE,
  horas_diarias INT,
  horas_semanales INT,
  horas_mensuales INT
);

create table asignacion (
  	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_proyecto INT, 
  	id_participante INT,
  	horas_asignadas INT
);

CREATE TABLE cliente(
 id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 nombre VARCHAR(255),
 id_proyecto INT
);

CREATE TABLE liquidacion_mensual(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
periodo DATE,
monto_total DECIMAL(10,2)
);






