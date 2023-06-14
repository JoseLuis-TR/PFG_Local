# PFG - REPOSITORIO LOCAL【Cines Haven】

<p align="center">
  <img width="280" alt="logo" src="https://user-images.githubusercontent.com/92323915/220186818-007160d6-0e37-430b-9e8f-7bc8cacf21ca.png">
</p>

## ¿Qué es este repositorio?

Aquí encontrarás el código tanto del back como del front (y un dump vacio de la base de datos, solo con la estructura) para que pueda ser comodamente desplegado en local usando Docker.

No existen diferencias en el código respecto a los otros repositorios del proyecto divididos en back y front, la única diferencia se encuentra en las conexiones a la base de datos y al back (y que la base de datos en el despliegue online tiene algunos datos, para poder ver la diferencia entre un despliegue desde cero y otro con algo más de información)

## ¿Que necesitas para poner en funcionamiento la versión en local?

Solamente es necesario tener Docker instalado en la máquina. Con ello solamente quedaría ejecutar este comando en la carpeta raíz del repositorio (justo donde se encuentra el archivo docker-compose.yml)

```bash
docker compose -f "docker-compose.yml" up -d --build
```

En cuanto se complete la preparación de los tres contenedores (base de datos, backend y front) podrás acceder al despliegue con el siguiente enlace

- http://localhost:5173

### Puntos a tener en cuenta con el despliegue local

Si surge algún error con el despliegue en local, he localizado dos posibles errores que pueden generar ese problema:

**1. Uso de puertos**
Si se tienen otros despliegues abiertos hay que tener cuidado de que no esten utilizando los mismos puertos. Este despliegue expone tres puertos diferentes

- **Puerto 5173 ->** Front
- **Puerto 8080 ->** Back
- **Puerto 3037 ->** Base de datos

**2. Problema con el formato de los saltos de línea**

Este es un error que se localizó a tiempo y gracias al ajuste añadido en el gitattributes no debería de dar ningún problema.

Al correr los contenedores de docker en máquinas linux, puede llegar a generarse un error (sobre todo en el back) a la hora de ejecutarse en caso de que el archivo mvnw y el script wait-for-it esten guardados con un formato de salto de línea CRLF en vez de LF.

En caso de tener este error al bajarse el repositorio de github, la solución queda en abrir esos dos archivos en algún editor de código (VSCode, Notepad++...), cambiarles el formato de los saltos de línea a LF y guardar.

## Datos en la base de datos

A diferencia del despliegue online, en el despliegue local se ha decidido incluir el dump de la base de datos pero completamente vacía, solamente con los datos de las salas y los asientos (ya que estos no se pueden modificar en la aplicación per se) además del usuario administrador.

Las credenciales para poder usar este usuario y poder realizar las funciones de gestión del cine (Añadir/editar peliculas y añadir sesiones) son las siguientes:

- **E-mail :** root@gmail.com
- **Clave :** Pestillo.123
