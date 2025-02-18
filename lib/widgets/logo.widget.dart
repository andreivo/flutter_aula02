import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 60),
        Image.asset(
          'assets/images/aog-white.png',
          height: 80,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Álcool ou Gasolina',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: 'Big Shoulders Display',
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
