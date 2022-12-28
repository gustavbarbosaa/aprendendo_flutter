import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 219, 219, 219),
        body: Padding(
          padding: const EdgeInsets.only(top: 67),
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset('./assets/images/logo.png'),
                const Padding(
                  padding: EdgeInsets.all(33),
                  child: Text(
                    'Bem-vindo ao Sophia',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        fontFamily: 'Poppins',
                        color: Color.fromARGB(255, 0, 34, 102)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
