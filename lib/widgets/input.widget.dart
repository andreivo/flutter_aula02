import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

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
            maxLength: 8,
            inputFormatters: [
              CurrencyInputFormatter(
                leadingSymbol: 'R\$ ', // Adiciona o símbolo do Real
                useSymbolPadding: true, // Espaço após o símbolo (opcional)
                thousandSeparator: ThousandSeparator.Period,
                mantissaLength: 2,
                maxTextLength: 5,
              ),
            ],
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'R\$ 0,00',
              hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontFamily: 'Big Shoulders Display',
              ),
              counterText: "",
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
