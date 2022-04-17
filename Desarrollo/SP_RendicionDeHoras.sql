
/*
Creo procedure RendicionDeHoras
*/
delimiter $$
CREATE PROCEDURE RendicionDeHoras(IN id_participante INT, IN id_proyecto INT, IN fecha DATE, IN detalle VARCHAR(255), IN horas_d INT)
BEGIN

SET @mes = (SELECT IFNULL(SUM(r.horas_diarias ) + horas_d, horas_d) FROM  rendicion_de_horas r
WHERE r.id_participante  = id_participante AND r.id_proyecto = id_proyecto AND MONTH(r.fecha) = MONTH(fecha) AND YEAR(r.fecha) = YEAR(fecha) ) ;

SET @semana = (SELECT IFNULL(SUM(r.horas_diarias ) + horas_d, horas_d) FROM  rendicion_de_horas r
WHERE r.id_participante  = id_participante AND r.id_proyecto = id_proyecto AND MONTH(r.fecha) = MONTH(fecha) AND WEEK(r.fecha) = WEEK(fecha) AND YEAR(r.fecha) = YEAR(fecha) ); 

INSERT INTO rendicion_de_horas(id_participante, id_proyecto, detalle , fecha , horas_diarias ,horas_semanales , horas_mensuales)
VALUES(id_participante,id_proyecto, detalle, fecha, horas_d, @semana, @mes);
END;
$$


/*
DROP PROCEDURE RendicionDeHoras;

DELETE FROM rendicion_de_horas;

*/
