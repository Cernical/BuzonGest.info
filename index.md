# Manual de Usuario – **BuzonGest**

## 1. Introducción
BuzonGest es una aplicación multiplataforma (Windows y Android) diseñada para la **gestión de empleados, control de asistencia y consultas administrativas**, con conexión segura a una base de datos MySQL/MariaDB mediante SSL.

El sistema adapta sus funcionalidades según el **rol del usuario** (empleado, administrador o superusuario).

---

## 2. Requisitos del sistema
- Sistema operativo: **Windows o Android**
- Conexión de red con acceso al servidor de base de datos
- Credenciales de usuario válidas
- Certificado SSL `ca-cert.pem` configurado

---

## 3. Inicio de la aplicación
Al iniciar BuzonGest se muestra la **pantalla principal**, que incluye:
- Barra superior de navegación
- Botón de ayuda
- Botón de inicio/cierre de sesión
- Accesos a los distintos módulos

Si no existe conexión con la base de datos, la aplicación mostrará un aviso y deshabilitará el inicio de sesión.

---

## 4. Inicio de sesión

### 4.1 Acceso
1. Pulse **Iniciar sesión**.
2. Introduzca su **usuario** y **contraseña**.
3. Pulse **Confirmar**.

Si las credenciales son correctas, se habilitarán los módulos según su perfil.

### 4.2 Cierre de sesión
- Pulse **Cerrar sesión** en la barra superior.
- Se bloquearán los accesos y se limpiará la sesión activa.

---

## 5. Roles de usuario

### Empleado
- Acceso a **Área Personal**
- Consulta de su información y registros

### Administrador
- Área Personal
- Asistencia
- Gestión de empleados

### Superusuario
- Todas las funciones del administrador
- Acceso al módulo **SQL**

---

## 6. Pantalla principal (Inicio)
Desde el menú principal se puede acceder a:
- **Área Personal**
- **Asistencia**
- **SQL** (según permisos)
- **Ajustes**
- **Salir**

---

## 7. Área Personal
Este módulo permite al usuario:
- Consultar su información personal
- Visualizar estadísticas de trabajo
- Revisar horas trabajadas, descansos y puntualidad

---

## 8. Asistencia

### 8.1 Funcionalidad
Permite consultar y analizar los registros de asistencia por empleado o de forma global.

### 8.2 Opciones disponibles
- Selección de empleado o **Todos**
- Rango de fechas
- Cálculo automático de:
  - Horas trabajadas
  - Horas de descanso
  - Horas extra (positivas o negativas)
  - Horas festivas
  - Porcentaje de puntualidad
  - Jornadas incompletas

### 8.3 Gráficas
- Visualización gráfica de horas trabajadas por día
- Eje X: días
- Eje Y: horas

---

## 9. Edición de registros
Cuando se edita un registro de asistencia:
1. El sistema solicita un **motivo de edición**.
2. El motivo queda registrado para auditoría.

---

## 10. Cambio de contraseña
Pasos:
1. Acceda a **Ajustes**.
2. Seleccione **Cambiar contraseña**.
3. Introduzca:
   - Contraseña actual
   - Nueva contraseña
   - Confirmación de la nueva contraseña
4. Pulse **Confirmar**.

Si el proceso es correcto, se mostrará un mensaje de confirmación.

---

## 11. Módulo SQL (superusuario)
Permite:
- Visualizar las tablas de la base de datos
- Ejecutar consultas SQL
- Administrar información avanzada

Este módulo solo está disponible para usuarios con privilegios elevados.

---

## 12. Ajustes
Desde este apartado se puede:
- Configurar el host de la base de datos
- Cambiar contraseña
- Ajustes generales de la aplicación

---

## 13. Mensajes y avisos
La aplicación utiliza ventanas emergentes (pop-ups) para:
- Errores de conexión
- Confirmaciones
- Avisos de seguridad

Es necesario pulsar **Confirmar** para continuar.

---

## 14. Registro de errores
Los errores y excepciones se almacenan automáticamente en el archivo:

- log.txt

---

### 15. Salida de la aplicación
Para cerrar completamente BuzonGest:

- Pulse el botón Salir desde el menú principal.

---

### 16. Ayuda
Desde la barra superior puede acceder al apartado de ayuda online mediante el botón Ayuda.

---

- **Autor:** Kevin Marín Reina
- **Versión:** 3.9.1
