import 'package:flutter/material.dart';

import 'app/injection.dart';
import 'presentation/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}