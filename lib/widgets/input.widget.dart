import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/currency_input_formatter.dart';
import 'package:flutter_multi_formatter/formatters/formatter_utils.dart';

class Input extends StatelessWidget {
  var label = '';
  var ctrl = TextEditingController();

  Input({
    super.key,
    required this.label,
    required this.ctrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontFamily: 'Big Shoulders Display',
            ),
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: TextFormField(
            controller: ctrl,
            keyboardType: TextInputType.number,
            inputFormatters: [CurrencyInputFormatter()],
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '0.00',
              hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontFamily: 'Big Shoulders Display',
              ),
            ),
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontFamily: 'Big Shoulders Display',
            ),
          ),
        )
      ],
    );
  }
}
