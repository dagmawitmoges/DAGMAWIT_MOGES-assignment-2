import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dental clinic',
      home: const MyHomePage(title: 'logo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Color(0xFFFFC107),
          child: Column(children: <Widget>[
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(61, 25, 0, 0),
                  child: Row(
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/bg.jpg'),
                        height: 550,
                        width: 400,
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(5, 50, 300, 0),
                    child: Text(
                      'DENTAL  ',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      selectionColor: Colors.grey,
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(25, 100, 300, 0),
                    child: Text(
                      'CLINIC ',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      selectionColor: Colors.grey,
                    )),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 80, 300, 0),
              child: Text(
                'YOUR SMILE.',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
                selectionColor: Colors.grey,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 300, 0),
              child: Text(
                'OUR PASSION.',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
                selectionColor: Colors.grey,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 300, 0),
              child: Text(
                'YOUR LIFE .',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
                selectionColor: Colors.grey,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 300, 0),
              child: TextButton(
                onPressed: () {},
                child: Text('Book Now'),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    primary: Colors.white,
                    fixedSize: const Size(200, 10)),
              ),
            )
          ]),
        ));
  }
}
