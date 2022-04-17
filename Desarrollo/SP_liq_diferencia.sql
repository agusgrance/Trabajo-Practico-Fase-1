
delimiter $$
CREATE PROCEDURE liq_diferencia(IN proyecto INT, IN anio INT, IN user int)
BEGIN 
IF user % 2 = 0
THEN  

SET @asignado = (SELECT p.horas_asignadas from proyecto p WHERE p.id = proyecto);
SET @realizado = (SELECT ifnull(sum(r.horas_diarias),0 ) AS horas_mesuales FROM rendicion_de_horas r WHERE  YEAR(r.fecha) = anio) ;

INSERT INTO liquidacion_diferencia( id_proyecto,horas_utilizadas, diferencia)
VALUES (proyecto, @realizado, @realizado - @asignado);

SELECT * FROM liquidacion_diferencia ld
WHERE ld.id_proyecto = proyecto
; 
END
IF;
END;
$$

CREATE TABLE liquidacion_diferencia (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, id_proyecto INT NOT NULL, horas_utilizadas INT NOT NULL, diferencia int NOT NULL);


/*
DROP PROCEDURE liq_diferencia;
DELETE FROM liquidacion_diferencia;
*/






