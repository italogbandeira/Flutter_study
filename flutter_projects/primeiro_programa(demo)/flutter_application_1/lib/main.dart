import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _nameState();
}

class _nameState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack App'),
        ),
        body: Stack(
          children: [
            Container(
              width: 100,
              height: 100,
              color:Colors.blue
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
