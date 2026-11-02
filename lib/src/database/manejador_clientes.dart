import 'package:drift/drift.dart';

import '../models/cliente.dart';
import 'database.dart' hide Cliente;

class ManejadorClientes {
  final AppDatabase db;

  // Si no se le pasa una base, crea una instancia local normal
  ManejadorClientes([AppDatabase? database]) : db = database ?? AppDatabase();

  // 1. LEER (Stream reactivo mapeado al modelo Cliente con id: String)
  Stream<List<Cliente>> listar() {
    return db
        .select(db.clientes)
        .watch()
        .map(
          (filas) => filas
              .map(
                (f) => Cliente(
                  id: f.id.toString(), // Convierte el int de SQLite a String del modelo
                  nombre: f.nombre,
                  telefono: f.telefono,
                ),
              )
              .toList(),
        );
  }

  // 2. CREAR
  Future<int> agregar(String nombre, String telefono) {
    return db
        .into(db.clientes)
        .insert(ClientesCompanion.insert(nombre: nombre, telefono: telefono));
  }

  // 3. ACTUALIZAR (Recibe String id como pide el modelo Cliente)
  Future<bool> actualizar(String id, String nombre, String telefono) {
    final intId = int.tryParse(id);
    if (intId == null) return Future.value(false);

    return db
        .update(db.clientes)
        .replace(
          ClientesCompanion(
            id: Value(intId),
            nombre: Value(nombre),
            telefono: Value(telefono),
          ),
        );
  }

  // 4. ELIMINAR (Recibe String id)
  Future<int> eliminar(String id) {
    final intId = int.tryParse(id);
    if (intId == null) return Future.value(0);

    return (db.delete(db.clientes)..where((tbl) => tbl.id.equals(intId))).go();
  }
}
