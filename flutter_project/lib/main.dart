import 'package:flutter/material.dart';
import 'package:flutter_project/constants/colors.dart';
import 'package:hexcolor/hexcolor.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget Detail"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(value.toString()),
              Text(
                "Flutter ",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 10,
                  backgroundColor: HexColor(backgroundColor),
                  color: HexColor(primaryColor),
                ),
              ),
            ],
          ),
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
