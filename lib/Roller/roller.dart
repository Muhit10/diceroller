import 'package:flutter/material.dart';
import 'dart:math';

var imageAsset = "assets/1.png";

class Roller extends StatefulWidget {
  Roller({super.key});

  @override
  State<Roller> createState() => _RollerState();
}

class _RollerState extends State<Roller> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageAsset,
        ),
        SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () {
            initState();
            setState(() {
              var randomeNumber = Random().nextInt(6) + 1;
              imageAsset = "assets/$randomeNumber.png";
            });
          },
          child: Container(
            height: 40,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.black),
                color: Colors.blue[100]),
            child: Center(
              child: Text(
                'de lara',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
