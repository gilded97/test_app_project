import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World App',
      home: Scaffold(
        appBar: AppBar(title: Text('TestAppProject')),
        body: Center(
          child: HelloWorldButton(),
        ),
      ),
    );
  }
}

class HelloWorldButton extends StatefulWidget {
  @override
  _HelloWorldButtonState createState() => _HelloWorldButtonState();
}

class _HelloWorldButtonState extends State<HelloWorldButton> {
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              message = 'Hello World';
            });
          },
          child: Text('Press Me'),
        ),
        SizedBox(height: 20),
        Text(message),
      ],
    );
  }
}