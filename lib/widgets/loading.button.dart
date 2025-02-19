import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  void Function()? func;
  String text = '';

  LoadingButton({
    super.key,
    required this.busy,
    required this.invert,
    required this.func,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            margin: const EdgeInsets.all(30),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: invert
                  ? Theme.of(context).colorScheme.primary
                  : Colors.white.withAlpha(200),
              borderRadius: BorderRadius.circular(60),
            ),
            child: TextButton(
              onPressed: func,
              child: Text(
                text,
                style: TextStyle(
                  color: invert
                      ? Colors.white
                      : Theme.of(context).colorScheme.primary,
                  fontSize: 25,
                  fontFamily: 'Big Shoulders Display',
                ),
              ),
            ),
          );
  }
}
