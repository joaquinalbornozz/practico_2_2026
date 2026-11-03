import 'package:drift/drift.dart';
import '../models/producto.dart';
import 'database.dart' hide Producto;

class ManejadorProductos {
  final AppDatabase db;

  // Si no se le pasa una base, crea una instancia local normal
  ManejadorProductos([AppDatabase? database]) : db = database ?? AppDatabase();

  // 1. LEER (Stream reactivo mapeado al modelo Producto con id: String)
  Stream<List<Producto>> listar() {
    return db.select(db.productos).watch().map(
          (filas) => filas
              .map(
                (f) => Producto(
                  id: f.id.toString(), // Convierte int de SQLite a String del modelo Producto
                  nombre: f.nombre,
                  precio: f.precio,
                  imagen: f.imagen,
                ),
              )
              .toList(),
        );
  }

  // 2. CREAR
  Future<int> agregar(String nombre, double precio, String imagen) {
    return db.into(db.productos).insert(
      ProductosCompanion.insert(
        nombre: nombre,
        precio: precio,
        imagen: imagen,
      ),
    );
  }

  // 3. ACTUALIZAR (Recibe String id como exige nuestro modelo Producto)
  Future<bool> actualizar(String id, String nombre, double precio, String imagen) {
    final intId = int.tryParse(id);
    if (intId == null) return Future.value(false);

    return db.update(db.productos).replace(
      ProductosCompanion(
        id: Value(intId),
        nombre: Value(nombre),
        precio: Value(precio),
        imagen: Value(imagen),
      ),
    );
  }

  // 4. ELIMINAR (Recibe String id como exige nuestro modelo Producto)
  Future<int> eliminar(String id) {
    final intId = int.tryParse(id);
    if (intId == null) return Future.value(0);

    return (db.delete(db.productos)..where((tbl) => tbl.id.equals(intId))).go();
  }
}
