/*Create user App_carga*/


CREATE USER 'App_carga'@'%' IDENTIFIED BY '1234'  

GRANT INSERT ON trabajo_practico.rendicion_de_horas TO 'App_carga'@'%';

/*Create user liquidador*/


CREATE USER 'liquidador'@'%' IDENTIFIED BY '1234'  

GRANT INSERT ON trabajo_practico.liquidacion_mensual TO 'liquidador'@'%';


/*Create user administrador*/

CREATE USER 'administrador'@'%' IDENTIFIED BY '1234'  

GRANT ALL PRIVILEGES ON trabajo_practico.* TO 'administrador'@'%';