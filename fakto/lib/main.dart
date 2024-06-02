import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
  String resultText = ''; // Faktöriyel sonucunu saklamak için bir değişken

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('Faktöriyel Bulma'),
        ),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Bir sayı girin'),
              keyboardType: TextInputType.number,
              controller: _controller,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                fakto();
              },
              child: const Text("Hesapla"),
            ),
            SizedBox(height: 16.0),
            
            Text(
              resultText,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  void fakto() {
    String input = _controller.text;
    if (input.isEmpty) {
      return;
    }
    int number = int.parse(input);
    int sonuc = 1;
    for (int i = number; i >= 1; i--) {
      sonuc *= i;
    }
    setState(() {
      resultText = 'Faktöriyel: $sonuc';
    });
  }
}
