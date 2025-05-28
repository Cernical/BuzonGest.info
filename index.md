# Instrucciones de uso

La base de datos requiere seguir un procedimiento a la hora de utilizar BuzonGest siguiendo unos pasos de manera secuencial, que son los siguientes:

#### Reglas para la inserción:

- Deben insertarse primero todas las tablas de un nivel antes de pasar al siguiente

- Dentro de un mismo nivel, el orden de inserción no importa

- Las tablas de nivel superior no dependen de ningún otro dato

## 1.- (Datos independientes - sin dependencias)

- Ubicaciones

- Comerciales

- Familias de producto

- Matrices

## 2.- (Dependen solo de datos del Nivel 1)

- Cliente (depende de ubicacion y comercial)

- Inventario (depende de familia_producto)

## 3.- (Dependen de datos de Nivel 1 y 2)

- Centros (depende de cliente y ubicaciones)

- Contactos de clientes (depende de clientes)

- Productos de matriz (depende de Inventario y matriz)

- Productos de cliente (depende de inventario y cliente)

## 4.- (Dependen de datos de niveles anteriores)

- Contactos de centros (depende de centros)

- Pedidos (depende de centro, cliente e inventario)
