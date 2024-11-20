import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Learning Flutter'),
            backgroundColor: Colors.blue,
          ),
          body: Builder(
            builder: (context) => IconButton(
              icon: Hero(
                tag: "assets/images/loutre.png",
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset("assets/images/loutre.png"),
                ),
              ),
              iconSize: 10,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ),
                );
              },
            ),
          )),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("About"),
        ),
        body: Hero(tag: "assets/images/loutre.png", child: Image.asset("assets/images/loutre.png")));
  }
}
