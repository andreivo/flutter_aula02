import 'package:aula02_combustivel/widgets/input.widget.dart';
import 'package:aula02_combustivel/widgets/loading.button.dart';
import 'package:flutter/material.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = TextEditingController();
  var alcCtrl = TextEditingController();
  var busy = false;
  void Function()? submitFunc;

  SubmitForm({
    super.key,
    required this.gasCtrl,
    required this.alcCtrl,
    required this.busy,
    required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: 'Gasolina',
            ctrl: gasCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: 'Álcool',
            ctrl: alcCtrl,
          ),
        ),
        LoadingButton(
          busy: busy,
          invert: false,
          func: submitFunc,
          text: 'CALCULAR',
        ),
      ],
    );
  }
}
