import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'database.g.dart';

// Definición de la Tabla Productos
class Productos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nombre => text()();
  RealColumn get precio => real()();
  TextColumn get imagen => text()();
}

// Definición de la Tabla Clientes
class Clientes extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nombre => text().withLength(min: 6, max: 32)();
  TextColumn get telefono => text().withLength(min: 6, max: 32)();
  DateTimeColumn get createdAt => dateTime().nullable()();
}

// Definición de la Tabla Pedidos
class Pedidos extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get idCliente => integer().references(Clientes, #id)();
  TextColumn get nombreCliente => text()();
  TextColumn get imagen => text()();
  RealColumn get sena => real()();
  DateTimeColumn get fechaEntrega => dateTime()();
  DateTimeColumn get fechaEncargo => dateTime()();
  BoolColumn get pagoRealizado => boolean()();
}

// Definición de la Tabla de Items de un Pedido
class ItemsPedido extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get idPedido => integer().references(Pedidos, #id)();
  IntColumn get idProducto => integer().references(Productos, #id)();
  TextColumn get nombreProducto => text()();
  RealColumn get precioUnitario => real()();
  IntColumn get cantidad => integer()();
}

@DriftDatabase(tables: [Productos, Clientes, Pedidos, ItemsPedido])
class AppDatabase extends _$AppDatabase {
  // Constructor normal (NO es singleton)
  AppDatabase() : super(_abrirConexion());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _abrirConexion() {
    return driftDatabase(name: 'dime_el_precio.db');
  }
}
