import 'package:flutter/material.dart';

import 'src/app.dart';

import 'package:provider/provider.dart';

import 'src/database/database.dart';
import 'src/database/manejador_productos.dart';

//Uso del multiprovider:
/* runApp(MultiProvider(
      providers: [
        Provider<AppDatabase>(
          create: (context) => AppDatabase(),
          dispose: (context, db) => db.close(),
        ),
        ProxyProvider<AppDatabase, ManjeadorCliente>(
          update: (context, db, previous) => previous ?? ManjeadorCliente(db),
        ),
      ],
      child: const DimeelprecioApp(),
    ),); */

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //runApp(DimeelprecioApp());

  // ✅ Inyección del provider para utilizar una misma instancia a la base de datos
  runApp(
    MultiProvider(
      providers: [
        // Instancia única de la base de datos compartida por toda la app:
        Provider<AppDatabase>(
          create: (context) => AppDatabase(),
          dispose: (context, db) => db.close(),
        ),
        // Inyección del manejador de productos conectado a la base compartida:
        ProxyProvider<AppDatabase, ManejadorProductos>(
          update: (context, db, previous) => previous ?? ManejadorProductos(db),
        ),
      ],
      child: const DimeelprecioApp(),
    ),
  );
}
