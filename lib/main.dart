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
      theme: _appTheme,
      home: const MyHomePage(title: 'Flutter Demo Box Decoration'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final _appTheme = ThemeData(
  primarySwatch: Colors.amber,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 40,
      color: Colors.black,
    ),
  ),
);

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'BoxDecoration Example',
            ),
            Container(
              margin: const EdgeInsets.all(30.00),
              width: 350.00,
              height: 350.00,
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2023/01/10/16/23/hedgehog-7710053_960_720.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  width: 8,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// adding new