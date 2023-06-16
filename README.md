# PFG - REPOSITORIO LOCAL【Cines Haven】

<p align="center">
  <img width="280" alt="logo" src="https://user-images.githubusercontent.com/92323915/220186818-007160d6-0e37-430b-9e8f-7bc8cacf21ca.png">
</p>

# Índice

  - [¿Qué es este repositorio?](#qué-es-este-repositorio)
  - [¿Donde puedo ver la aplicación desplegada?](#donde-puedo-ver-la-aplicación-desplegada)
  - [¿Que necesitas para poner en funcionamiento la versión en local?](#que-necesitas-para-poner-en-funcionamiento-la-versión-en-local)
  - [Datos y usuarios en la base de datos](#datos-y-usuarios-en-la-base-de-datos)
  - [Pruebas a la API con Postman e Insomnia](#pruebas-a-la-api-con-postman-e-insomnia)
  - [Posibles problemas con el despliegue en local](#posibles-problemas-con-el-despliegue-en-local)

## ¿Qué es este repositorio?

Aquí encontrarás el código tanto del back como del front y un dump con los mismos datos con los que se ha desplegado la aplicación de forma online, para que pueda ser comodamente desplegado en local usando Docker.

No existen diferencias en el código respecto a los otros repositorios del proyecto divididos en back y front, la única diferencia se encuentra en las conexiones a la base de datos y al back.

**IMPORTANTE -** La información mostrada en este README (por ejemplo los usuarios ya cargados) afecta tanto al despliegue en local como al despliegue online ya que de inicio estan cargados con los mismos datos en sus bases de datos.

## ¿Donde puedo ver la aplicación desplegada?

En el siguiente enlace -> [PFG - Cines Haven](https://pfg-frontend.vercel.app/#/)

## ¿Que necesitas para poner en funcionamiento la versión en local?

Solamente es necesario tener Docker instalado en la máquina. Con ello solamente quedaría ejecutar este comando en la carpeta raíz del repositorio (justo donde se encuentra el archivo docker-compose.yml)

```bash
docker compose -f "docker-compose.yml" up -d --build
```

En cuanto se complete la preparación de los tres contenedores (base de datos, backend y front) podrás acceder al despliegue con el siguiente enlace

- http://localhost:5173

## Datos y usuarios en la base de datos

El despliegue viene ya con varios datos cargados para no empezar de cero. Además viene cargado con dos usuarios, uno más importante por ser el administrador y aquel capaz de añadir/editar/eliminar peliculas y añadir sesiones, cuyas credenciales son:

- **E-mail :** root@gmail.com
- **Clave :** Pestillo.123

Además existe un usuario normal cargado que puede usarse pero no es necesario, puede crearse un usuario propio. Las credenciales del usuario normal son:

- **E-mail :** ernesto@gmail.com
- **Clave :** Pestillo.123

## Pruebas a la API con Postman e Insomnia

Si se desea probar la API directamente desde Postman o Insomnia, se puede descargar la carpeta llamada **POSTMAN-INSOMNIA EXPORT** que contiene dos exportaciones válidas para ambos programas, en la cual una ataca a la API desplegada online y otra a la API desplegada en local.

Con ambos archivos se adjunta una carpeta con tres archivos JSON que son necesarios para las llamadas que implican subir archivos, ya que se necesita mandar por un lado los datos en formato JSON y por otro el archivo en sí. Además se incluyen algunas imagenes de ejemplo para poder probar la subida de archivos.

## Posibles problemas con el despliegue en local

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
