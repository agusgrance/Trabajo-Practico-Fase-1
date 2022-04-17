/**Pruebas RendicionDeHoras**/|
CALL RendicionDeHoras(1,1,'2022-04-14' ,'primer Cambio',4); /*1er subida*/
CALL RendicionDeHoras(1,1,'2022-04-21' ,'primer Cambio',4); /*cambio de semana*/ 
CALL RendicionDeHoras(1,1,'2022-03-21' ,'primer Cambio',5); /*cambio el mes*/
CALL RendicionDeHoras(1,1,'2021-04-14' ,'primer Cambio',5); /*cambio el año*/
CALL RendicionDeHoras(2,1,'2022-04-14' ,'primer Cambio',5); /*cambio el participante*/
CALL RendicionDeHoras(1,2,'2022-04-14' ,'primer Cambio',5); /*cambio el proyecto*/
/****/



/** Pruebas CalcularLiquidacionMensual **/

/*Solamente los users par pueden realizar el calculo*/
CALL CalcularLiquidacionMensual(1,1,4,2022, 6);  /*Calculo liq del cliente (1) y mes de abril (4), si el user es par se realiza la accion */
CALL CalcularLiquidacionMensual(1,1,4,2022, 1); /* No se realiza accion porque el user es impar*/
CALL CalcularLiquidacionMensual(1,1,1,2022, 6);  /*Calculo liq del mes de enero (1)*/
/****/


/** Pruebas CalcularLiquidacionMensual **/
CALL liq_diferencia(1, 2022, 2); /*Calculo la diferencia de horas asignadas y horas trabajadas de un proyecto, funciona si el user es par*/
CALL liq_diferencia(1, 2022, 1); /*user es impar*/

/****/

