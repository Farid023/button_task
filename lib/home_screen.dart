import 'package:button_task/button.dart';
import 'package:button_task/button_positions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Alignment alignment = Alignment.topLeft;

  int pos = 1;


  void changeAlignment() {


    if (alignment == positionTopLeft && pos ==1) {
      alignment = positionTopRight;
    } else if (alignment == positionTopRight && pos == 2) {
      alignment = positionBottomRight;
    } else if (alignment == positionBottomRight && pos == 3) {
      alignment = positionBottomLeft;
    } else if (alignment == positionBottomLeft && pos == 4) {
      alignment = positionTopLeft;
    } else if (alignment == positionTopLeft && pos == 5) {
      alignment = positionCenter;
    } else {

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        title: const Text("Button Task"),
      ),
      body: Container(
        color: Colors.blueAccent,
        alignment: alignment,
        child: Button(

          position: "position",
          onClick:pos>5?null: () {
           // changeAlignment();
            setState(() {
              changeAlignment();
              pos++;
            });
          },
        ),
      ),
    );
  }
}
