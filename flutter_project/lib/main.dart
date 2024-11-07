import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatefulWidget {
  const WidgetDetail({super.key});

  @override
  State<WidgetDetail> createState() => _WidgetDetailState();
}

class _WidgetDetailState extends State<WidgetDetail> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.acmeTextTheme()),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget Detail"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          leading: const Text("Menu"),
        ),
        body: Container(
          margin: EdgeInsets.all(20.0),
          color: Colors.green,
          //  child: const Padding(
          // padding: const EdgeInsets.all(20.0),
          // padding: const EdgeInsets.only(left: 20.0, top: 10.0),

          //  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: const Text("Example"),
          //)
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              value = value + 1;
            });
          },
          child: const Text("+"),
        ),
      ),
    );
  }
}
