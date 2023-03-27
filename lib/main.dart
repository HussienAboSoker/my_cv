import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Text Field Demo',
      home: TextFieldDemo(),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  String enteredText = '';
  String text2 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text form filed'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              enteredText,
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 16.0),
            TextField(
              onChanged: (text) {
                setState(() {
                  enteredText = text;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Enter text here',
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              text2,
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              onChanged: (text) {
                setState(() {
                  text2 = text;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
