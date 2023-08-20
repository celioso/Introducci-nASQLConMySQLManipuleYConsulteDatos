use jugos;
UPDATE tbproductos SET producto = '812829', envase = 'lata'
WHERE volumen = '350 ml';

UPDATE tbproductos SET precio = 20.51
WHERE producto = '695594';

UPDATE tbproductos SET sabor = 'Lima/Limón', precio = 4.90
WHERE producto = '1041119';

SELECT * FROM tbproductos;

UPDATE tabla_de_vendedor SET porcentaje_comision = 0.11
WHERE matricula = '00236';

UPDATE tabla_de_vendedor SET NOMBRE = 'Joan Geraldo de la Fonseca Junior'
WHERE matricula = '00233';

SELECT * FROM tabla_de_vendedor;
