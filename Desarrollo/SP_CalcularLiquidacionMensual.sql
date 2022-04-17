
delimiter $$
CREATE PROCEDURE CalcularLiquidacionMensual(IN cliente int,IN proyecto INT, IN mes INT,IN anio INT, USER int )
BEGIN 

IF USER % 2 = 0
THEN  
SET @mes = (SELECT ifnull(MAX(r.horas_mensuales),0 ) AS horas_mesuales FROM rendicion_de_horas r WHERE r.id_proyecto = proyecto AND MONTH(r.fecha) = mes AND YEAR(r.fecha) = anio);

INSERT INTO calculo_liq_mensual(id_cliente, id_proyecto, horas_totales) 
VALUES (cliente, proyecto, @mes);
SELECT * FROM calculo_liq_mensual 
WHERE id_cliente = cliente AND id_proyecto = proyecto AND horas_totales = @mes;
END
IF;
END;
$$

/*
DROP TABLE calculo_liq_mensual
DELETE FROM calculo_liq_mensual
DROP PROCEDURE CalcularLiquidacionMensual;
*/
CREATE TABLE calculo_liq_mensual(id int NOT NULL AUTO_INCREMENT primary KEY, id_cliente INT, id_proyecto INT, horas_totales INT); 

