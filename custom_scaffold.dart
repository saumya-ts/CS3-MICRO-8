import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget child;

  const CustomScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/blood welcome.jpg"), // Update the path to your background image
            fit: BoxFit.cover,
          ),
        ),
        child: child,
      ),
    );
  }
}
