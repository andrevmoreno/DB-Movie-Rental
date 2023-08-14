# PostgreSQL Ciencias de Datos


Es un proceso simple, sin embargo, para iniciar es necesario que cumplas con dos dependencias:

- La primera es haber instalado PostgreSQL y su set de herramientas en tu Sistema Operativo.
- La segunda es haber instalado PgAdmin 4 para que puedas interactuar de manera gráfica con la base de datos.
- Asegúrate de que el usuario postgresql se encuentra configurado y con todos los permisos.

Para conocer los detalles de la instalación de las anteriores dependencias, por favor visita el Curso de PostgreSQL donde es abordado a detalle. En este tutorial de importación asumimos que se encuentra correctamente configurado.

## Paso 1: ingresa a PgAdmin

https://lh3.googleusercontent.com/KVxuBdqMwgf1KHXjrAlLRdBchL65GjlvIe8OhDZMkVu5LNtuZxIMURKCtLRdhSo_CWpvKa_T-aB08RBlWBvTFAygXmAolXXPB9VukpZrvaMngw4u4rxJzKq_aEFBLbJT0oIPgMkK

## Paso 2: Crea la base de datos

Selecciona el elemento Databases del menú izquierdo, da click derecho y selecciona la opción Create > Database.

![](https://lh6.googleusercontent.com/QEkoVtyI95jWYpGPjdFWEP9cXCJQE4w9-gL2C_w385akD8h24RV1FRHozDnF4kAi7zjZpZCbBmVhGs3bnJ4m7aOXlbsIzI7LZs-4-pF6gkmoycabpduDGymt_M7NbK_hVkJ3pW2F)

En el campo Database escribe el nombre “platzimovies” y en el campo owner selecciona el usuario que será dueño de la base de datos.

![](https://lh3.googleusercontent.com/aeZPQ_s7r9kccSDmbKJBno7lhZmgp4dzOoiEBB6-dKPAj1InG7ZWwZq--9b5DByE0H8koq_bkQlPYdsyhu1KXmmwnLIeMEg9lBIGuZlrgs7O_IVdejYlmH0kYJRJDnbt3-EDlvaU)

Da click en el botón Save. Y posteriormente selecciona la base de datos recién creada en el menú derecho.

https://lh3.googleusercontent.com/XE_AhN2ce9I9ojycWYoonzxgWYyysxqJkT3NrrvWKicZee7_BrIyAY0r6XbSBPrqWxN-rmlBy0Ha9qC9cUlRQMkl08U4RrSGSLKQPVjUZofUwrIJ_qoRkN2BKC68VxBrreD7yZ8d

## Paso 3: Configura la restauración

Dirígete al menú Tools (Herramientas) y da click en la opción Restore (Restaurar).

![](https://lh4.googleusercontent.com/ZOnGI928dRqdpdbRvluuJQXdY5Sq1g6wLWMb7o_zaNETMkBwCU6sTMZzbx8d8McHEnbrIZ3JmeaqtXt-y28y_PiF3FqBuQg1ikL7kF-ZxRShwz3o0RYjKABa0StGQDKJjXZMea9u)

![](https://lh3.googleusercontent.com/a1eSRruEt-DFoqk4lIye4DIlIvBk70QQ4jkrtJYFB-WOwMtlpqYkmbRCuS6ax8b1JHWadeFY8pxcvgGl-_DB5XYIoXxpjL9UEaetUi89ct6g6wA73iYdPr-DgQumx2ByzTsKrTpn)

## Paso 4: Importa desde archivo

Selecciona la opción Custom or tar en el campo Format. En Role name elige el usuario con permisos root, normalmente es el usuario postgres o el nombre de usuario de tu computadora.

Finalmente, en el campo Filename selecciona el botón de 3 puntos y selecciona el archivo que deberás descargar haciendo click [aquí](https://drive.google.com/open?id=1oE7A4z_D2o-udn_yflwZ03uN3cA0gVpr)

Da click en el botón Restore.

https://lh5.googleusercontent.com/6TBLwWen71YXTyd4w3rxzoJdLym2mF7tR_kRgtH1Usd38cNvpmf0h6_LzsNRCK2mJHYNdRDcpBdfQ13GUfZEJdyU1oU3TZy5OmP6qBeAC4vddgX_NRhh6wfFsJGDa_IHvQG28f2d

Al ejecutar la restauración encontrarás un mensaje similar al siguiente:

https://lh6.googleusercontent.com/jd6iTRhNtOt1XMU9gDiuBUbOd3siZnyMYmiIioKHx-Fnh6nQwY-wt6-MVkpJhQHzYD5zBmdmVndvPHxZ3fBHGQ1KbLQwzv40TiIrG_VVELFBPlF0bubRCl6OuAb8_OQouW06HsU8

## Paso 5: Verifica que las tablas fueron creadas

Yendo al menú izquierdo, dirígete a Servers > Local > Databases > platzimovies > Schemas > public > Tables.

Verifica que ahí aparecen todas las tablas que necesitamos para el ejercicio.

![](https://lh3.googleusercontent.com/6XdRHkZDp6gQ_fJXKHT6bMfn5pX8_ms8gt3DzaXjMK-QVvL1jfqxBnFIahs79QbPQwwzPQWnfc52B8dpsp-uZ-xBLo9WkXHUXfI6cJq5tGep5i24a0uFptSTClyYOGvx1T0LybHM)

Si lo lograste, ¡felicidades! Estás listo para usar nuestra base de datos de ejemplo.

## ****Integración con otros lenguajes****

Como la mayoría de las bases de datos, PostgreSQL cuenta con conectores para diferentes lenguajes de programación, de tal forma que si trabajas con Python, PHP, Java, JavaScript y todos sus frameworks, exista una forma de extraer datos de PostgreSQL y posteriormente utilizar las propiedades de los lenguajes procedurales para transformar y utilizar los datos.

El lenguaje estándar utilizado en bases de datos relacionales es SQL (Structured Query Language), un lenguaje que tiene una estructura sumamente útil para hacer solicitudes de datos, en especial tomando como abstracción un diseño tabular de datos. Sin embargo, carece de estructuras de control y otras abstracciones que hacen poderosos a los lenguajes procedurales de programación.

## PL/pgSQL

Como respuesta a los puntos débiles de SQL como estándar, PostgreSQL respondió originalmente creando un lenguaje propio llamado PL/pgSQL (Procedural Language/PostgreSQL Structured Query Language) que es literalmente un superset de SQL que incluye propiedades de un lenguaje estructurado que, por un lado, nos permite crear funciones complejas y triggers; y, por el otro lado, agrega estructuras de control, cursores, manejo de errores, etc.

## Otros lenguajes

Sin embargo, en muchos sentidos, aunque PL/pgSQL ayuda en los casos más genéricos para generar estructuras y funcionalidades más complejas, no se compara con lenguajes completamente independientes y no ligados directamente a una base de datos.

La respuesta sin embargo tampoco es los conectores normales que, si bien resuelven la parte de un lenguaje más complejo, añaden por otro lado una separación de la base de datos, ya que debe correr en un servidor separado y hacer llamadas entre ellos con la latencia como un colateral.

Para mitigar estos problemas tomando lo mejor de ambos mundos, los desarrolladores de PostgreSQL se dedicaron a hacer implementaciones de diversos lenguajes a manera de plugin.

### C

La biblioteca que permite al lenguaje C ejecutarse en PostgreSQL es llamada libpq y es una interfaz de programación que permite extender y hacer de interfaz para permitir a otros lenguajes ejecutarse en esta base de datos.

Puedes encontrar más información de esta interfaz en el siguiente link:

![](https://www.postgresql.org/docs/11/libpq.html.)

### PL/Tcl

Tcl (Tool Command Language) es un lenguaje diseñado con la simpleza en mente y su paradigma consiste en que todo en él es un comando, incluyendo la estructura del lenguaje que, sin embargo, son suficientemente flexibles para poderse sobreescribir, haciéndolo un lenguaje sumamente extensible.

Todo lo anterior es ideal para la integración con el manejador de PostgreSQL ya que permite elaborar comandos para ejecutar las sentencias SQL y extenderlas facilmente.

Si quieres leer más del tema, puedes hacerlo en el siguiente link:

![](https://www.postgresql.org/docs/11/pltcl.html.)

### PL/Perl

Perl es un lenguaje de programación que implementa una estructura de bloques de código y que toma inspiración de programas como C, sh, AWK, entre otros. Y es especialmente bueno para el tratamiento de cadenas de texto. Sin embargo, no se encuentra limitado como un lenguaje de script.

Dada la propiedad de englobar funcionalidad en forma de bloque y de la rapidez y facilidad con la que trabaja con datos tipo cadena, este lenguaje es ideal para el tratamiento de información de una base de datos relacional.

Para conocer más de la implementación de este lenguaje con PostgreSQL puedes leer el siguiente link:

https://www.postgresql.org/docs/11/plperl.html.

### PL/Python

Python, al ser de los lenguajes de programación más extendidos entre programadores de servicios Backend, es una implementación particularmente interesante para PostgreSQL.

Python es un lenguaje de programación fuerte en tratamiento de estructura de datos y tiene un paradigma múltiple con fuertes componentes orientados a objetos, estructurados y una fuerte influencia del paradigma funcional.

Parte de sus fortalezas son sus implementaciones de funciones map, reduce y filter en conjunto con list comprehensions, sets, diccionarios y generadores.

Dadas las propiedades nativas para manejar estructuras de datos complejas, es un lenguaje ideal para manejar la salida de un query SQL.

La implementación de Python para PostgreSQL te permite crear funciones complejas en un lenguaje completo y popular sin tener que utilizar PL/pgSQL. Puedes ver un ejemplo a continuación de la misma función en PL/pgSQL y PL/Python.

### PL/pgSQL

```
CREATEFUNCTION pgmax (a integer, b integer)
RETURNS integer
AS $$
BEGINIF a > bTHENRETURN a;
   ELSE
       RETURN b;
ENDIF;
END
$$LANGUAGE plpgsql;

```

### PL/Python

```
CREATEFUNCTION pymax (a integer, b integer)
RETURNS integer
AS $$
if a > b:
return a
return b
$$LANGUAGE plpythonu;

CREATE EXTENSION plpythonu;
SELECT pgmax(200,9);

```

Para instalar el lenguaje Python en PostgreSQL, una vez instaladas las bibliotecas apropiadas para cada Sistema Operativo, es necesario ejecutar el siguiente query:
```
CREATEEXTENSION plpythonu

```