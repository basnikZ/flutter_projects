import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nothing Here"),
      ),
      body: Column(
        children: [
          Image.asset("images/einstein.png"),
          const SizedBox(height: 10),
          const Divider(color: Colors.black),
          Container(
            color: Colors.blue,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: const Text(
              "This is text widget",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: ButtonTheme(),
      ),
    );
  }
}
