# Sistema de Gestión de Reservas y Préstamos - INET

Proyecto final para la asignatura de Base de Datos. Este sistema permite gestionar el inventario de recursos institucionales (equipos informáticos, salas, multimedia y accesorios), el control de reservas/préstamos por parte de los docentes y el registro de incidentes asociados.

## Sobre el Repositorio
* **/Diagramas**: Contiene el Modelo Entidad-Relación (MER) en formato editable y exportado.
* **/Documentacion**: Letra del proyecto, reformulaciones y documentación teórica.
* **/SQL_scripts**: Scripts estructurados para la creación, población y prueba de la base de datos.

## Requisitos e Instalación
* Motor de Base de Datos: MariaDB (v11.4+) o MySQL.
* Herramientas sugeridas: DBeaver o VS Code con extensión SQL.

## Orden de Ejecución de los Scripts
Para levantar el entorno correctamente, ejecute los scripts en el siguiente orden:
1. `01_crear_base_y_tablas.sql` (Crea la estructura y restricciones)
2. `02_trigger_fecha_reserva.sql` (Aplica la lógica de negocio y validaciones)
3. `03_popular_data.sql` (Inserta el set de datos de prueba extensivo)
4. `04_consultas_de_ejemplo.sql` (Ejemplos de consultas e informes)
5. `05_trigger_fecha_reserva_test.sql` (Pruebas de fallos controlados para el trigger)

**Autor:** Matías Barrios, Pablo Macovsky, Gabriela Borba, Luis Petrone
