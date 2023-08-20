USE jugos;

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUE ('773912', 'clear', 'botella pet', '1 litro', 
'naranja', 8.01);

SELECT * FROM tbproductos;

ALTER TABLE tbproductos ADD PRIMARY KEY(producto);