// ignore_for_file: public_member_api_docs

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DSThemeController>(
      create: (_) => DSThemeController(initialMode: DSThemeMode.light),
      child: Consumer<DSThemeController>(
        builder: (
          context,
          DSThemeController themeController,
          child,
        ) =>
            MaterialApp(
          title: 'Flutter Demo',
          themeMode: themeController.themeMode,
          theme: DSTheme.lightThemeData,
          darkTheme: DSTheme.darkThemeData,
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        ),
      ),
    );
  }
}
