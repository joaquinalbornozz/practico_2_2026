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
- Conectar el catalogo (`lib/src/pages/productos/productos_page.dart`) a la base de datos por medio del manejador (`_manejador.listar()`).
- Conectar el nuevo producto (`lib/src/pages/productos/nuevoproducto_page.dart`) a la base de datos por medio del manejador (`_manejador.agregar(...)`).
- Conectar la edición de producto (`lib/src/pages/productos/editarproducto_page.dart`) a la base de datos por medio del manejador (`Future<void> _guardarProducto()`).

## Correcciones de Build y Entorno Android

### 1. Fijación de versión de NDK instalada
- **Motivo:** Gradle requería automáticamente NDK `28.2.13676358` (`Android sdkmanager did not install NDK...`), pero en el SDK local de Android la versión instalada era la `30.0.16138531`.
- **Archivo modificado:** `android/app/build.gradle.kts`
- **Valor original:** `ndkVersion = flutter.ndkVersion`
- **Nuevo valor:** `ndkVersion = "30.0.16138531"`

### 2. Desactivación de compilación incremental de Kotlin
- **Motivo:** En Windows, al estar el proyecto en un disco (`D:\`) diferente al SDK y caché de Pub (`C:\`), el daemon de Kotlin falla al calcular rutas relativas entre unidades distintas (`Could not close incremental caches ... class-fq-name-to-source.tab`).
- **Archivo modificado:** `android/gradle.properties`
- **Valor original:** *(No existía, por defecto Kotlin compila de forma incremental)*
- **Nuevo valor:** `kotlin.incremental=false`
