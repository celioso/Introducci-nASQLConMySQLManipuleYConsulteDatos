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