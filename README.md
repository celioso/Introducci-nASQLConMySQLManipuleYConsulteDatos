# Introduccion a SQL con MySQL manipule y consulteDatos

## Lo que aprendimos

Lo que aprendimos en esta aula:

- Conocimos un poco sobre la historia de SQL como lenguaje de base de datos relacional.
- Vimos un poco sobre la historia y características de la base de datos MySQL.
- Aprendimos a instalar MySQL y Workbench.

## Haga lo que hicimos en aula
Llegó la hora de que sigas todos los pasos realizados por mí durante esta clase. Si ya lo has hecho ¡Excelente! Si todavía no, es importante que ejecutes lo que fue visto en los vídeos para que puedas continuar con la próxima aula.

1. Accede al Workbench.

2. En la esquina izquierda, tenemos una estructura en forma de árbol donde vemos la base de datos, o los esquemas.

3. Abriendo una de las bases de datos podemos ver algunos de sus componentes.

4. En el menú del Workbench, tenemos el botón `+ SQL` donde una área de edición será creada para que podamos incluir los comandos de SQL para administrar nuestra base de datos.

5. Haz doble clic en la base de datos world. Luego ejecuta el siguiente comando en el área de edición:
```sql
SELECT * FROM city;
```

6. Haz clic en el botón que tiene un rayo y la consulta es ejecutada.

7. Digita, abajo, un nuevo comando:
```sql
SELECT * FROM country;;
```

8. Haz clic en el botón que tiene un rayo y las dos consultas serán ejecutadas.

9. Si tú seleccionas un área con algunos comandos y haces click sobre el botón que tiene un rayo, solamente aquel comando seleccionado es el que será ejecutado.

10. En caso de que el comando esté incorrecto, abajo verás el resultado de cada ejecución (si fue exitosa o no).

11. Vamos a crear una base de datos. Para ello, crea un nuevo script en el Workbench y digita:

```sql
CREATE DATABASE jugos;
```

12. Ejecuta el comando. Ten en cuenta que la base de datos está siendo creada.

13. De la misma manera, podemos crear la base de datos a través de un asistente. Para ello, haz clic con el botón de derecho del mouse sobre un área cualquiera donde está localizada la lista de la base de datos. Entonces, seleciona la opción `Create Schema`.

14. Incluye el nombre de la base de datos (ex: jugos2).

15. Haz clic en la opción `Apply`.

16. El comando SQL será exhibido. Haz clic nuevamente en` Apply` y la nueva base de datos será creada.

17. También, podemos borrar la base de datos. Ejecuta el comando:

```sql
DROP SCHEMA jugos;
```

18. Ten en cuenta que la base no aparece más en la lista de las bases de datos.

19) Si escogemos la base de datos **jugos2**, con el botón derecho del mouse, podemos también borrar la misma haciendo clic sobre `Drop Schema`.

20. Es posible acceder a MySQL por líneas del `command prompt`. Dirígete hacia el subdirectorio `c:\Program Files\MySQL\MySQL Server 8.0\bin`.

21. Digita el comando: `mysql.exe -h localhost -u root -p`

Teclea ENTER y después incluye la contraseña.

22. Digita el comando: `create database jugos`;

Si vas a comprobar en Workbench verás que la base de datos jugos se ha añadido a la lista de bases disponibles.

23. Para ejecutar una consulta en la base de ejemplo world digita: `use world`; Presiona ENTER, y ahora digita: `select * from cities;` y digita ENTER nuevamente.

24. Verás que la lista de ciudades será mostrada en el command prompt.

25. Para salir digita: `exit`.

**Observación**: ¿Has notado que los comandos en SQL no son case sensitive? ¡Estamos seguros de que sí lo has notado! Puedes escribirlos tanto en mayúsculas como en minúsculas. (Aunque las buenas prácticas nos sugieren escribir siempre los comandos en mayúscula).

## Lo que aprendimos

- Lo que aprendimos en esta aula:
- A acceder y navegar por Workbench.
- A crear una base de datos por líneas de comando en SQL o por el asistente.
- A borrar una base de datos por líneas de comando en SQL o por el asistente.
- A acceder a una tabla por líneas de comando o por el asistente.

### Proyecto del aula anterior
¿Comenzando en esta etapa? Aquí puedes descargar los archivos del proyecto que hemos avanzado hasta el aula anterior.

[Descargue los archivos en Github](https://github.com/alura-es-cursos/1790-introduccion-a-sql-con-mysql/tree/aula-3 "Descargue los archivos en Github") o haga clic [aquí](https://github.com/alura-es-cursos/1790-introduccion-a-sql-con-mysql/archive/refs/heads/aula-3.zip "aquí") para descargarlos directamente.

# Creando tabla de vendedores

Nuestro sistema de ventas solicita la creación de una tabla más para los vendedores.

**Información importante:**

El nombre de la tabla debe ser `TABLA_DE_VENDEDORES`.

El vendedor tiene el número interno de la matrícula, que será almacenado en el campo MATRÍCULA, que debe ser un *string* de 5 posiciones.

El nombre del vendedor deberá ser almacenado en el campo `NOMBRE`, y debe ser un string de 100 posiciones.

Crear el campo `PORCENTAJE_COMISION` que representa el porcentaje de comisión que el vendedor gana sobre cada venta.

Crear esta tabla en la base de datos **jugos**.

```sql
CREATE TABLE TABLA_DE_VENDEDORES (
    MATRICULA varchar(5), 
    NOMBRE varchar(100), 
    PORCENTAJE_COMISION float);
```

## Eliminando tabla de vendedores

Eliminar la tabla `TABLA_DE_VENDEDORES2` usando script SQL.

Para crear la tabla antes de eliminarla, ejecute:

```sql
CREATE TABLE TABLA_DE_VENDEDORES2 (
    MATRICULA varchar(5), 
    NOMBRE varchar(100), 
    PORCENTAJE_COMISION float);
```

### Eliminar tabla

```sql
DROP TABLE TABLA_DE_VENDEDORES2;
```

## Haga lo que hicimos en aula

Llegó la hora de que sigas todos los pasos realizados por mí durante esta clase. Si ya lo has hecho ¡Excelente! Si todavía no, es importante que ejecutes lo que fue visto en los vídeos para que puedas continuar con la próxima aula.

1. Accede a MySQL Workbench.

2. Crea la tabla de clientes digitando el siguiente comando:

```sql
USE JUGOS;
CREATE TABLE TBCLIENTES(
DNI VARCHAR(20),
NOMBRE VARCHAR(150),
DIRECCION1 VARCHAR(150),
DIRECCION2 VARCHAR(150),
BARRIO VARCHAR(50),
CIUDAD VARCHAR(50),
ESTADO VARCHAR(50),
CP VARCHAR(10),
EDAD SMALLINT,
SEXO VARCHAR(1),
LIMITE_CREDITO FLOAT,
VOLUMEN_COMPRA FLOAT,
PRIMERA_COMPRA BIT(1));
```

3. Ejecuta el comando y después actualiza el árbol de Workbench para observar la nueva tabla creada.

4. Podemos crear una tabla utilizando el asistente también. (Botón derecho del mouse sobre `Tables`, abajo de la base de datos jugos, y escoge la opción `Create table`.

5. Digita el nombre de la tabla como `tbproductos`.

6. Incluye los campos de acuerdo con lo que se muestra abajo:

````sql
CREATE TABLE tbproductos
(PRODUCTO VARCHAR (20) ,
NOMBRE VARCHAR (150) ,
ENVASE VARCHAR (50) ,
VOLUMEN VARCHAR (50) ,
SABOR VARCHAR (50) ,
PRECIO FLOAT);
```

7. Haz clic en el botón Apply.

8. Verifica el comando que será ejecutado. Haz clic en` Apply` nuevamente y la tabla será creada.

9. La tabla puede ser eliminada. Para eso digita el comando para crear nuevas tablas.

```sql
CREATE TABLE TBCLIENTES2(
DNI VARCHAR(20),
NOMBRE VARCHAR(150),
DIRECCION1 VARCHAR(150),
DIRECCION2 VARCHAR(150),
BARRIO VARCHAR(50),
CIUDAD VARCHAR(50),
ESTADO VARCHAR(50),
CP VARCHAR(10),
EDAD SMALLINT,
SEXO VARCHAR(1),
LIMITE_CREDITO FLOAT,
VOLUMEN_COMPRA FLOAT,
PRIMERA_COMPRA BIT(1));

CREATE TABLE TBCLIENTES3(
DNI VARCHAR(20),
NOMBRE VARCHAR(150),
DIRECCION1 VARCHAR(150),
DIRECCION2 VARCHAR(150),
BARRIO VARCHAR(50),
CIUDAD VARCHAR(50),
ESTADO VARCHAR(50),
CP VARCHAR(10),
EDAD SMALLINT,
SEXO VARCHAR(1),
LIMITE_CREDITO FLOAT,
VOLUMEN_COMPRA FLOAT,
PRIMERA_COMPRA BIT(1));
``` 

10. Fueron creadas dos tablas. Ahora vamos a eliminarlas. La primera por el script de comando:

```sql
DROP TABLE TBCLIENTES3;
```

11. A través del asistente, basta hacer clic con el botón derecho del mouse sobre el nombre de la tabla, **TBCLIENTES2**, y seleccionar la opción `Drop Table..`.

### Lo que aprendimos

Lo que aprendimos en esta aula:

- Los tipos de datos que componen una tabla.
- A crear una tabla, tanto por líneas de comando como por el asistente.
- A eliminar una tabla.

## Proyecto del aula anterior
¿Comenzando en esta etapa? Aquí puedes descargar los archivos del proyecto que hemos avanzado hasta el aula anterior.

[Descargue los archivos en Github](https://github.com/alura-es-cursos/1790-introduccion-a-sql-con-mysql/tree/aula-4 "Descargue los archivos en Github") o haga clic [aquí](https://github.com/alura-es-cursos/1790-introduccion-a-sql-con-mysql/archive/refs/heads/aula-4.zip "aquí") para descargarlos directamente.

## Descargar el archivo

Les dejo [aquí](https://caelum-online-public.s3.amazonaws.com/1790-Introduccion-sql/04/alura-arquivo.zip "aquí") el enlace para que puedan descargar el archivo comentado en el video anterior

### Actualizando la información sobre los vendedores

Recibimos la siguiente información:

Claudia Moral(00236) recibió un aumento y su comisión pasó a ser 11%. Joan Geraldo de la Fonseca(00233) reclamó que su nombre real es Joan Geraldo de la Fonseca Junior.

Efectúe estas correcciones en la base de datos.

### Opinión del instructor

```sql
UPDATE TABLA_DE_VENDEDORES SET PORCENTAJE_COMISION = 0.11
WHERE MATRICULA = '00236';

UPDATE TABLA_DE_VENDEDORES SET NOME = 'Joan Geraldo de la Fonseca Junior'
WHERE MATRICULA = '00233';
```

### Eliminando un vendedor

El vendedor Joan Geraldo de la Fonseca Junior matrícula(00233) fue despedido.

Hay que retirarlo de la tabla de vendedores.

### Opinión del instructor
`DELETE FROM TABLA_DE_VENDEDORES WHERE MATRICULA = '00233';`

### Modificando la tabla de vendedores

Vamos a incluir nuevos campos en la tabla de vendedores. Ellos serán la fecha de admisión. (Nombre del campo FECHA_ADMISION), y si el vendedor está o no de vacaciones. (Nombre del campo DE_VACACIONES). No olvides recrear la clave primaria y después incluye la siguiente información:

- Matrícula - 00235
- Nombre: Márcio Almeida Silva
- Comision: 8%
- Fecha de admisión: 15/08/2014
- ¿Está de vacaciones? No
---
- Matrícula - 00236
- Nombre: Cláudia Morais
- Comision: 8%
- Fecha de admisión: 17/09/2013
- ¿Está de vacaciones? Si
---
- Matrícula - 00237
- Nombre: Roberta Martins
- Comision: 11%
- Fecha de admisión: 18/03/2017
- ¿Está de vacaciones? Si
---
- Matrícula - 00238
- Nombre: Péricles Alves
- Comision: 11%
- Fecha de admisión: 21/08/2016
- ¿Está de vacaciones? No
Tips:

- Elimina la tabla.
- Crea la tabla nuevamente incluyendo los nuevos campos.
- Crea la clave primaria.
- Incluye los comandos de INSERT.

```SQL
DROP TABLE TABLA_DE_VENDEDORES;

CREATE TABLE TABLA_DE_VENDEDORES
( MATRICULA varchar(5),
NOMBE varchar(100),
PORCENTAJE_COMISION float,
FECHA_ADMISION date,
DE_VACACIONES bit);

ALTER TABLE TABLA_DE_VENDEDORES ADD PRIMARY KEY (MATRICULA);

INSERT INTO TABLA_DE_VENDEDORES
(MATRICULA, NOMBRE, FECHA_ADMISION, PORCENTAJE_COMISION, DE_VACACIONES) VALUES ('00235','Márcio Almeida Silva','2014-08-15',0.08,0);

INSERT INTO TABLA_DE_VENDEDORES
(MATRICULA, NOMBRE, FECHA_ADMISION, PORCENTAJE_COMISION, DE_VACACIONES) VALUES ('00236','Cláudia Morais','2013-09-17',0.08,1);

INSERT INTO TABLA_DE_VENDEDORES
(MATRICULA, NOMBRE, FECHA_ADMISION, PORCENTAJE_COMISION, DE_VACACIONES) VALUES ('00238','Pericles Alves','2016-08-21',0.11,0);
```

###  Haga lo que hicimos en aula

Llegó la hora de que sigas todos los pasos realizados por mí durante esta clase. Si ya lo has hecho ¡Excelente! Si todavía no, es importante que ejecutes lo que fue visto en los vídeos para que puedas continuar con la próxima aula.

1. Accesa al Workbench.
2. Crea una nueva consulta y digita el comando de abajo:

```sql
USE jugos;

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('773912', 'clean', 'botella pet',
'1 litro', 'naranja', 8.01);
```

El comando de arriba insertará un registro en la tabla.

3. Ejecuta el comando:

`SELECT * FROM tbproductos;`

Verás que el registro fue insertado en la tabla.

4. Crea un nuevo script en Workbench.

5. Digita los siguientes comandos:

```sql
USE jugos;

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('838819', 'clean', 'botella pet',
'1.5 litros', 'naranja', 12.01);

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('1037797', 'clean', 'botella pet',
'2 litros', 'naranja', 16.01);

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('8128292', 'clean', 'latat',
'350 ml', 'naranja', 2.81);
```

Ahora el comando de arriba insertará diversos productos en la tabla.

6. Ejecuta el comando:

`SELECT * FROM tbproductos;`

Verás que varios registros fueron insertados en la tabla.

7. Crea un nuevo script en Workbench.

8. Digita el comando de abajo para insertar otros registros en la tabla:

```sql
USE jugos;

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('695594', 'Festival de Sabores', 'Botella PET',
'1.5 Litros', 'Asaí', 18.51);

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('1041119', 'Línea Citrus', 'Botella de Vidrio',
'700 ml', 'Lima', 4.90);
```

9. Ahora vamos a actualizar la información de los registros incluidos previamente. Digita:

```sql
UPDATE tbproductos SET producto = '812829', envase = 'lata'
WHERE volumen = '350 ml';

UPDATE tbproductos SET precio = 28.51
WHERE producto = '695594';

UPDATE tbproductos SET sabor = 'Lima/Limón', precio = 4.90
WHERE producto = '1041119';
```

10. Verás que los registros fueron actualizados ejecutando:

`SELECT * FROM tbproductos;`

11. También, podemos eliminar registros ya existentes en la tabla. Para ello digita, en otro Script, los siguientes comandos:

```sql
USE jugos;

DELETE FROM tbproductos WHERE producto = '773912';
```
12. Verás que el registro fue eliminado ejecutando:
```sql
SELECT * FROM tbproductos;
```

13. Aprendimos en las definiciones sobre la base de datos, que una tabla puede tener una clave primaria. Veamos abajo, cómo crear una clave primaria para la tabla de productos. Hazlo en un nuevo Script del Workbench:
```sql
USE jugos;

ALTER TABLE tbproductos ADD PRIMARY KEY(PRODUCTO);
```

14. Ejecuta el comando siguiente dos veces:
```sql
INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('773912', 'clean', 'botella pet',
'1 litro', 'naranja', 8.01);

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('773912', 'clean', 'botella pet',
'1 litro', 'naranja', 8.01);
```
Observa que, la segunda vez que lo ejecutaste, MySQL mostrará un error porque se sale de los parámetros de la clave primaria, ya que el mismo registro en el campo producto no puede introducirse más de una vez.

15. En caso que desees cambiar el precio en este registro, debes actualizarlo:
```sql
UPDATE tbproductos SET precio = 28.51
WHERE producto = '773912';
```

16. Crea un nuevo script e incluye una clave primaria en la tabla de clientes.

```sql
USE jugos;

ALTER TABLE tbclientes ADD PRIMARY KEY (DNI);
```

17. Asimismo, con la tabla ya creada, podemos incluir nuevas columnas con el comando:
```sql
ALTER TABLE tbclientes ADD COLUMN(FECHA_NACIMIENTO DATE);
```

18. A continuación, encontrarás el comando para incluir un nuevo cliente. Ten en cuenta cómo tratamos la inclusión de un campo de tipo fecha (FECHA_NACIMIENTO) y uno de tipo lógico (PRIMERA_COMPRA):
```sql
INSERT INTO tbclientes( 
DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO,
CIUDAD, ESTADO, CP, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, 
PRIMERA_COMPRA, FECHA_NACIMIENTO) VALUES(
'456879548', 'Pedro el Escamoso', 'Calle del Sol, 25', '', 'Los Laureles', 'CDMX', 'México', '65784', 55, 'M',
1000000, 2000, 0, '1971-05-25');
```

### Lo que aprendimos

Lo que aprendimos en esta aula:

- A incluir datos en una tabla, de diversas formas.
- Vimos cómo cambiar un dato ya existente en la tabla.
- Vimos cómo eliminar una fila de la tabla.
- Conocimos la importancia de las claves primarias y el cuidado que debemos tener al crearlas.
- Aprendimos a manipular campos del tipo lógicos y del tipo fecha.

### Proyecto del aula anterior

¿Comenzando en esta etapa? Aquí puedes descargar los archivos del proyecto que hemos avanzado hasta el aula anterior.

[Descargue los archivos en Github](https://github.com/alura-es-cursos/1790-introduccion-a-sql-con-mysql/tree/aula-5 "Descargue los archivos en Github") o haga clic [aquí](https://github.com/alura-es-cursos/1790-introduccion-a-sql-con-mysql/archive/refs/heads/aula-5.zip "aquí") para descargarlos directamente.