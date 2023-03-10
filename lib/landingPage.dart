import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: LandingPage(),
      ),
    );

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Container(color: Colors.red),
              Container(color: Colors.blue),
            ],
          )
        ],
      ),
    );
  }
}
