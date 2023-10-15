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

  int counter1 = 1;
  int counter2 = 2;
  int counter3 = 3;
  int counter5 = 5;

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
                Card(
                  child: Column(
                    children: [
                      Text('$counter1'),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                counter1++;
                              });
                            },
                            child: Text("Aumentar"),
                          )
                        ],
                      )
                    ],
                ),
                ),
                Card(
                  child: Column(
                    children: [
                      Text('$counter2'),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                counter2 += 2;
                              });
                            },
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  child: Column(
                    children: [
                      Text('$counter3'),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                counter3 += 3;
                              });
                            },
                            child: Text("Aumentar"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Text('$counter5'),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                counter5 += 5;
                              });
                            },
                            child: Text("Aumentar"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.reset_tv),
          onPressed: () {
              setState(() {
                counter1 = 1;
              });
              setState(() {
                counter2 = 2;
              });
              setState(() {
                counter3 = 3;
              });
              setState(() {
                counter5 = 5;
              });
            },
        ),
      ),
    );
  }
}

/*class CardExample extends StatelessWidget {
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
}*/
