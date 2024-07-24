import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_hemobridge/screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyA5oXIuWzlI4g8mo-5IjP5dtbi5DIKJ2GU", // paste your api key here
      appId: "1:945134141994:android:b400eccd75498fef087953", //paste your app id here
      messagingSenderId: "945134141994", //paste your messagingSenderId here
      projectId: "hemobridge", //paste your project id here
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}
