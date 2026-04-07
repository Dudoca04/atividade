import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // TheDemo
      home: const MyHomePage(),
    ); 
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Aplicação exemplo'),
      ), 
      body: body(), 
    ); 
  }

 Container body() {
List<String> palavras = ["Pedro", "Maria", "João"];
    return Container(

margin: EdgeInsets.all(16),
child: ListView.builder(
itemCount: palavras.length,
itemBuilder: (context, index) {
return Text(
palavras [index],
style: const TextStyle(
fontSize: 30,
fontWeight: FontWeight.bold,
),
);
},
),
);
}
}