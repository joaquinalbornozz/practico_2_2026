// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ProductosTable extends Productos
    with TableInfo<$ProductosTable, Producto> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  @override
  late final GeneratedColumn<String> nombre = GeneratedColumn<String>(
    'nombre',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _precioMeta = const VerificationMeta('precio');
  @override
  late final GeneratedColumn<double> precio = GeneratedColumn<double>(
    'precio',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imagenMeta = const VerificationMeta('imagen');
  @override
  late final GeneratedColumn<String> imagen = GeneratedColumn<String>(
    'imagen',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, nombre, precio, imagen];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'productos';
  @override
  VerificationContext validateIntegrity(
    Insertable<Producto> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(
        _nombreMeta,
        nombre.isAcceptableOrUnknown(data['nombre']!, _nombreMeta),
      );
    } else if (isInserting) {
      context.missing(_nombreMeta);
    }
    if (data.containsKey('precio')) {
      context.handle(
        _precioMeta,
        precio.isAcceptableOrUnknown(data['precio']!, _precioMeta),
      );
    } else if (isInserting) {
      context.missing(_precioMeta);
    }
    if (data.containsKey('imagen')) {
      context.handle(
        _imagenMeta,
        imagen.isAcceptableOrUnknown(data['imagen']!, _imagenMeta),
      );
    } else if (isInserting) {
      context.missing(_imagenMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Producto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Producto(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      nombre: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre'],
      )!,
      precio: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}precio'],
      )!,
      imagen: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}imagen'],
      )!,
    );
  }

  @override
  $ProductosTable createAlias(String alias) {
    return $ProductosTable(attachedDatabase, alias);
  }
}

class Producto extends DataClass implements Insertable<Producto> {
  final int id;
  final String nombre;
  final double precio;
  final String imagen;
  const Producto({
    required this.id,
    required this.nombre,
    required this.precio,
    required this.imagen,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nombre'] = Variable<String>(nombre);
    map['precio'] = Variable<double>(precio);
    map['imagen'] = Variable<String>(imagen);
    return map;
  }

  ProductosCompanion toCompanion(bool nullToAbsent) {
    return ProductosCompanion(
      id: Value(id),
      nombre: Value(nombre),
      precio: Value(precio),
      imagen: Value(imagen),
    );
  }

  factory Producto.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Producto(
      id: serializer.fromJson<int>(json['id']),
      nombre: serializer.fromJson<String>(json['nombre']),
      precio: serializer.fromJson<double>(json['precio']),
      imagen: serializer.fromJson<String>(json['imagen']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nombre': serializer.toJson<String>(nombre),
      'precio': serializer.toJson<double>(precio),
      'imagen': serializer.toJson<String>(imagen),
    };
  }

  Producto copyWith({
    int? id,
    String? nombre,
    double? precio,
    String? imagen,
  }) => Producto(
    id: id ?? this.id,
    nombre: nombre ?? this.nombre,
    precio: precio ?? this.precio,
    imagen: imagen ?? this.imagen,
  );
  Producto copyWithCompanion(ProductosCompanion data) {
    return Producto(
      id: data.id.present ? data.id.value : this.id,
      nombre: data.nombre.present ? data.nombre.value : this.nombre,
      precio: data.precio.present ? data.precio.value : this.precio,
      imagen: data.imagen.present ? data.imagen.value : this.imagen,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Producto(')
          ..write('id: $id, ')
          ..write('nombre: $nombre, ')
          ..write('precio: $precio, ')
          ..write('imagen: $imagen')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nombre, precio, imagen);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Producto &&
          other.id == this.id &&
          other.nombre == this.nombre &&
          other.precio == this.precio &&
          other.imagen == this.imagen);
}

class ProductosCompanion extends UpdateCompanion<Producto> {
  final Value<int> id;
  final Value<String> nombre;
  final Value<double> precio;
  final Value<String> imagen;
  const ProductosCompanion({
    this.id = const Value.absent(),
    this.nombre = const Value.absent(),
    this.precio = const Value.absent(),
    this.imagen = const Value.absent(),
  });
  ProductosCompanion.insert({
    this.id = const Value.absent(),
    required String nombre,
    required double precio,
    required String imagen,
  }) : nombre = Value(nombre),
       precio = Value(precio),
       imagen = Value(imagen);
  static Insertable<Producto> custom({
    Expression<int>? id,
    Expression<String>? nombre,
    Expression<double>? precio,
    Expression<String>? imagen,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nombre != null) 'nombre': nombre,
      if (precio != null) 'precio': precio,
      if (imagen != null) 'imagen': imagen,
    });
  }

  ProductosCompanion copyWith({
    Value<int>? id,
    Value<String>? nombre,
    Value<double>? precio,
    Value<String>? imagen,
  }) {
    return ProductosCompanion(
      id: id ?? this.id,
      nombre: nombre ?? this.nombre,
      precio: precio ?? this.precio,
      imagen: imagen ?? this.imagen,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (precio.present) {
      map['precio'] = Variable<double>(precio.value);
    }
    if (imagen.present) {
      map['imagen'] = Variable<String>(imagen.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductosCompanion(')
          ..write('id: $id, ')
          ..write('nombre: $nombre, ')
          ..write('precio: $precio, ')
          ..write('imagen: $imagen')
          ..write(')'))
        .toString();
  }
}

class $ClientesTable extends Clientes with TableInfo<$ClientesTable, Cliente> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClientesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  @override
  late final GeneratedColumn<String> nombre = GeneratedColumn<String>(
    'nombre',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 6,
      maxTextLength: 32,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _telefonoMeta = const VerificationMeta(
    'telefono',
  );
  @override
  late final GeneratedColumn<String> telefono = GeneratedColumn<String>(
    'telefono',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 6,
      maxTextLength: 32,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, nombre, telefono, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'clientes';
  @override
  VerificationContext validateIntegrity(
    Insertable<Cliente> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nombre')) {
      context.handle(
        _nombreMeta,
        nombre.isAcceptableOrUnknown(data['nombre']!, _nombreMeta),
      );
    } else if (isInserting) {
      context.missing(_nombreMeta);
    }
    if (data.containsKey('telefono')) {
      context.handle(
        _telefonoMeta,
        telefono.isAcceptableOrUnknown(data['telefono']!, _telefonoMeta),
      );
    } else if (isInserting) {
      context.missing(_telefonoMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Cliente map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Cliente(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      nombre: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre'],
      )!,
      telefono: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}telefono'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      ),
    );
  }

  @override
  $ClientesTable createAlias(String alias) {
    return $ClientesTable(attachedDatabase, alias);
  }
}

class Cliente extends DataClass implements Insertable<Cliente> {
  final int id;
  final String nombre;
  final String telefono;
  final DateTime? createdAt;
  const Cliente({
    required this.id,
    required this.nombre,
    required this.telefono,
    this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nombre'] = Variable<String>(nombre);
    map['telefono'] = Variable<String>(telefono);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  ClientesCompanion toCompanion(bool nullToAbsent) {
    return ClientesCompanion(
      id: Value(id),
      nombre: Value(nombre),
      telefono: Value(telefono),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory Cliente.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Cliente(
      id: serializer.fromJson<int>(json['id']),
      nombre: serializer.fromJson<String>(json['nombre']),
      telefono: serializer.fromJson<String>(json['telefono']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nombre': serializer.toJson<String>(nombre),
      'telefono': serializer.toJson<String>(telefono),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  Cliente copyWith({
    int? id,
    String? nombre,
    String? telefono,
    Value<DateTime?> createdAt = const Value.absent(),
  }) => Cliente(
    id: id ?? this.id,
    nombre: nombre ?? this.nombre,
    telefono: telefono ?? this.telefono,
    createdAt: createdAt.present ? createdAt.value : this.createdAt,
  );
  Cliente copyWithCompanion(ClientesCompanion data) {
    return Cliente(
      id: data.id.present ? data.id.value : this.id,
      nombre: data.nombre.present ? data.nombre.value : this.nombre,
      telefono: data.telefono.present ? data.telefono.value : this.telefono,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Cliente(')
          ..write('id: $id, ')
          ..write('nombre: $nombre, ')
          ..write('telefono: $telefono, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nombre, telefono, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Cliente &&
          other.id == this.id &&
          other.nombre == this.nombre &&
          other.telefono == this.telefono &&
          other.createdAt == this.createdAt);
}

class ClientesCompanion extends UpdateCompanion<Cliente> {
  final Value<int> id;
  final Value<String> nombre;
  final Value<String> telefono;
  final Value<DateTime?> createdAt;
  const ClientesCompanion({
    this.id = const Value.absent(),
    this.nombre = const Value.absent(),
    this.telefono = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  ClientesCompanion.insert({
    this.id = const Value.absent(),
    required String nombre,
    required String telefono,
    this.createdAt = const Value.absent(),
  }) : nombre = Value(nombre),
       telefono = Value(telefono);
  static Insertable<Cliente> custom({
    Expression<int>? id,
    Expression<String>? nombre,
    Expression<String>? telefono,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nombre != null) 'nombre': nombre,
      if (telefono != null) 'telefono': telefono,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  ClientesCompanion copyWith({
    Value<int>? id,
    Value<String>? nombre,
    Value<String>? telefono,
    Value<DateTime?>? createdAt,
  }) {
    return ClientesCompanion(
      id: id ?? this.id,
      nombre: nombre ?? this.nombre,
      telefono: telefono ?? this.telefono,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (telefono.present) {
      map['telefono'] = Variable<String>(telefono.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClientesCompanion(')
          ..write('id: $id, ')
          ..write('nombre: $nombre, ')
          ..write('telefono: $telefono, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $PedidosTable extends Pedidos with TableInfo<$PedidosTable, Pedido> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PedidosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _idClienteMeta = const VerificationMeta(
    'idCliente',
  );
  @override
  late final GeneratedColumn<int> idCliente = GeneratedColumn<int>(
    'id_cliente',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES clientes (id)',
    ),
  );
  static const VerificationMeta _nombreClienteMeta = const VerificationMeta(
    'nombreCliente',
  );
  @override
  late final GeneratedColumn<String> nombreCliente = GeneratedColumn<String>(
    'nombre_cliente',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imagenMeta = const VerificationMeta('imagen');
  @override
  late final GeneratedColumn<String> imagen = GeneratedColumn<String>(
    'imagen',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _senaMeta = const VerificationMeta('sena');
  @override
  late final GeneratedColumn<double> sena = GeneratedColumn<double>(
    'sena',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fechaEntregaMeta = const VerificationMeta(
    'fechaEntrega',
  );
  @override
  late final GeneratedColumn<DateTime> fechaEntrega = GeneratedColumn<DateTime>(
    'fecha_entrega',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fechaEncargoMeta = const VerificationMeta(
    'fechaEncargo',
  );
  @override
  late final GeneratedColumn<DateTime> fechaEncargo = GeneratedColumn<DateTime>(
    'fecha_encargo',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pagoRealizadoMeta = const VerificationMeta(
    'pagoRealizado',
  );
  @override
  late final GeneratedColumn<bool> pagoRealizado = GeneratedColumn<bool>(
    'pago_realizado',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("pago_realizado" IN (0, 1))',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    idCliente,
    nombreCliente,
    imagen,
    sena,
    fechaEntrega,
    fechaEncargo,
    pagoRealizado,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pedidos';
  @override
  VerificationContext validateIntegrity(
    Insertable<Pedido> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_cliente')) {
      context.handle(
        _idClienteMeta,
        idCliente.isAcceptableOrUnknown(data['id_cliente']!, _idClienteMeta),
      );
    } else if (isInserting) {
      context.missing(_idClienteMeta);
    }
    if (data.containsKey('nombre_cliente')) {
      context.handle(
        _nombreClienteMeta,
        nombreCliente.isAcceptableOrUnknown(
          data['nombre_cliente']!,
          _nombreClienteMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_nombreClienteMeta);
    }
    if (data.containsKey('imagen')) {
      context.handle(
        _imagenMeta,
        imagen.isAcceptableOrUnknown(data['imagen']!, _imagenMeta),
      );
    } else if (isInserting) {
      context.missing(_imagenMeta);
    }
    if (data.containsKey('sena')) {
      context.handle(
        _senaMeta,
        sena.isAcceptableOrUnknown(data['sena']!, _senaMeta),
      );
    } else if (isInserting) {
      context.missing(_senaMeta);
    }
    if (data.containsKey('fecha_entrega')) {
      context.handle(
        _fechaEntregaMeta,
        fechaEntrega.isAcceptableOrUnknown(
          data['fecha_entrega']!,
          _fechaEntregaMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_fechaEntregaMeta);
    }
    if (data.containsKey('fecha_encargo')) {
      context.handle(
        _fechaEncargoMeta,
        fechaEncargo.isAcceptableOrUnknown(
          data['fecha_encargo']!,
          _fechaEncargoMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_fechaEncargoMeta);
    }
    if (data.containsKey('pago_realizado')) {
      context.handle(
        _pagoRealizadoMeta,
        pagoRealizado.isAcceptableOrUnknown(
          data['pago_realizado']!,
          _pagoRealizadoMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_pagoRealizadoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Pedido map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Pedido(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      idCliente: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_cliente'],
      )!,
      nombreCliente: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre_cliente'],
      )!,
      imagen: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}imagen'],
      )!,
      sena: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}sena'],
      )!,
      fechaEntrega: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}fecha_entrega'],
      )!,
      fechaEncargo: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}fecha_encargo'],
      )!,
      pagoRealizado: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}pago_realizado'],
      )!,
    );
  }

  @override
  $PedidosTable createAlias(String alias) {
    return $PedidosTable(attachedDatabase, alias);
  }
}

class Pedido extends DataClass implements Insertable<Pedido> {
  final int id;
  final int idCliente;
  final String nombreCliente;
  final String imagen;
  final double sena;
  final DateTime fechaEntrega;
  final DateTime fechaEncargo;
  final bool pagoRealizado;
  const Pedido({
    required this.id,
    required this.idCliente,
    required this.nombreCliente,
    required this.imagen,
    required this.sena,
    required this.fechaEntrega,
    required this.fechaEncargo,
    required this.pagoRealizado,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['id_cliente'] = Variable<int>(idCliente);
    map['nombre_cliente'] = Variable<String>(nombreCliente);
    map['imagen'] = Variable<String>(imagen);
    map['sena'] = Variable<double>(sena);
    map['fecha_entrega'] = Variable<DateTime>(fechaEntrega);
    map['fecha_encargo'] = Variable<DateTime>(fechaEncargo);
    map['pago_realizado'] = Variable<bool>(pagoRealizado);
    return map;
  }

  PedidosCompanion toCompanion(bool nullToAbsent) {
    return PedidosCompanion(
      id: Value(id),
      idCliente: Value(idCliente),
      nombreCliente: Value(nombreCliente),
      imagen: Value(imagen),
      sena: Value(sena),
      fechaEntrega: Value(fechaEntrega),
      fechaEncargo: Value(fechaEncargo),
      pagoRealizado: Value(pagoRealizado),
    );
  }

  factory Pedido.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Pedido(
      id: serializer.fromJson<int>(json['id']),
      idCliente: serializer.fromJson<int>(json['idCliente']),
      nombreCliente: serializer.fromJson<String>(json['nombreCliente']),
      imagen: serializer.fromJson<String>(json['imagen']),
      sena: serializer.fromJson<double>(json['sena']),
      fechaEntrega: serializer.fromJson<DateTime>(json['fechaEntrega']),
      fechaEncargo: serializer.fromJson<DateTime>(json['fechaEncargo']),
      pagoRealizado: serializer.fromJson<bool>(json['pagoRealizado']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idCliente': serializer.toJson<int>(idCliente),
      'nombreCliente': serializer.toJson<String>(nombreCliente),
      'imagen': serializer.toJson<String>(imagen),
      'sena': serializer.toJson<double>(sena),
      'fechaEntrega': serializer.toJson<DateTime>(fechaEntrega),
      'fechaEncargo': serializer.toJson<DateTime>(fechaEncargo),
      'pagoRealizado': serializer.toJson<bool>(pagoRealizado),
    };
  }

  Pedido copyWith({
    int? id,
    int? idCliente,
    String? nombreCliente,
    String? imagen,
    double? sena,
    DateTime? fechaEntrega,
    DateTime? fechaEncargo,
    bool? pagoRealizado,
  }) => Pedido(
    id: id ?? this.id,
    idCliente: idCliente ?? this.idCliente,
    nombreCliente: nombreCliente ?? this.nombreCliente,
    imagen: imagen ?? this.imagen,
    sena: sena ?? this.sena,
    fechaEntrega: fechaEntrega ?? this.fechaEntrega,
    fechaEncargo: fechaEncargo ?? this.fechaEncargo,
    pagoRealizado: pagoRealizado ?? this.pagoRealizado,
  );
  Pedido copyWithCompanion(PedidosCompanion data) {
    return Pedido(
      id: data.id.present ? data.id.value : this.id,
      idCliente: data.idCliente.present ? data.idCliente.value : this.idCliente,
      nombreCliente: data.nombreCliente.present
          ? data.nombreCliente.value
          : this.nombreCliente,
      imagen: data.imagen.present ? data.imagen.value : this.imagen,
      sena: data.sena.present ? data.sena.value : this.sena,
      fechaEntrega: data.fechaEntrega.present
          ? data.fechaEntrega.value
          : this.fechaEntrega,
      fechaEncargo: data.fechaEncargo.present
          ? data.fechaEncargo.value
          : this.fechaEncargo,
      pagoRealizado: data.pagoRealizado.present
          ? data.pagoRealizado.value
          : this.pagoRealizado,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Pedido(')
          ..write('id: $id, ')
          ..write('idCliente: $idCliente, ')
          ..write('nombreCliente: $nombreCliente, ')
          ..write('imagen: $imagen, ')
          ..write('sena: $sena, ')
          ..write('fechaEntrega: $fechaEntrega, ')
          ..write('fechaEncargo: $fechaEncargo, ')
          ..write('pagoRealizado: $pagoRealizado')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    idCliente,
    nombreCliente,
    imagen,
    sena,
    fechaEntrega,
    fechaEncargo,
    pagoRealizado,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Pedido &&
          other.id == this.id &&
          other.idCliente == this.idCliente &&
          other.nombreCliente == this.nombreCliente &&
          other.imagen == this.imagen &&
          other.sena == this.sena &&
          other.fechaEntrega == this.fechaEntrega &&
          other.fechaEncargo == this.fechaEncargo &&
          other.pagoRealizado == this.pagoRealizado);
}

class PedidosCompanion extends UpdateCompanion<Pedido> {
  final Value<int> id;
  final Value<int> idCliente;
  final Value<String> nombreCliente;
  final Value<String> imagen;
  final Value<double> sena;
  final Value<DateTime> fechaEntrega;
  final Value<DateTime> fechaEncargo;
  final Value<bool> pagoRealizado;
  const PedidosCompanion({
    this.id = const Value.absent(),
    this.idCliente = const Value.absent(),
    this.nombreCliente = const Value.absent(),
    this.imagen = const Value.absent(),
    this.sena = const Value.absent(),
    this.fechaEntrega = const Value.absent(),
    this.fechaEncargo = const Value.absent(),
    this.pagoRealizado = const Value.absent(),
  });
  PedidosCompanion.insert({
    this.id = const Value.absent(),
    required int idCliente,
    required String nombreCliente,
    required String imagen,
    required double sena,
    required DateTime fechaEntrega,
    required DateTime fechaEncargo,
    required bool pagoRealizado,
  }) : idCliente = Value(idCliente),
       nombreCliente = Value(nombreCliente),
       imagen = Value(imagen),
       sena = Value(sena),
       fechaEntrega = Value(fechaEntrega),
       fechaEncargo = Value(fechaEncargo),
       pagoRealizado = Value(pagoRealizado);
  static Insertable<Pedido> custom({
    Expression<int>? id,
    Expression<int>? idCliente,
    Expression<String>? nombreCliente,
    Expression<String>? imagen,
    Expression<double>? sena,
    Expression<DateTime>? fechaEntrega,
    Expression<DateTime>? fechaEncargo,
    Expression<bool>? pagoRealizado,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idCliente != null) 'id_cliente': idCliente,
      if (nombreCliente != null) 'nombre_cliente': nombreCliente,
      if (imagen != null) 'imagen': imagen,
      if (sena != null) 'sena': sena,
      if (fechaEntrega != null) 'fecha_entrega': fechaEntrega,
      if (fechaEncargo != null) 'fecha_encargo': fechaEncargo,
      if (pagoRealizado != null) 'pago_realizado': pagoRealizado,
    });
  }

  PedidosCompanion copyWith({
    Value<int>? id,
    Value<int>? idCliente,
    Value<String>? nombreCliente,
    Value<String>? imagen,
    Value<double>? sena,
    Value<DateTime>? fechaEntrega,
    Value<DateTime>? fechaEncargo,
    Value<bool>? pagoRealizado,
  }) {
    return PedidosCompanion(
      id: id ?? this.id,
      idCliente: idCliente ?? this.idCliente,
      nombreCliente: nombreCliente ?? this.nombreCliente,
      imagen: imagen ?? this.imagen,
      sena: sena ?? this.sena,
      fechaEntrega: fechaEntrega ?? this.fechaEntrega,
      fechaEncargo: fechaEncargo ?? this.fechaEncargo,
      pagoRealizado: pagoRealizado ?? this.pagoRealizado,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idCliente.present) {
      map['id_cliente'] = Variable<int>(idCliente.value);
    }
    if (nombreCliente.present) {
      map['nombre_cliente'] = Variable<String>(nombreCliente.value);
    }
    if (imagen.present) {
      map['imagen'] = Variable<String>(imagen.value);
    }
    if (sena.present) {
      map['sena'] = Variable<double>(sena.value);
    }
    if (fechaEntrega.present) {
      map['fecha_entrega'] = Variable<DateTime>(fechaEntrega.value);
    }
    if (fechaEncargo.present) {
      map['fecha_encargo'] = Variable<DateTime>(fechaEncargo.value);
    }
    if (pagoRealizado.present) {
      map['pago_realizado'] = Variable<bool>(pagoRealizado.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PedidosCompanion(')
          ..write('id: $id, ')
          ..write('idCliente: $idCliente, ')
          ..write('nombreCliente: $nombreCliente, ')
          ..write('imagen: $imagen, ')
          ..write('sena: $sena, ')
          ..write('fechaEntrega: $fechaEntrega, ')
          ..write('fechaEncargo: $fechaEncargo, ')
          ..write('pagoRealizado: $pagoRealizado')
          ..write(')'))
        .toString();
  }
}

class $ItemsPedidoTable extends ItemsPedido
    with TableInfo<$ItemsPedidoTable, ItemsPedidoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemsPedidoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _idPedidoMeta = const VerificationMeta(
    'idPedido',
  );
  @override
  late final GeneratedColumn<int> idPedido = GeneratedColumn<int>(
    'id_pedido',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pedidos (id)',
    ),
  );
  static const VerificationMeta _idProductoMeta = const VerificationMeta(
    'idProducto',
  );
  @override
  late final GeneratedColumn<int> idProducto = GeneratedColumn<int>(
    'id_producto',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES productos (id)',
    ),
  );
  static const VerificationMeta _nombreProductoMeta = const VerificationMeta(
    'nombreProducto',
  );
  @override
  late final GeneratedColumn<String> nombreProducto = GeneratedColumn<String>(
    'nombre_producto',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _precioUnitarioMeta = const VerificationMeta(
    'precioUnitario',
  );
  @override
  late final GeneratedColumn<double> precioUnitario = GeneratedColumn<double>(
    'precio_unitario',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cantidadMeta = const VerificationMeta(
    'cantidad',
  );
  @override
  late final GeneratedColumn<int> cantidad = GeneratedColumn<int>(
    'cantidad',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    idPedido,
    idProducto,
    nombreProducto,
    precioUnitario,
    cantidad,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'items_pedido';
  @override
  VerificationContext validateIntegrity(
    Insertable<ItemsPedidoData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_pedido')) {
      context.handle(
        _idPedidoMeta,
        idPedido.isAcceptableOrUnknown(data['id_pedido']!, _idPedidoMeta),
      );
    } else if (isInserting) {
      context.missing(_idPedidoMeta);
    }
    if (data.containsKey('id_producto')) {
      context.handle(
        _idProductoMeta,
        idProducto.isAcceptableOrUnknown(data['id_producto']!, _idProductoMeta),
      );
    } else if (isInserting) {
      context.missing(_idProductoMeta);
    }
    if (data.containsKey('nombre_producto')) {
      context.handle(
        _nombreProductoMeta,
        nombreProducto.isAcceptableOrUnknown(
          data['nombre_producto']!,
          _nombreProductoMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_nombreProductoMeta);
    }
    if (data.containsKey('precio_unitario')) {
      context.handle(
        _precioUnitarioMeta,
        precioUnitario.isAcceptableOrUnknown(
          data['precio_unitario']!,
          _precioUnitarioMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_precioUnitarioMeta);
    }
    if (data.containsKey('cantidad')) {
      context.handle(
        _cantidadMeta,
        cantidad.isAcceptableOrUnknown(data['cantidad']!, _cantidadMeta),
      );
    } else if (isInserting) {
      context.missing(_cantidadMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemsPedidoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemsPedidoData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      idPedido: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_pedido'],
      )!,
      idProducto: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_producto'],
      )!,
      nombreProducto: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre_producto'],
      )!,
      precioUnitario: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}precio_unitario'],
      )!,
      cantidad: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cantidad'],
      )!,
    );
  }

  @override
  $ItemsPedidoTable createAlias(String alias) {
    return $ItemsPedidoTable(attachedDatabase, alias);
  }
}

class ItemsPedidoData extends DataClass implements Insertable<ItemsPedidoData> {
  final int id;
  final int idPedido;
  final int idProducto;
  final String nombreProducto;
  final double precioUnitario;
  final int cantidad;
  const ItemsPedidoData({
    required this.id,
    required this.idPedido,
    required this.idProducto,
    required this.nombreProducto,
    required this.precioUnitario,
    required this.cantidad,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['id_pedido'] = Variable<int>(idPedido);
    map['id_producto'] = Variable<int>(idProducto);
    map['nombre_producto'] = Variable<String>(nombreProducto);
    map['precio_unitario'] = Variable<double>(precioUnitario);
    map['cantidad'] = Variable<int>(cantidad);
    return map;
  }

  ItemsPedidoCompanion toCompanion(bool nullToAbsent) {
    return ItemsPedidoCompanion(
      id: Value(id),
      idPedido: Value(idPedido),
      idProducto: Value(idProducto),
      nombreProducto: Value(nombreProducto),
      precioUnitario: Value(precioUnitario),
      cantidad: Value(cantidad),
    );
  }

  factory ItemsPedidoData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemsPedidoData(
      id: serializer.fromJson<int>(json['id']),
      idPedido: serializer.fromJson<int>(json['idPedido']),
      idProducto: serializer.fromJson<int>(json['idProducto']),
      nombreProducto: serializer.fromJson<String>(json['nombreProducto']),
      precioUnitario: serializer.fromJson<double>(json['precioUnitario']),
      cantidad: serializer.fromJson<int>(json['cantidad']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idPedido': serializer.toJson<int>(idPedido),
      'idProducto': serializer.toJson<int>(idProducto),
      'nombreProducto': serializer.toJson<String>(nombreProducto),
      'precioUnitario': serializer.toJson<double>(precioUnitario),
      'cantidad': serializer.toJson<int>(cantidad),
    };
  }

  ItemsPedidoData copyWith({
    int? id,
    int? idPedido,
    int? idProducto,
    String? nombreProducto,
    double? precioUnitario,
    int? cantidad,
  }) => ItemsPedidoData(
    id: id ?? this.id,
    idPedido: idPedido ?? this.idPedido,
    idProducto: idProducto ?? this.idProducto,
    nombreProducto: nombreProducto ?? this.nombreProducto,
    precioUnitario: precioUnitario ?? this.precioUnitario,
    cantidad: cantidad ?? this.cantidad,
  );
  ItemsPedidoData copyWithCompanion(ItemsPedidoCompanion data) {
    return ItemsPedidoData(
      id: data.id.present ? data.id.value : this.id,
      idPedido: data.idPedido.present ? data.idPedido.value : this.idPedido,
      idProducto: data.idProducto.present
          ? data.idProducto.value
          : this.idProducto,
      nombreProducto: data.nombreProducto.present
          ? data.nombreProducto.value
          : this.nombreProducto,
      precioUnitario: data.precioUnitario.present
          ? data.precioUnitario.value
          : this.precioUnitario,
      cantidad: data.cantidad.present ? data.cantidad.value : this.cantidad,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ItemsPedidoData(')
          ..write('id: $id, ')
          ..write('idPedido: $idPedido, ')
          ..write('idProducto: $idProducto, ')
          ..write('nombreProducto: $nombreProducto, ')
          ..write('precioUnitario: $precioUnitario, ')
          ..write('cantidad: $cantidad')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    idPedido,
    idProducto,
    nombreProducto,
    precioUnitario,
    cantidad,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemsPedidoData &&
          other.id == this.id &&
          other.idPedido == this.idPedido &&
          other.idProducto == this.idProducto &&
          other.nombreProducto == this.nombreProducto &&
          other.precioUnitario == this.precioUnitario &&
          other.cantidad == this.cantidad);
}

class ItemsPedidoCompanion extends UpdateCompanion<ItemsPedidoData> {
  final Value<int> id;
  final Value<int> idPedido;
  final Value<int> idProducto;
  final Value<String> nombreProducto;
  final Value<double> precioUnitario;
  final Value<int> cantidad;
  const ItemsPedidoCompanion({
    this.id = const Value.absent(),
    this.idPedido = const Value.absent(),
    this.idProducto = const Value.absent(),
    this.nombreProducto = const Value.absent(),
    this.precioUnitario = const Value.absent(),
    this.cantidad = const Value.absent(),
  });
  ItemsPedidoCompanion.insert({
    this.id = const Value.absent(),
    required int idPedido,
    required int idProducto,
    required String nombreProducto,
    required double precioUnitario,
    required int cantidad,
  }) : idPedido = Value(idPedido),
       idProducto = Value(idProducto),
       nombreProducto = Value(nombreProducto),
       precioUnitario = Value(precioUnitario),
       cantidad = Value(cantidad);
  static Insertable<ItemsPedidoData> custom({
    Expression<int>? id,
    Expression<int>? idPedido,
    Expression<int>? idProducto,
    Expression<String>? nombreProducto,
    Expression<double>? precioUnitario,
    Expression<int>? cantidad,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idPedido != null) 'id_pedido': idPedido,
      if (idProducto != null) 'id_producto': idProducto,
      if (nombreProducto != null) 'nombre_producto': nombreProducto,
      if (precioUnitario != null) 'precio_unitario': precioUnitario,
      if (cantidad != null) 'cantidad': cantidad,
    });
  }

  ItemsPedidoCompanion copyWith({
    Value<int>? id,
    Value<int>? idPedido,
    Value<int>? idProducto,
    Value<String>? nombreProducto,
    Value<double>? precioUnitario,
    Value<int>? cantidad,
  }) {
    return ItemsPedidoCompanion(
      id: id ?? this.id,
      idPedido: idPedido ?? this.idPedido,
      idProducto: idProducto ?? this.idProducto,
      nombreProducto: nombreProducto ?? this.nombreProducto,
      precioUnitario: precioUnitario ?? this.precioUnitario,
      cantidad: cantidad ?? this.cantidad,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idPedido.present) {
      map['id_pedido'] = Variable<int>(idPedido.value);
    }
    if (idProducto.present) {
      map['id_producto'] = Variable<int>(idProducto.value);
    }
    if (nombreProducto.present) {
      map['nombre_producto'] = Variable<String>(nombreProducto.value);
    }
    if (precioUnitario.present) {
      map['precio_unitario'] = Variable<double>(precioUnitario.value);
    }
    if (cantidad.present) {
      map['cantidad'] = Variable<int>(cantidad.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemsPedidoCompanion(')
          ..write('id: $id, ')
          ..write('idPedido: $idPedido, ')
          ..write('idProducto: $idProducto, ')
          ..write('nombreProducto: $nombreProducto, ')
          ..write('precioUnitario: $precioUnitario, ')
          ..write('cantidad: $cantidad')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProductosTable productos = $ProductosTable(this);
  late final $ClientesTable clientes = $ClientesTable(this);
  late final $PedidosTable pedidos = $PedidosTable(this);
  late final $ItemsPedidoTable itemsPedido = $ItemsPedidoTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    productos,
    clientes,
    pedidos,
    itemsPedido,
  ];
}

typedef $$ProductosTableCreateCompanionBuilder = ProductosCompanion Function({
  Value<int> id,
  required String nombre,
  required double precio,
  required String imagen,
});
typedef $$ProductosTableUpdateCompanionBuilder = ProductosCompanion Function({
  Value<int> id,
  Value<String> nombre,
  Value<double> precio,
  Value<String> imagen,
});

final class $$ProductosTableReferences
    extends BaseReferences<_$AppDatabase, $ProductosTable, Producto> {
  $$ProductosTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ItemsPedidoTable, List<ItemsPedidoData>>
  _itemsPedidoRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.itemsPedido,
    aliasName: 'productos__id__items_pedido__id_producto',
  );

  $$ItemsPedidoTableProcessedTableManager get itemsPedidoRefs {
    final manager = $$ItemsPedidoTableTableManager(
      $_db,
      $_db.itemsPedido,
    ).filter((f) => f.idProducto.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_itemsPedidoRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ProductosTableFilterComposer
    extends Composer<_$AppDatabase, $ProductosTable> {
  $$ProductosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombre => $composableBuilder(
    column: $table.nombre,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get precio => $composableBuilder(
    column: $table.precio,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imagen => $composableBuilder(
    column: $table.imagen,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> itemsPedidoRefs(
    Expression<bool> Function($$ItemsPedidoTableFilterComposer f) f,
  ) {
    final $$ItemsPedidoTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.itemsPedido,
      getReferencedColumn: (t) => t.idProducto,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemsPedidoTableFilterComposer(
            $db: $db,
            $table: $db.itemsPedido,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProductosTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductosTable> {
  $$ProductosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombre => $composableBuilder(
    column: $table.nombre,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get precio => $composableBuilder(
    column: $table.precio,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imagen => $composableBuilder(
    column: $table.imagen,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProductosTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductosTable> {
  $$ProductosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nombre =>
      $composableBuilder(column: $table.nombre, builder: (column) => column);

  GeneratedColumn<double> get precio =>
      $composableBuilder(column: $table.precio, builder: (column) => column);

  GeneratedColumn<String> get imagen =>
      $composableBuilder(column: $table.imagen, builder: (column) => column);

  Expression<T> itemsPedidoRefs<T extends Object>(
    Expression<T> Function($$ItemsPedidoTableAnnotationComposer a) f,
  ) {
    final $$ItemsPedidoTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.itemsPedido,
      getReferencedColumn: (t) => t.idProducto,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemsPedidoTableAnnotationComposer(
            $db: $db,
            $table: $db.itemsPedido,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProductosTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProductosTable,
          Producto,
          $$ProductosTableFilterComposer,
          $$ProductosTableOrderingComposer,
          $$ProductosTableAnnotationComposer,
          $$ProductosTableCreateCompanionBuilder,
          $$ProductosTableUpdateCompanionBuilder,
          (Producto, $$ProductosTableReferences),
          Producto,
          PrefetchHooks Function({bool itemsPedidoRefs})
        > {
  $$ProductosTableTableManager(_$AppDatabase db, $ProductosTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> nombre = const Value.absent(),
                Value<double> precio = const Value.absent(),
                Value<String> imagen = const Value.absent(),
              }) => ProductosCompanion(
                id: id,
                nombre: nombre,
                precio: precio,
                imagen: imagen,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String nombre,
                required double precio,
                required String imagen,
              }) => ProductosCompanion.insert(
                id: id,
                nombre: nombre,
                precio: precio,
                imagen: imagen,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ProductosTable, Producto>(table),
                  $$ProductosTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({itemsPedidoRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (itemsPedidoRefs) db.itemsPedido],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (itemsPedidoRefs)
                    await $_getPrefetchedDataByColumns<
                      Producto,
                      $ProductosTable,
                      ItemsPedidoData,
                      $ItemsPedidoTable
                    >(
                      currentTable: table,
                      referencedTable: $$ProductosTableReferences
                          ._itemsPedidoRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ProductosTableReferences(
                            db,
                            table,
                            p0,
                          ).itemsPedidoRefs,
                      currentColumn: 'id',
                      referencedColumn: 'id_producto',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ProductosTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProductosTable,
      Producto,
      $$ProductosTableFilterComposer,
      $$ProductosTableOrderingComposer,
      $$ProductosTableAnnotationComposer,
      $$ProductosTableCreateCompanionBuilder,
      $$ProductosTableUpdateCompanionBuilder,
      (Producto, $$ProductosTableReferences),
      Producto,
      PrefetchHooks Function({bool itemsPedidoRefs})
    >;
typedef $$ClientesTableCreateCompanionBuilder = ClientesCompanion Function({
  Value<int> id,
  required String nombre,
  required String telefono,
  Value<DateTime?> createdAt,
});
typedef $$ClientesTableUpdateCompanionBuilder = ClientesCompanion Function({
  Value<int> id,
  Value<String> nombre,
  Value<String> telefono,
  Value<DateTime?> createdAt,
});

final class $$ClientesTableReferences
    extends BaseReferences<_$AppDatabase, $ClientesTable, Cliente> {
  $$ClientesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PedidosTable, List<Pedido>> _pedidosRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.pedidos,
    aliasName: 'clientes__id__pedidos__id_cliente',
  );

  $$PedidosTableProcessedTableManager get pedidosRefs {
    final manager = $$PedidosTableTableManager(
      $_db,
      $_db.pedidos,
    ).filter((f) => f.idCliente.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_pedidosRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ClientesTableFilterComposer
    extends Composer<_$AppDatabase, $ClientesTable> {
  $$ClientesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombre => $composableBuilder(
    column: $table.nombre,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get telefono => $composableBuilder(
    column: $table.telefono,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> pedidosRefs(
    Expression<bool> Function($$PedidosTableFilterComposer f) f,
  ) {
    final $$PedidosTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pedidos,
      getReferencedColumn: (t) => t.idCliente,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PedidosTableFilterComposer(
            $db: $db,
            $table: $db.pedidos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ClientesTableOrderingComposer
    extends Composer<_$AppDatabase, $ClientesTable> {
  $$ClientesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombre => $composableBuilder(
    column: $table.nombre,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get telefono => $composableBuilder(
    column: $table.telefono,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClientesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClientesTable> {
  $$ClientesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nombre =>
      $composableBuilder(column: $table.nombre, builder: (column) => column);

  GeneratedColumn<String> get telefono =>
      $composableBuilder(column: $table.telefono, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> pedidosRefs<T extends Object>(
    Expression<T> Function($$PedidosTableAnnotationComposer a) f,
  ) {
    final $$PedidosTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pedidos,
      getReferencedColumn: (t) => t.idCliente,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PedidosTableAnnotationComposer(
            $db: $db,
            $table: $db.pedidos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ClientesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClientesTable,
          Cliente,
          $$ClientesTableFilterComposer,
          $$ClientesTableOrderingComposer,
          $$ClientesTableAnnotationComposer,
          $$ClientesTableCreateCompanionBuilder,
          $$ClientesTableUpdateCompanionBuilder,
          (Cliente, $$ClientesTableReferences),
          Cliente,
          PrefetchHooks Function({bool pedidosRefs})
        > {
  $$ClientesTableTableManager(_$AppDatabase db, $ClientesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClientesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClientesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClientesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> nombre = const Value.absent(),
                Value<String> telefono = const Value.absent(),
                Value<DateTime?> createdAt = const Value.absent(),
              }) => ClientesCompanion(
                id: id,
                nombre: nombre,
                telefono: telefono,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String nombre,
                required String telefono,
                Value<DateTime?> createdAt = const Value.absent(),
              }) => ClientesCompanion.insert(
                id: id,
                nombre: nombre,
                telefono: telefono,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ClientesTable, Cliente>(table),
                  $$ClientesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pedidosRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (pedidosRefs) db.pedidos],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (pedidosRefs)
                    await $_getPrefetchedDataByColumns<
                      Cliente,
                      $ClientesTable,
                      Pedido,
                      $PedidosTable
                    >(
                      currentTable: table,
                      referencedTable: $$ClientesTableReferences
                          ._pedidosRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ClientesTableReferences(db, table, p0).pedidosRefs,
                      currentColumn: 'id',
                      referencedColumn: 'id_cliente',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ClientesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClientesTable,
      Cliente,
      $$ClientesTableFilterComposer,
      $$ClientesTableOrderingComposer,
      $$ClientesTableAnnotationComposer,
      $$ClientesTableCreateCompanionBuilder,
      $$ClientesTableUpdateCompanionBuilder,
      (Cliente, $$ClientesTableReferences),
      Cliente,
      PrefetchHooks Function({bool pedidosRefs})
    >;
typedef $$PedidosTableCreateCompanionBuilder = PedidosCompanion Function({
  Value<int> id,
  required int idCliente,
  required String nombreCliente,
  required String imagen,
  required double sena,
  required DateTime fechaEntrega,
  required DateTime fechaEncargo,
  required bool pagoRealizado,
});
typedef $$PedidosTableUpdateCompanionBuilder = PedidosCompanion Function({
  Value<int> id,
  Value<int> idCliente,
  Value<String> nombreCliente,
  Value<String> imagen,
  Value<double> sena,
  Value<DateTime> fechaEntrega,
  Value<DateTime> fechaEncargo,
  Value<bool> pagoRealizado,
});

final class $$PedidosTableReferences
    extends BaseReferences<_$AppDatabase, $PedidosTable, Pedido> {
  $$PedidosTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ClientesTable _idClienteTable(_$AppDatabase db) =>
      db.clientes.createAlias('pedidos__id_cliente__clientes__id');

  $$ClientesTableProcessedTableManager get idCliente {
    final $_column = $_itemColumn<int>('id_cliente')!;

    final manager = $$ClientesTableTableManager(
      $_db,
      $_db.clientes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_idClienteTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$ItemsPedidoTable, List<ItemsPedidoData>>
  _itemsPedidoRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.itemsPedido,
    aliasName: 'pedidos__id__items_pedido__id_pedido',
  );

  $$ItemsPedidoTableProcessedTableManager get itemsPedidoRefs {
    final manager = $$ItemsPedidoTableTableManager(
      $_db,
      $_db.itemsPedido,
    ).filter((f) => f.idPedido.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_itemsPedidoRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$PedidosTableFilterComposer
    extends Composer<_$AppDatabase, $PedidosTable> {
  $$PedidosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombreCliente => $composableBuilder(
    column: $table.nombreCliente,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imagen => $composableBuilder(
    column: $table.imagen,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get sena => $composableBuilder(
    column: $table.sena,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get fechaEntrega => $composableBuilder(
    column: $table.fechaEntrega,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get fechaEncargo => $composableBuilder(
    column: $table.fechaEncargo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get pagoRealizado => $composableBuilder(
    column: $table.pagoRealizado,
    builder: (column) => ColumnFilters(column),
  );

  $$ClientesTableFilterComposer get idCliente {
    final $$ClientesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idCliente,
      referencedTable: $db.clientes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClientesTableFilterComposer(
            $db: $db,
            $table: $db.clientes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> itemsPedidoRefs(
    Expression<bool> Function($$ItemsPedidoTableFilterComposer f) f,
  ) {
    final $$ItemsPedidoTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.itemsPedido,
      getReferencedColumn: (t) => t.idPedido,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemsPedidoTableFilterComposer(
            $db: $db,
            $table: $db.itemsPedido,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PedidosTableOrderingComposer
    extends Composer<_$AppDatabase, $PedidosTable> {
  $$PedidosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombreCliente => $composableBuilder(
    column: $table.nombreCliente,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imagen => $composableBuilder(
    column: $table.imagen,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get sena => $composableBuilder(
    column: $table.sena,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get fechaEntrega => $composableBuilder(
    column: $table.fechaEntrega,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get fechaEncargo => $composableBuilder(
    column: $table.fechaEncargo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get pagoRealizado => $composableBuilder(
    column: $table.pagoRealizado,
    builder: (column) => ColumnOrderings(column),
  );

  $$ClientesTableOrderingComposer get idCliente {
    final $$ClientesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idCliente,
      referencedTable: $db.clientes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClientesTableOrderingComposer(
            $db: $db,
            $table: $db.clientes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PedidosTableAnnotationComposer
    extends Composer<_$AppDatabase, $PedidosTable> {
  $$PedidosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nombreCliente => $composableBuilder(
    column: $table.nombreCliente,
    builder: (column) => column,
  );

  GeneratedColumn<String> get imagen =>
      $composableBuilder(column: $table.imagen, builder: (column) => column);

  GeneratedColumn<double> get sena =>
      $composableBuilder(column: $table.sena, builder: (column) => column);

  GeneratedColumn<DateTime> get fechaEntrega => $composableBuilder(
    column: $table.fechaEntrega,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get fechaEncargo => $composableBuilder(
    column: $table.fechaEncargo,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get pagoRealizado => $composableBuilder(
    column: $table.pagoRealizado,
    builder: (column) => column,
  );

  $$ClientesTableAnnotationComposer get idCliente {
    final $$ClientesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idCliente,
      referencedTable: $db.clientes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClientesTableAnnotationComposer(
            $db: $db,
            $table: $db.clientes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> itemsPedidoRefs<T extends Object>(
    Expression<T> Function($$ItemsPedidoTableAnnotationComposer a) f,
  ) {
    final $$ItemsPedidoTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.itemsPedido,
      getReferencedColumn: (t) => t.idPedido,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemsPedidoTableAnnotationComposer(
            $db: $db,
            $table: $db.itemsPedido,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PedidosTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PedidosTable,
          Pedido,
          $$PedidosTableFilterComposer,
          $$PedidosTableOrderingComposer,
          $$PedidosTableAnnotationComposer,
          $$PedidosTableCreateCompanionBuilder,
          $$PedidosTableUpdateCompanionBuilder,
          (Pedido, $$PedidosTableReferences),
          Pedido,
          PrefetchHooks Function({bool idCliente, bool itemsPedidoRefs})
        > {
  $$PedidosTableTableManager(_$AppDatabase db, $PedidosTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PedidosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PedidosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PedidosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> idCliente = const Value.absent(),
                Value<String> nombreCliente = const Value.absent(),
                Value<String> imagen = const Value.absent(),
                Value<double> sena = const Value.absent(),
                Value<DateTime> fechaEntrega = const Value.absent(),
                Value<DateTime> fechaEncargo = const Value.absent(),
                Value<bool> pagoRealizado = const Value.absent(),
              }) => PedidosCompanion(
                id: id,
                idCliente: idCliente,
                nombreCliente: nombreCliente,
                imagen: imagen,
                sena: sena,
                fechaEntrega: fechaEntrega,
                fechaEncargo: fechaEncargo,
                pagoRealizado: pagoRealizado,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int idCliente,
                required String nombreCliente,
                required String imagen,
                required double sena,
                required DateTime fechaEntrega,
                required DateTime fechaEncargo,
                required bool pagoRealizado,
              }) => PedidosCompanion.insert(
                id: id,
                idCliente: idCliente,
                nombreCliente: nombreCliente,
                imagen: imagen,
                sena: sena,
                fechaEntrega: fechaEntrega,
                fechaEncargo: fechaEncargo,
                pagoRealizado: pagoRealizado,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PedidosTable, Pedido>(table),
                  $$PedidosTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({idCliente = false, itemsPedidoRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (itemsPedidoRefs) db.itemsPedido,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (idCliente) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.idCliente,
                            referencedTable: $$PedidosTableReferences
                                ._idClienteTable(db),
                            referencedColumn: $$PedidosTableReferences
                                ._idClienteTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (itemsPedidoRefs)
                        await $_getPrefetchedDataByColumns<
                          Pedido,
                          $PedidosTable,
                          ItemsPedidoData,
                          $ItemsPedidoTable
                        >(
                          currentTable: table,
                          referencedTable: $$PedidosTableReferences
                              ._itemsPedidoRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PedidosTableReferences(
                                db,
                                table,
                                p0,
                              ).itemsPedidoRefs,
                          currentColumn: 'id',
                          referencedColumn: 'id_pedido',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$PedidosTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PedidosTable,
      Pedido,
      $$PedidosTableFilterComposer,
      $$PedidosTableOrderingComposer,
      $$PedidosTableAnnotationComposer,
      $$PedidosTableCreateCompanionBuilder,
      $$PedidosTableUpdateCompanionBuilder,
      (Pedido, $$PedidosTableReferences),
      Pedido,
      PrefetchHooks Function({bool idCliente, bool itemsPedidoRefs})
    >;
typedef $$ItemsPedidoTableCreateCompanionBuilder =
    ItemsPedidoCompanion Function({
      Value<int> id,
      required int idPedido,
      required int idProducto,
      required String nombreProducto,
      required double precioUnitario,
      required int cantidad,
    });
typedef $$ItemsPedidoTableUpdateCompanionBuilder =
    ItemsPedidoCompanion Function({
      Value<int> id,
      Value<int> idPedido,
      Value<int> idProducto,
      Value<String> nombreProducto,
      Value<double> precioUnitario,
      Value<int> cantidad,
    });

final class $$ItemsPedidoTableReferences
    extends BaseReferences<_$AppDatabase, $ItemsPedidoTable, ItemsPedidoData> {
  $$ItemsPedidoTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PedidosTable _idPedidoTable(_$AppDatabase db) =>
      db.pedidos.createAlias('items_pedido__id_pedido__pedidos__id');

  $$PedidosTableProcessedTableManager get idPedido {
    final $_column = $_itemColumn<int>('id_pedido')!;

    final manager = $$PedidosTableTableManager(
      $_db,
      $_db.pedidos,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_idPedidoTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $ProductosTable _idProductoTable(_$AppDatabase db) =>
      db.productos.createAlias('items_pedido__id_producto__productos__id');

  $$ProductosTableProcessedTableManager get idProducto {
    final $_column = $_itemColumn<int>('id_producto')!;

    final manager = $$ProductosTableTableManager(
      $_db,
      $_db.productos,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_idProductoTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ItemsPedidoTableFilterComposer
    extends Composer<_$AppDatabase, $ItemsPedidoTable> {
  $$ItemsPedidoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombreProducto => $composableBuilder(
    column: $table.nombreProducto,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get precioUnitario => $composableBuilder(
    column: $table.precioUnitario,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get cantidad => $composableBuilder(
    column: $table.cantidad,
    builder: (column) => ColumnFilters(column),
  );

  $$PedidosTableFilterComposer get idPedido {
    final $$PedidosTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idPedido,
      referencedTable: $db.pedidos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PedidosTableFilterComposer(
            $db: $db,
            $table: $db.pedidos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProductosTableFilterComposer get idProducto {
    final $$ProductosTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idProducto,
      referencedTable: $db.productos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductosTableFilterComposer(
            $db: $db,
            $table: $db.productos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ItemsPedidoTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemsPedidoTable> {
  $$ItemsPedidoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombreProducto => $composableBuilder(
    column: $table.nombreProducto,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get precioUnitario => $composableBuilder(
    column: $table.precioUnitario,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get cantidad => $composableBuilder(
    column: $table.cantidad,
    builder: (column) => ColumnOrderings(column),
  );

  $$PedidosTableOrderingComposer get idPedido {
    final $$PedidosTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idPedido,
      referencedTable: $db.pedidos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PedidosTableOrderingComposer(
            $db: $db,
            $table: $db.pedidos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProductosTableOrderingComposer get idProducto {
    final $$ProductosTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idProducto,
      referencedTable: $db.productos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductosTableOrderingComposer(
            $db: $db,
            $table: $db.productos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ItemsPedidoTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemsPedidoTable> {
  $$ItemsPedidoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nombreProducto => $composableBuilder(
    column: $table.nombreProducto,
    builder: (column) => column,
  );

  GeneratedColumn<double> get precioUnitario => $composableBuilder(
    column: $table.precioUnitario,
    builder: (column) => column,
  );

  GeneratedColumn<int> get cantidad =>
      $composableBuilder(column: $table.cantidad, builder: (column) => column);

  $$PedidosTableAnnotationComposer get idPedido {
    final $$PedidosTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idPedido,
      referencedTable: $db.pedidos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PedidosTableAnnotationComposer(
            $db: $db,
            $table: $db.pedidos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProductosTableAnnotationComposer get idProducto {
    final $$ProductosTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idProducto,
      referencedTable: $db.productos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductosTableAnnotationComposer(
            $db: $db,
            $table: $db.productos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ItemsPedidoTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ItemsPedidoTable,
          ItemsPedidoData,
          $$ItemsPedidoTableFilterComposer,
          $$ItemsPedidoTableOrderingComposer,
          $$ItemsPedidoTableAnnotationComposer,
          $$ItemsPedidoTableCreateCompanionBuilder,
          $$ItemsPedidoTableUpdateCompanionBuilder,
          (ItemsPedidoData, $$ItemsPedidoTableReferences),
          ItemsPedidoData,
          PrefetchHooks Function({bool idPedido, bool idProducto})
        > {
  $$ItemsPedidoTableTableManager(_$AppDatabase db, $ItemsPedidoTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemsPedidoTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemsPedidoTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemsPedidoTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> idPedido = const Value.absent(),
                Value<int> idProducto = const Value.absent(),
                Value<String> nombreProducto = const Value.absent(),
                Value<double> precioUnitario = const Value.absent(),
                Value<int> cantidad = const Value.absent(),
              }) => ItemsPedidoCompanion(
                id: id,
                idPedido: idPedido,
                idProducto: idProducto,
                nombreProducto: nombreProducto,
                precioUnitario: precioUnitario,
                cantidad: cantidad,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int idPedido,
                required int idProducto,
                required String nombreProducto,
                required double precioUnitario,
                required int cantidad,
              }) => ItemsPedidoCompanion.insert(
                id: id,
                idPedido: idPedido,
                idProducto: idProducto,
                nombreProducto: nombreProducto,
                precioUnitario: precioUnitario,
                cantidad: cantidad,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ItemsPedidoTable, ItemsPedidoData>(table),
                  $$ItemsPedidoTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({idPedido = false, idProducto = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (idPedido) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.idPedido,
                        referencedTable: $$ItemsPedidoTableReferences
                            ._idPedidoTable(db),
                        referencedColumn: $$ItemsPedidoTableReferences
                            ._idPedidoTable(db)
                            .id,
                      ) as T;
                    }
                    if (idProducto) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.idProducto,
                        referencedTable: $$ItemsPedidoTableReferences
                            ._idProductoTable(db),
                        referencedColumn: $$ItemsPedidoTableReferences
                            ._idProductoTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ItemsPedidoTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ItemsPedidoTable,
      ItemsPedidoData,
      $$ItemsPedidoTableFilterComposer,
      $$ItemsPedidoTableOrderingComposer,
      $$ItemsPedidoTableAnnotationComposer,
      $$ItemsPedidoTableCreateCompanionBuilder,
      $$ItemsPedidoTableUpdateCompanionBuilder,
      (ItemsPedidoData, $$ItemsPedidoTableReferences),
      ItemsPedidoData,
      PrefetchHooks Function({bool idPedido, bool idProducto})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProductosTableTableManager get productos =>
      $$ProductosTableTableManager(_db, _db.productos);
  $$ClientesTableTableManager get clientes =>
      $$ClientesTableTableManager(_db, _db.clientes);
  $$PedidosTableTableManager get pedidos =>
      $$PedidosTableTableManager(_db, _db.pedidos);
  $$ItemsPedidoTableTableManager get itemsPedido =>
      $$ItemsPedidoTableTableManager(_db, _db.itemsPedido);
}
