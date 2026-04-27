# Manual de Usuario – BuzonGest v4.4.1

## Introducción

**BuzonGest** es una aplicación de gestión empresarial diseñada para consultar, filtrar, editar y supervisar información de bases de datos internas, incluyendo clientes, inventario y lectores RFID.

---

# Inicio de la aplicación

## Cómo abrir BuzonGest

1. Ejecute la aplicación desde el acceso directo configurado por su empresa.
2. Espere a que cargue la pantalla principal.
3. Desde el menú principal podrá acceder a las distintas áreas mediante el selector de navegación.

---

# Navegación general

## Menú principal

La aplicación utiliza un sistema de navegación por pantallas.

### Elementos comunes:

* **Selector superior (Spinner / Menú desplegable):** permite cambiar entre módulos.
* **Área central:** muestra datos, tablas o estados.
* **Botones inferiores:** acciones como volver, actualizar, buscar o guardar.

---

# Consulta de datos

Uno de los módulos principales permite visualizar información almacenada en la base de datos.

## Funciones disponibles:

### Visualizar registros

* Los datos se muestran en formato tabla.
* Cada fila representa un registro.
* Cada columna contiene un campo específico.

### Ordenar datos

Puede ordenar registros según una columna concreta en:

* Orden ascendente
* Orden descendente

### Paginación

Cuando existen muchos registros, la aplicación carga resultados por bloques para mejorar el rendimiento.

---

# Buscar y filtrar información

## Búsqueda rápida

1. Introduzca texto en el campo de búsqueda.
2. Pulse **Buscar** o espere la actualización automática.
3. La tabla mostrará solo coincidencias.

## Consejos:

* Puede buscar por nombre, código, observaciones u otros campos visibles.
* Cuanto más específico sea el texto, más precisos serán los resultados.

---

# Edición de registros

BuzonGest permite modificar información directamente desde la tabla.

## Cómo editar:

1. Localice el registro deseado.
2. Pulse el botón **Editar**.
3. Los campos pasarán a modo editable.
4. Modifique la información necesaria.
5. Pulse **Guardar** para aplicar cambios.

## Importante:

* Los cambios se guardan directamente en la base de datos.
* Verifique los datos antes de guardar.
* Si no tiene permisos suficientes, algunos cambios pueden no aplicarse.

---

# Supervisión de lectores RFID

Este módulo permite comprobar el estado de conectividad de dispositivos RFID conectados a la red.

## Información mostrada:

* ID del lector
* Modelo de hardware
* Estado de conexión

## Código de colores:

* **Verde:** lector conectado correctamente
* **Rojo:** lector sin conexión o inaccesible

## Actualizar estado:

Pulse el botón **Actualizar** para comprobar el estado en tiempo real.

---

# Botón Volver

El botón **Volver** devuelve al menú principal o a la pantalla anterior.

---

# Mensajes del sistema

## Mensajes frecuentes:

### “No hay datos”

No existen resultados para la consulta actual.

### “Operación realizada”

La acción se ejecutó correctamente.

---

# Buenas prácticas

## Recomendaciones de uso:

* Revise los datos antes de guardar cambios.
* Use filtros para localizar información rápidamente.
* Actualice lectores RFID cuando sospeche problemas de red.
* No cierre la aplicación durante operaciones de guardado.

---

# Solución de problemas

## La aplicación no muestra datos

* Compruebe conexión con la red empresarial.
* Revise que el filtro de búsqueda sea correcto.
* Reinicie la consulta.

## No puedo editar

* Verifique permisos de usuario.
* Asegúrese de haber pulsado **Editar** antes de modificar.

## RFID aparece desconectado

* Revise alimentación del dispositivo.
* Compruebe cableado o red.
* Pulse **Actualizar**.

---

# Seguridad

* No comparta accesos con personal no autorizado.
* Evite modificar registros críticos sin supervisión.
* Cierre sesión o aplicación al terminar.

---

# Soporte técnico

Si encuentra errores, contacte con el departamento de IT de su empresa indicando:

* Módulo afectado
* Acción realizada
* Mensaje de error mostrado
* Fecha y hora del incidente
