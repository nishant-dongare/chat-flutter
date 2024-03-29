import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hike/firebase_options.dart';
import 'package:hike/layout.dart';
import 'package:hike/pages/authentication.dart';
import 'package:hike/providers/auth_cubit.dart';
import 'package:hike/providers/chats_bloc/chats_bloc.dart';
import 'package:hike/providers/theme_cubit.dart';
import 'package:hike/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeCubit()),
        BlocProvider(create: (_) => AuthCubit()),
        BlocProvider(create: (_) => ChatScreenBloc()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: BlocProvider.of<ThemeCubit>(context),
      builder: (BuildContext context, bool theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'DN',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: theme ? ThemeMode.dark : ThemeMode.light,
          initialRoute: 'login',
          routes: {
            '/': (context) => const ResponsiveLayout(),
            'login': (context) => const Login(),
          },
        );
      },
    );
  }
}
