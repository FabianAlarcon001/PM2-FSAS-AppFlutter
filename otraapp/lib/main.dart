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
          title: Column(
            children: [
                Text(
                'AppCounter',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Icon(
                  Icons.pin,
                  size: 30
                ,),
                SizedBox(height: 1),
            ],
          ),
          centerTitle: true,
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
                color: Color.fromARGB(255, 226, 227, 227),
                  child: Column(
                    children: [
                      Text(
                        '$counter1',
                        style: TextStyle(
                        fontSize: 40,
                        color: Colors.deepOrange // Tamaño de fuente deseado
                        ),
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                counter1++;
                              });
                            },
                            child: Text("Click para aumentar!!"),
                          )
                        ],
                      )
                    ],
                ),
                ),
                Card(
                color: Color.fromARGB(255, 226, 227, 227),
                  child: Column(
                    children: [
                      Text(
                        '$counter2',
                        style: TextStyle(
                        fontSize: 40, 
                        color: Colors.deepOrange// Tamaño de fuente deseado
                        ),
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                counter2 += 2;
                              });
                            },
                            child: Text("Click para aumentar!!"),
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
                color: Color.fromARGB(255, 226, 227, 227),
                  child: Column(
                    children: [
                      Text(
                        '$counter3',
                        style: TextStyle(
                        fontSize: 40,
                        color: Colors.deepOrange // Tamaño de fuente deseado
                        ),
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                counter3 += 3;
                              });
                            },
                            child: Text("Click para aumentar!!")
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Card(
                color: Color.fromARGB(255, 226, 227, 227),
                  child: Column(
                    children: [
                      Text(
                        '$counter5',
                        style: TextStyle(
                        fontSize: 40,
                        color: Colors.deepOrange// Tamaño de fuente deseado
                        ),
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                counter5 += 5;
                              });
                            },
                            child: Text("Click para aumentar!!"),
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
          child:
          Icon(
          Icons.replay,
          color: Colors.white,
          size: 40,
          ),
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
          child: cons
}*/
