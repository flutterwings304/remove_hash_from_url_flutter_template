import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remove Hash From Url Flutter Template',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
        ),
      ),
      initialRoute: "/",
      onGenerateRoute: RouterClass.getRoute,
    );
  }
}
