import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: "hari",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void kurang() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.fromLTRB(10, 20, 5, 7),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color(0xff454545).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(16)),
                  child: const Center(
                    child: Text(
                      maxLines: 2,
                      "Puspita AAAAAAAAAAAAAAAAAAAAAAS",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: const Color(0xff454545).withOpacity(0.5),
                      shape: BoxShape.circle),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 30,
          ),
          FloatingActionButton(
            onPressed: kurang,
            child: const Icon(Icons.minimize),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
