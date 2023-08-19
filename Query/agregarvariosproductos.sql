USE jugos;
/* inserta productos*/
INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,precio)
VALUES ('838819', 'clean', 'botella pet',
'1,5 Litros', 'naranja', 12.01);

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,precio)
VALUES ('1037797', 'clean', 'botella pet',
'2 Litros', 'naranja', 16.01);

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,precio)
VALUES ('812829', 'clean', 'Lata',
'350 ml', 'naranja', 2.81);

SELECT * FROM tbproductos;

INSERT INTO TABLA_DE_VENDEDOR
(MATRICULA, NOMBRE, PORCENTAJE_COMISION)
VALUES
 ('00235','Márcio Almeida Silva',0.08);

INSERT INTO TABLA_DE_VENDEDOR
(MATRICULA, NOMBRE, PORCENTAJE_COMISION)
VALUES
('00236','Cláudia Morais',0.08);

SELECT * FROM TABLA_DE_VENDEDOR;
