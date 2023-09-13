import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mal3aby/view/club.dart';

import 'package:mal3aby/view/login.dart';

import 'constants.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.light,
  seedColor: const Color(0xFF33BF4A),
  // background: const Color.fromARGB(255, 236, 243, 237),
);

final theme = ThemeData().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: colorScheme.background,
    colorScheme: colorScheme,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    ),
    iconTheme: const IconThemeData(
      color: primaryColor,
    ));

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Great Places',
      theme: theme,
      initialRoute: 'club',
      routes: {
        '/': (context) => Login(),
        'club': (context) => const Club(),
      },
    );
  }
}
