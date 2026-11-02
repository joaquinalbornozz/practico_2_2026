import 'package:flutter/material.dart';

import 'src/app.dart';

import 'package:provider/provider.dart';

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
  runApp(DimeelprecioApp());
}
