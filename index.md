# Manual de Usuario  
## BuzonGest v3.2.0

---

## 1. Introducción

**BuzonGest** es una aplicación de escritorio desarrollada en Python con Kivy que permite la **gestión de empleados**, el **control de asistencia**, la **consulta de horas trabajadas**, la **ejecución de consultas SQL** y la **configuración básica de la aplicación**, todo ello conectado a una base de datos **MariaDB/MySQL mediante SSL**.

La aplicación está orientada a entornos empresariales donde se requiere:
- Control horario
- Gestión de usuarios
- Análisis de horas trabajadas
- Acceso controlado por privilegios

---

## 2. Requisitos del sistema

- Sistema operativo: **Windows o Linux**
- Base de datos: **MariaDB / MySQL**
- Conexión a red con acceso al servidor de base de datos
- Certificado SSL (`ca-cert.pem`)
- Credenciales válidas de usuario
- Permisos según rol asignado

---

## 3. Inicio de la aplicación

Al iniciar **BuzonGest**, la aplicación realiza automáticamente:

1. Limpieza del archivo de logs (`log.txt`)
2. Carga de configuración desde `ajustes.json`
3. Comprobación automática de actualizaciones
4. Redirección a la pantalla principal

Si existe una versión nueva, se descargará e instalará automáticamente.

---

## 4. Pantalla principal (Inicio)

Desde la pantalla principal se accede a los distintos módulos:

- **Empleados**
- **Asistencia**
- **SQL**
- **Ajustes**
- **Salir**

### Barra superior
- **Ayuda**: abre la documentación online
- **Iniciar sesión / Usuario activo**
- **Cerrar sesión**

---

## 5. Inicio de sesión

Para acceder a la mayoría de funciones es obligatorio iniciar sesión.

### Pasos:
1. Pulsa **Iniciar sesión**
2. Introduce:
   - Usuario (correo sin dominio)
   - Contraseña
3. Pulsa **Confirmar**

Las credenciales se validan contra la base de datos usando **SSL**.

> El usuario activo se guarda automáticamente en `ajustes.json`.

---

## 6. Gestión de Empleados

### Acceso
Pantalla principal → **Empleados**

### Funcionalidades
- Listar empleados
- Buscar empleados
- Ordenar por:
  - ID
  - Correo
  - Nombre
- Paginación
- Añadir empleados
- Cambiar contraseña
- Eliminar empleados

### Añadir empleado
1. Pulsa **Añadir**
2. Introduce:
   - Correo
   - Nombre
   - Contraseña
3. Pulsa **Añadir**

> La contraseña se almacena cifrada con **bcrypt**.

---

## 7. Control de Asistencia

### Acceso
Pantalla principal → **Asistencia**

### Funcionalidades
- Listar registros de asistencia
- Buscar registros
- Ordenar por columnas
- Paginación
- Consultar estadísticas
- Edición de registros (según permisos)

Los datos mostrados incluyen:
- Empleado
- Jornada
- Turno
- Hora de entrada
- Hora de salida

---

## 8. Consulta de horas trabajadas

### Acceso
Asistencia → **Consultar**

### Permite:
- Seleccionar empleado o todos
- Definir rango de fechas
- Calcular automáticamente:
  - Horas trabajadas
  - Tiempo de descanso
  - Horas extra netas
  - Horas festivas
  - Puntualidad (%)
  - Días incompletos

### Resultados
- Tabla resumen
- Gráfica de horas por día (si se consulta un solo empleado)

> Para la mayoría de datos **se requiere tener registrado el horario** de cada empleado.

---

## 9. Módulo SQL

### Acceso
Pantalla principal → **SQL**

### Funcionalidades
- Ejecutar consultas SQL manuales
- Seleccionar tablas
- Ordenar resultados
- Buscar dentro de resultados
- Editar registros directamente
- Paginación automática

> **Precaución**: las consultas se ejecutan directamente sobre la base de datos.

---

## 10. Ajustes

### Acceso
Pantalla principal → **Ajustes**

### Opciones disponibles
- **Modo pantalla**
  - Pantalla completa
  - Ventana
- **Host de base de datos**

### Guardado
Los cambios se guardan en `ajustes.json`.

> Algunos cambios requieren **reiniciar automáticamente** la aplicación.

---

## 11. Actualizaciones automáticas

- La aplicación comprueba versiones en GitHub al iniciar
- Si existe una versión superior:
  - Se descarga
  - Se extrae
  - Se reinicia la aplicación
- El proceso es completamente automático

---

## 12. Sistema de roles

Los permisos dependen del rol asignado en la base de datos:

| Rol          | Permisos |
|--------------|----------|
| empleado     | Ajustes |
| administrador| Asistencia |
| superuser    | Asistencia + SQL |
| root/sin rol | Acceso completo |

---

## 13. Archivos importantes

| Archivo | Función |
|-------|--------|
| `ajustes.json` | Configuración persistente |
| `log.txt` | Registro de errores |
| `ca-cert.pem` | Certificado SSL |
| `actualizador.exe` | Actualización automática |

---

## 14. Registro de errores

Todos los errores se almacenan en:
- log.txt

Incluye:
- Fecha y hora
- Descripción del error

---

## 15. Cierre de la aplicación

Desde el menú principal:
- Pulsa **Salir**

O bien cierra la ventana directamente.

---

## 16. Notas finales

- No se almacenan contraseñas en texto plano
- Todas las conexiones a la base de datos usan SSL
- La aplicación está diseñada para uso multiusuario
- El rendimiento se optimiza mediante carga asíncrona

---

**Autor:** Kevin Marín Reina
**Versión:** 3.2.0
**Aplicación:** BuzonGest



