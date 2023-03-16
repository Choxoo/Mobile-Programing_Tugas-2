import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 181, 1, 252)),
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Chxxco.'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          widget.title,
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 121, 121, 121),
              Color.fromARGB(255, 246, 247, 248)
            ],
          )),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 350,
              width: 350,
              margin: EdgeInsets.only(bottom: 40),
              decoration: BoxDecoration(
                boxShadow: List.empty(),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 222, 222, 223),
                  Color.fromARGB(255, 39, 39, 39)
                ]),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            const Text(
              'Chico Alifian Sri Sephinda S',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 13, 13, 14)),
            ),
            Text(
              '12070700027',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 7, 7, 7)),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        splashColor: Color.fromARGB(255, 56, 2, 252),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
