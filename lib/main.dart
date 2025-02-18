import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Álcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true, // Ativa o Material 3
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple, // Cor base para o esquema de cores
        ), // Esquema padrão baseado no azul
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue[900], // Azul mais forte para o AppBar
          foregroundColor: Colors.white, // Texto e ícones brancos no AppBar
        ),
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: ListView(
        children: [
          Text('teste'),
          Image.asset("assets/images/aog-white.png"),
          Text('teste'),
        ],
      ),
    );
  }
}
