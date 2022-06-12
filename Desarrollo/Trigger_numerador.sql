USE trabajo_practico

create table numerador (
id int not null auto_increment primary key,
tabla varchar(255),
id_cliente INT ,
periodo DATE, 
id_siguiente int not null
);


insert into numerador (tabla, id_siguiente, id_cliente, periodo) VALUES ( 'liquidacion_mensual', 1, 1 ,'2022-11-06' );

USE trabajo_practico
delimiter $$
create trigger insercion
before insert on liquidacion_mensual
for each row

BEGIN

set @id = IFNULL((select id_siguiente from numerador where tabla = 'liquidacion_mensual' and id_cliente = new.id_cliente AND periodo = new.periodo ), 0);
IF @id > 0
then
update numerador set id_siguiente = @id + 1 WHERE tabla = 'liquidacion_mensual' AND id_cliente = new.id_cliente AND periodo = new.periodo;
END 
if;

if @id = 0
then 
INSERT INTO numerador (tabla, id_siguiente, id_cliente, periodo) VALUES ( 'liquidacion_mensual', ( new.id +1 ) , new.id_cliente, new.periodo);
END if; 

 
end;
$$


INSERT INTO liquidacion_mensual(id_cliente, periodo, monto_total) VALUES (1 ,'2022-10-06', 1200 )
