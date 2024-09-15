import 'package:flutter/material.dart';

void main() {
  runApp(const Test());
}

class WidgetDetail extends StatelessWidget {
  const WidgetDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget Detail"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: const Center(
          child: Text("Hello Flutter"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Text("+"),
        ),
      ),
    );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value.toString()),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  value = value + 1;
                });
              },
              child: const Text("Click"),
            )
          ],
        )),
      ),
    );
  }
}
