import 'package:colored_diet/app/app_module.dart';
import 'package:colored_diet/app/app_widget.dart';
import 'package:colored_diet/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(ModularApp(
    module: AppModule(),
    child: const AppWidget(),
  ));
}
