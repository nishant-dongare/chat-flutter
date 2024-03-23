import 'package:flutter/material.dart';
import 'package:hike/layout.dart';
import 'package:hike/pages/login.dart';
import 'package:hike/providers/web_provider.dart';
import 'package:hike/theme.dart';
import 'package:hike/widgets/toggle_button.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => WebProvider())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DN',
      theme: theme,
      darkTheme: darkTheme,
      themeMode: context.watch<WebProvider>().getTheme
          ? ThemeMode.dark
          : ThemeMode.light,
      initialRoute: 'login',
      routes: {
        '/': (context) => const ResponsiveLayout(),
        'login': (context) => const Login(),
        'test': (context) => const ToggleButton(),
      },
    );
  }
}
