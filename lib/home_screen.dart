import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _controller;
  String _reversed = "";
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "type a string to reverse"),
            ),
            const SizedBox(height: 10.0),
            if (_reversed.isNotEmpty) ...[
              Text(
                _reversed,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 10.0),
            ],
            GestureDetector(
              onTap: (){
                if (_controller.text.isEmpty) return;
                setState(() {
                  _reversed = reverseString(_controller.text);
                });
              },
              child: const Text("Reverse"),
            )
          ],
        ),
      ),
    );
  }
}

String reverseString(String initial) {
  return initial.split('').reversed.join();
}