# Que se hizo

## Main fundacional (drift y estructura)

- `flutter pub add drift drift_flutter path_provider`
- `flutter pub add -d drift_dev build_runner`

## Estructura de la base de datos
- Se creó la estructura de la base de datos con Drift, definiendo las tablas y relaciones necesarias para la aplicación.
- Se generaron los archivos necesarios para la base de datos utilizando `build_runner`.
- Se instalo el paquete `provider` para el manejo de MultiProvider y la gestión del estado de la aplicación.
    - `flutter pub add provider`

## CRUD Productos

- Desacoplador de la BBDD: `lib/src/database/database.dart`
- Manejador de productos: `lib/src/database/manejador_productos.dart`
- Generar la migración: `dart run build_runner build --delete-conflicting-outputs`
