# Challenge

Nota:  Hay entorno para navegador web y un entorno para manejo de servicios api rest.

El proyecto es un sistema de transporte básico donde se puede tener manejo de vehículos, pasajeros y recorridos. Al realizar un recorrido se debe saber cuál fue su vehículo y su pasajero (no es necesario conocer los puntos del recorrido solo el pasajero y el vehículo a cargo). Se tienen los siguientes puntos a desarrollar.

Parte Web:
Generar un modelo de vehículos que puedan tener diferentes recorridos y pasajeros.
Utilizar devise para crear un login en el navegador web.
Crear una vista que al momento de loguearse visualice todos los recorridos realizados.(se pueden crear semillas para esto).

Parte Api:
Crear un servicio que permita crear vehículos.
Por politicas de la empresa, solo se permiten dos tipos de vehículos. Los que empiezan con las placas “ABC” que se denominan vehículos de categoría 1 Y los que empiezan con las placas “DFG” que son los de categoría dos. se requiere guardar esta categoría.
el servicio debe aceptar como parámetros, placa, color, y año.
no se debe permitir crear vehículos con la misma placa.
Crear un servicio que permita listar vehículos.
el servicio debe responder con la placa, color, año y categoría de cada vehículo.

Consideraciones:
Se obtiene mejor puntaje si se hacen pruebas automatizadas como request test, test de modelos etc.
No se requiere autenticación para los servicios api.
No enfocarse en el diseño de la parte web.
se puede usar sqlite no se revisará la base de datos configurada.
No es necesario desplegar el proyecto en ninguna parte ni documentar los servicios, únicamente subir el código a un repo público en github y enviar en enlace.
