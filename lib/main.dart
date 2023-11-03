import 'dart:io';

import 'package:chat/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool needsWeb = Platform.isLinux | Platform.isWindows;
  await Firebase.initializeApp(
    options:  needsWeb
      ? DefaultFirebaseOptions.web
      : DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter chat app',
      initialRoute: 'LoginScreen',
      routes: {
        //  'LoginScreen': (context) => LoginScreen(),
        'RegisterScreen': (context) => const RegisterScreen(),
      },
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
