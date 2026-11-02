# Que se hizo

## Main fundacional (drift y estructura)

- `flutter pub add drift drift_flutter path_provider`
- `flutter pub add -d drift_dev build_runner`

## CRUD Productos

- Desacoplador de la BBDD: `lib/src/database/database.dart`
- Manejador de productos: `lib/src/database/manejador_productos.dart`
- Generar la migración: `dart run build_runner build --delete-conflicting-outputs`
