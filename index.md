# BuzonGest

## Manual de usuario

**Sistema de gestión de empleados, jornada e informática**
**Versión de la aplicación:** 4.17.1

---

## 1. Introducción

BuzonGest es una aplicación de escritorio orientada a la gestión interna de personal y jornada, con funciones adicionales para el departamento de informática.

La aplicación trabaja conectada a una base de datos y adapta las opciones disponibles al usuario autenticado y a sus privilegios.

La interfaz principal contiene las siguientes áreas:

* **Área Personal**
* **Empleados**
* **Asistencia**
* **IT**
* **Ajustes**
* **Salir**

---

## 2. Requisitos de uso y conexión

BuzonGest necesita comunicación con el servidor de base de datos para funcionar correctamente.

Al iniciar, la aplicación comprueba la conectividad con el servidor. Si no existe conexión, las funciones que dependen de la base de datos quedan deshabilitadas y se muestra un aviso indicando que se debe comprobar la dirección del servidor o contactar con el administrador.

En Windows, la aplicación también puede comprobar si existe una actualización disponible cuando el servidor es accesible.

### Configuración necesaria

Entre los parámetros locales utilizados por la aplicación se encuentran:

* Dirección del servidor de base de datos (`DB Host`).
* Modo de pantalla.
* Usuario de sesión.

---

# 3. Inicio de sesión

Desde la pantalla principal se utiliza el botón **«Iniciar Sesión»**.

### Procedimiento

1. Introduzca su **usuario**.
2. Introduzca su **contraseña**.
3. Pulse **«Confirmar»**.
4. Si las credenciales son correctas, la aplicación habilitará las funciones correspondientes a su nivel de privilegios.

La sesión se mantiene mientras el usuario permanezca autenticado.

### Cerrar sesión

Para cerrar la sesión:

1. Pulse **«Cerrar Sesión»**.
2. La sesión activa se eliminará.
3. Las funciones protegidas volverán a quedar bloqueadas.
4. El botón volverá a mostrar **«Iniciar Sesión»**.

> **Recomendación:** Cierre siempre la sesión cuando termine de utilizar BuzonGest, especialmente en equipos compartidos.

---

# 4. Privilegios de usuario

Las funciones disponibles dependen del privilegio asociado al usuario.

La aplicación contempla los siguientes perfiles principales:

| Perfil            | Funciones habilitadas                     |
| ----------------- | ----------------------------------------- |
| **Empleado**      | Área Personal                             |
| **Administrador** | Área Personal, Empleados y Asistencia     |
| **Superuser**     | Área Personal, Empleados, Asistencia e IT |

La disponibilidad real también depende de que exista conexión con la base de datos.

> **Nota:** La configuración de privilegios se realiza en la base de datos. Si una función no aparece disponible, contacte con el administrador del sistema.

---

# 5. Pantalla principal

Una vez iniciada la aplicación se muestra la pantalla principal.

La interfaz incluye:

* Información de la aplicación.
* Acceso a **Ayuda* (Este documento)*.
* Usuario actualmente conectado.
* Botón **Cerrar Sesión**.
* Accesos a los diferentes módulos.

Los módulos disponibles dependerán de los permisos del usuario.

---

# 6. Área Personal

El módulo **Área Personal** permite consultar la información asociada al usuario actualmente conectado.

También permite cambiar la contraseña.

## 6.1. Cambiar contraseña

Para cambiar la contraseña:

1. Abra **Área Personal**.
2. Localice la opción **«Cambiar»**.
3. Introduzca la contraseña actual.
4. Introduzca la nueva contraseña.
5. Repita la nueva contraseña.
6. Confirme la operación.

La aplicación comprueba que:

* La contraseña actual sea correcta.
* Las dos introducciones de la nueva contraseña coincidan.

Si alguna comprobación falla, la contraseña no se modifica.

> **Seguridad:** No comparta su contraseña con otros usuarios.

---

# 7. Gestión de empleados

El módulo **Empleados** permite consultar y administrar los registros de empleados.

Su disponibilidad está restringida a usuarios con los privilegios correspondientes.

## 7.1. Consultar empleados

La pantalla presenta los empleados en una tabla.

Entre las funciones disponibles se encuentran:

* Consulta de registros.
* Paginación.
* Ordenación de columnas.
* Selección de columnas.
* Edición de registros.
* Creación de nuevos empleados.

## 7.2. Añadir un empleado

Para añadir un empleado:

1. Acceda a **Empleados**.
2. Seleccione **«Añadir empleado»**.
3. Introduzca los datos solicitados.
4. Revise la información.
5. Confirme la operación.

El nuevo empleado se almacenará en la base de datos.

## 7.3. Editar un empleado

Para modificar un empleado:

1. Localice el empleado en la tabla.
2. Seleccione la opción **«Editar»**.
3. Modifique los datos necesarios.
4. Confirme los cambios.

Algunas columnas pueden estar protegidas y no permitir modificaciones.

---

# 8. Asistencia

El módulo **Asistencia** permite consultar y gestionar los registros de jornada de los empleados.

Entre sus funciones se encuentran:

* Consulta de registros.
* Filtrado por empleado.
* Filtrado por mes.
* Filtrado por año.
* Ordenación.
* Paginación.
* Consulta de horas trabajadas.
* Consulta de faltas.
* Edición de determinados registros.

---

## 8.1. Filtrar la asistencia

La pantalla de asistencia permite utilizar diferentes filtros.

### Filtrar por empleado

Seleccione un empleado en el selector correspondiente.

También existe la opción de consultar todos los empleados.

### Filtrar por fecha

Es posible seleccionar:

* **Mes**
* **Año**

El filtro se aplica automáticamente cuando se seleccionan los valores correspondientes.

---

# 9. Consultar horas trabajadas

La aplicación dispone de una pantalla específica denominada:

**«Consultar horas trabajadas»**

Esta pantalla permite consultar las horas realizadas durante un periodo determinado.

## 9.1. Seleccionar empleado

Puede seleccionar:

* Un empleado concreto.
* Todos los empleados.

## 9.2. Seleccionar periodo

Debe indicar:

* **Fecha de comienzo**
* **Fecha final**

La consulta utilizará dichas fechas para determinar el periodo que se desea analizar.

## 9.3. Información mostrada

La consulta puede mostrar información como:

| Campo           | Descripción                                |
| --------------- | ------------------------------------------ |
| **Empleado**    | Empleado al que corresponden los datos     |
| **Trabajo**     | Tiempo trabajado                           |
| **Descanso**    | Tiempo de descanso                         |
| **Extras**      | Horas extraordinarias                      |
| **Festivas**    | Horas correspondientes a jornadas festivas |
| **Puntualidad** | Indicador de puntualidad                   |
| **Incompletos** | Jornadas consideradas incompletas          |

Cuando se consulta un empleado individual, la aplicación también puede representar gráficamente las horas trabajadas y el tiempo de descanso durante el periodo seleccionado.

---

# 10. Edición de registros de asistencia

Cuando un usuario dispone de permisos para editar un registro de asistencia, la aplicación solicita un **motivo de modificación**.

### Procedimiento

1. Localice el registro que desea modificar.
2. Seleccione **«Editar»**.
3. Introduzca el motivo de la modificación.
4. Confirme la operación.
5. Compruebe que el registro muestra los datos actualizados.

El cambio queda asociado al sistema de auditoría de asistencia.

> **Importante:** Introduzca siempre un motivo claro y preciso para una modificación de jornada.

---

# 11. Faltas de asistencia

Desde la pantalla de **Asistencia** existe acceso a la sección **«Faltas»**.

Esta pantalla permite consultar la información de faltas de asistencia disponible en la base de datos.

Para acceder:

1. Abra **Asistencia**.
2. Seleccione la opción correspondiente a **Faltas**.
3. Consulte los registros disponibles.

---

# 12. Departamento de IT

El módulo **IT** está destinado al personal con privilegios suficientes.

Contiene las siguientes herramientas:

* **SQL**
* **Incidencias IT**
* **Conexiones**
* **Auditoría Asistencia**

---

# 13. SQL

La sección **SQL** permite trabajar directamente con información de la base de datos.

Debido a la naturaleza de esta herramienta, debe utilizarse exclusivamente por personal autorizado y con conocimientos suficientes de SQL y de la estructura de la base de datos.

> **Advertencia:** Una consulta SQL incorrecta puede afectar a los datos del sistema. No realice modificaciones mediante esta herramienta salvo que estén autorizadas.

---

# 14. Incidencias IT

La sección **Incidencias IT** permite consultar y gestionar información relacionada con incidencias de soporte.

La información se muestra mediante una tabla.

Entre las funciones disponibles se encuentran:

* Consulta de incidencias.
* Paginación.
* Ordenación.
* Filtrado.
* Edición de registros.

## 14.1. Paginación

La tabla utiliza páginas para facilitar la navegación cuando existen muchos registros.

Puede utilizar los controles de navegación para:

* Retroceder una página.
* Avanzar una página.
* Ir al principio.
* Ir al final.

---

# 15. Conexiones

La pantalla **Conexiones** permite comprobar el estado de diferentes equipos y servicios utilizados por el sistema.

Entre los elementos supervisados pueden encontrarse:

* Lectores RFID.
* Servidores.
* Otros equipos registrados.

La aplicación realiza comprobaciones de conectividad.

## 15.1. Estados

Los elementos pueden presentar diferentes estados visuales:

* **Verde:** el equipo responde correctamente.
* **Rojo:** el equipo no responde.
* **Gris:** no existe una dirección de conexión disponible para realizar la comprobación.

## 15.2. Actualizar estado

Para actualizar las comprobaciones:

1. Abra **IT → Conexiones**.
2. Pulse **«Actualizar»**.
3. Espere a que finalicen las comprobaciones.

La pantalla muestra también información relativa a la última comprobación realizada.

---

# 16. Auditoría de asistencia

La sección **Auditoría Asistencia** permite comprobar la integridad de los registros de asistencia.

El sistema utiliza una cadena de auditoría para detectar modificaciones o inconsistencias en los registros.

La comprobación puede detectar situaciones como:

* Cadena de auditoría correctamente verificada.
* Cadena rota.
* Modificación detectada en un registro.
* Problemas de conexión con el servidor.

## 16.1. Uso recomendado

Esta herramienta puede utilizarse cuando sea necesario verificar la integridad de los registros de jornada.

### Procedimiento

1. Abra **IT**.
2. Seleccione **«Auditoría Asistencia»**.
3. Ejecute la comprobación.
4. Revise el resultado.
5. Si se detecta una anomalía, comuníquela al responsable correspondiente.

---

# 17. Ajustes

El módulo **Ajustes** permite configurar determinados parámetros de funcionamiento de BuzonGest.

Entre los parámetros disponibles se encuentran:

| Ajuste       | Función                                      |
| ------------ | -------------------------------------------- |
| **Pantalla** | Seleccionar modo ventana o pantalla completa |
| **DB Host**  | Dirección del servidor de base de datos      |

---

## 17.1. Cambiar el modo de pantalla

Para cambiar entre ventana y pantalla completa:

1. Abra **Ajustes**.
2. Seleccione el modo deseado:

   * **Pantalla completa**
   * **Ventana**
3. Pulse **«Confirmar»**.

La configuración se guarda localmente.

---

## 17.2. Cambiar DB Host

El parámetro **DB Host** indica la dirección del servidor de base de datos al que debe conectarse BuzonGest.

Para modificarlo:

1. Abra **Ajustes**.
2. Introduzca la dirección correspondiente en **DB Host**.
3. Pulse **«Confirmar»**.
4. Siga las indicaciones de la aplicación si es necesario reiniciar o restablecer la conexión.

> **Importante:** No modifique este valor si no conoce la dirección correcta del servidor. Una dirección incorrecta impedirá que BuzonGest se conecte a la base de datos.

---

# 18. Actualizaciones

En sistemas Windows, BuzonGest puede comprobar automáticamente si existe una versión más reciente.

Cuando existe una actualización disponible, la aplicación puede:

1. Comprobar la versión publicada.
2. Descargar los archivos necesarios.
3. Preparar la nueva versión.
4. Reiniciar la aplicación.

El proceso depende de que exista conexión con el servicio de actualización.

> **Nota:** No interrumpa el proceso de actualización mientras la aplicación esté descargando o instalando una nueva versión.

---

# 19. Desconexión por inactividad

BuzonGest incorpora un temporizador de inactividad configurado en **5 minutos**.

Las acciones realizadas en la interfaz reinician dicho temporizador.

Si el usuario permanece inactivo durante el periodo establecido, la aplicación puede ejecutar su procedimiento de gestión de inactividad.

> **Recomendación:** Si utiliza un equipo compartido, cierre manualmente la sesión cuando termine de trabajar.

---

# 20. Problemas habituales

| Problema                                                         | Qué comprobar                                                              |
| ---------------------------------------------------------------- | -------------------------------------------------------------------------- |
| **No hay conexión con la base de datos**                         | Compruebe la red, el DB Host y la disponibilidad del servidor.             |
| **No aparecen determinados módulos**                             | Compruebe que ha iniciado sesión y que dispone del privilegio necesario.   |
| **Credenciales incorrectas**                                     | Compruebe el usuario y la contraseña.                                      |
| **No se puede editar un dato**                                   | Compruebe los permisos y si la columna está protegida.                     |
| **Una consulta no muestra registros**                            | Compruebe los filtros, empleado y periodo seleccionado.                    |
| **La aplicación no puede conectarse después de cambiar DB Host** | Compruebe que la dirección introducida sea correcta.                       |

---

# 21. Buenas prácticas

Para un uso correcto de BuzonGest:

* Cierre sesión al terminar.
* No comparta sus credenciales.
* Compruebe empleado y fecha antes de modificar una jornada.
* Introduzca siempre un motivo claro al corregir un registro de asistencia.
* No utilice el módulo SQL salvo que esté autorizado.
* No modifique el **DB Host** sin conocer el valor correcto.
* Ante problemas de conexión, compruebe primero la red y el servidor.
* Utilice **Auditoría Asistencia** cuando sea necesario verificar la integridad de los registros.
* Compruebe los resultados de las consultas antes de realizar modificaciones.

---

# 22. Referencia rápida

| Necesito...                     | Ir a...                                     |
| ------------------------------- | ------------------------------------------- |
| Consultar mis datos             | **Área Personal**                           |
| Cambiar mi contraseña           | **Área Personal → Cambiar**                 |
| Gestionar empleados             | **Empleados**                               |
| Añadir un empleado              | **Empleados → Añadir empleado**             |
| Consultar jornadas              | **Asistencia**                              |
| Filtrar asistencia              | **Asistencia → filtros**                    |
| Consultar horas trabajadas      | **Asistencia → Consultar horas trabajadas** |
| Revisar faltas                  | **Asistencia → Faltas**                     |
| Comprobar lectores y servidores | **IT → Conexiones**                         |
| Gestionar incidencias           | **IT → Incidencias IT**                     |
| Trabajar con SQL                | **IT → SQL**                                |
| Verificar la auditoría          | **IT → Auditoría Asistencia**               |
| Cambiar DB Host                 | **Ajustes**                                 |
| Cambiar modo de pantalla        | **Ajustes**                                 |
| Cerrar sesión                   | **Cerrar Sesión**                           |

---
