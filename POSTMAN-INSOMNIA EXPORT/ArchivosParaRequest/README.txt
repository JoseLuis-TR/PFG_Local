El problema de querer añadir subida de imagenes a la hora de crear películas es que en SpringBoot la mejor manera de hacerlo es con
un formulario multi parte, es decir: enviar por un lado un json con los datos textuales de la pelicula y por otro lado los archivos.

Por tanto, para evitar errores y unificar las pruebas desde Postman se han creado estos archivos.

- createMovie.json ->   Añadir este archivo JSON para añadir una nueva pelicula junto a
                        dos imagenes que representen una captura y el poster
- updateMovie.json ->   Añadir este para modificar la pelicula creada con el JSON anterior
- updateUser.json ->    Usar este en caso de querer editar la información de un usuario

Para probar la subida de archivos, se adjuntan varias imagenes de ejemplo para facilitar
las llamadas