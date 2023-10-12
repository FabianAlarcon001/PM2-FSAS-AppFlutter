import 'package:flutter/material.dart';

void main() {
  runApp (CardExampleApp());
}

class CardExampleApp extends StatefulWidget {
  CardExampleApp({super.key});

  @override
  State<CardExampleApp> createState() => _MyAppCounter();
}

class _MyAppCounter extends State<CardExampleApp> {

  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contadores'),
          elevation: 10,
        ),
        body: Center(
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Row (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Card(
                  child: Column(
                    children: [
                      Text("1"),
                      Row(
                        children: [
                          TextButton(
                            onPressed: null,
                            child: Text("Aumentar"),
                          )
                        ],
                      )
                    ],
                ),
                ),
                const Card(
                  child: Column(
                    children: [
                      Text("2"),
                      Row(
                        children: [
                          TextButton(
                            onPressed: null,
                            child: Text("Aumentar"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                debugPrint('Card tapped.');
              },
              child: const SizedBox(
              width: 300,
              height: 100,
              child: Text('Aumentar'),
            ),
            ),
            ),
            Card(
              clipBehavior: Clip.hardEdge,
              color: Colors.red,
              child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                debugPrint('Card tapped.');
              },
              child: const SizedBox(
              width: 300,
              height: 100,
              child: Text('Aumentar'),
            ),
            ),
            ),
            ],
            )
            ] 
            ),
          ),
        ),
      );
  }
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Text('Aumentar'),
          ),
        ),
      ),
    );
  }
}
