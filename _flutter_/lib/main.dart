import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:_flutter_/constants/colors.dart'; //CTRL +SPACE

void main() {
  runApp(const WidgetDetail());
}

//First click class name and then  CTRL +SHİFT+R then covert ...
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
          backgroundColor: Colors.blue,
          leading: const Text("Menü"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(value.toString()),
              Text(
                "Dtech Eğitim",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 10,
                    //    background: HexColor(backgroundColor),
                    color: HexColor(secondaryColor)),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {});
            value = value + 1;
          },
          child: const Text("+"),
        ),
      ),
    );
  }
}

//Terminal write "flutter pub add hexcolor"







// class Test extends StatefulWidget {
//   const Test({super.key});

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   int value = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(value.toString()),
//           ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   value = value + 1;
//                 });
//               },
//               child: const Text("Tıkla"))
//         ],
//       )),
//     ));
//   }
// }
