import 'package:flutter/material.dart';
import 'package:hike/layout.dart';
import 'package:hike/providers/webprovider.dart';
import 'package:hike/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => WebProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
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
      home: const ResponsiveLayout(),
    );
  }
}
