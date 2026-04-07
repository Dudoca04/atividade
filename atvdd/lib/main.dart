import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Simples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _onPressed() {
    print("Botão clicado!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50], // COR DE FUNDO
      appBar: AppBar(
        title: const Text("App Simples"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Olá, Flutter!",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: _onPressed,
              child: const Text("Clique aqui"),
            ),
          ],
        ),
      ),
    );
  }
}