import 'package:aula02_combustivel/widgets/loading.button.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  var result = '';
  void Function()? reset;

  Success({
    super.key,
    required this.result,
    required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Container para dar um espaçamento entre o logo e os inputs
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(200),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 35,
              fontFamily: 'Big Shoulders Display',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          LoadingButton(
            busy: false,
            invert: true,
            func: reset,
            text: 'CALCULAR NOVAMENTE',
          ),
        ],
      ),
    );
  }
}
