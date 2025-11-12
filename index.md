# Manual de Usuario - BuzonGest v2.3.3

## Descripción General

BuzonGest es una aplicación de gestión empresarial que incluye módulos para:

- Gestión de empleados
- Control de asistencia  
- Consultas SQL

---

## Pantalla de Inicio (Index)

**Acceso**: Pantalla principal al iniciar la aplicación

### Funciones Principales

| Elemento | Función |
|----------|---------|
| Selector de Usuario | Dropdown para elegir usuario activo |
| Botón Empleados | Gestión de usuarios del sistema |
| Botón Asistencia | Control de horarios y registros |
| Botón SQL | Consultas directas a la base de datos |
| Botón Ajustes | Configuración de la app |
| Botón Salir | Cierra la aplicación |
| Botón Ayuda | Abre esta documentación web |

### Características
- Los botones se habilitan según el cargo del usuario
- Versión visible en barra superior
- Autenticación requerida para acceder a módulos

---

## Gestión de Empleados

### Pantalla Principal (Empleados)

**Funcionalidades**:
- Visualización de lista con ID, correo y nombre
- Ordenamiento por columnas (click en cabeceras)
- Búsqueda en tiempo real
- Paginación para grandes volúmenes
- Acciones rápidas por empleado

**Acciones Disponibles**:
- Cambiar contraseña - Solicita confirmación con contraseña actual
- Eliminar - Elimina con doble confirmación de seguridad

### Añadir Empleado (AnyadirEmpleado)

**Campos Obligatorios**:
- Correo electrónico
- Nombre completo  
- Contraseña

**Validaciones**:
- Verifica unicidad del correo
- Campos obligatorios deben completarse
- Navegación con tecla Enter entre campos

---

## Control de Asistencia

### Registros (Asistencia)

**Datos Mostrados**:
- Empleado
- Jornada
- Turno  
- Entrada
- Salida

**Funcionalidades**:
- Edición in-situ de registros
- Búsqueda y filtrado
- Paginación de resultados
- Actualizar datos en tiempo real

### Consulta Avanzada (AsistenciaConsultar)

**Parámetros Configurables**:
- Selección de empleado específico
- Rango de fechas personalizable
- Fechas mediante dropdowns intuitivos

**Métricas Calculadas**:

| Métrica | Descripción |
|---------|-------------|
| Tiempo Total | Horas totales trabajadas |
| Horas Extra Netas | Balance positivo/negativo |
| Horas Festivas | Trabajo en días festivos |
| Puntualidad | Porcentaje de días puntuales |
| Días Incompletos | Registros sin hora de salida |
| Gráfica Temporal | Evolución diaria de horas |

---

## Consultas SQL (Sql)

### Funcionalidades Avanzadas

**Ejecución Directa**:
```sql
-- Escribe consultas SQL directamente
SELECT * FROM empleados WHERE cargo = 'Administración'
