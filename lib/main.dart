import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/app.dart';
import 'src/database/database.dart';
import 'src/database/manejador_clientes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        Provider<AppDatabase>(
          create: (context) => AppDatabase(),
          dispose: (context, db) => db.close(),
        ),
        ProxyProvider<AppDatabase, ManejadorClientes>(
          update: (context, db, previous) => previous ?? ManejadorClientes(db),
        ),
      ],
      child: const DimeelprecioApp(),
    ),
  );
}
