USE jugos;
/* inserta productos*/
INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,precio)
VALUES ('773912', 'clean', 'botella pet',
'1 litro', 'naranja', 8.01);

SELECT * FROM tbproductos;


/* inserta vendedores*/

INSERT INTO tabla_de_vendedor
(MATRICULA, NOMBRE, PORCENTAJE_COMISION)
VALUES('00233', 'Joan Geraldo de la Fonseca', 0.10);

SELECT * FROM tabla_de_vendedor;