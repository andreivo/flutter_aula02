import 'package:aula02_combustivel/widgets/logo.widget.dart';
import 'package:aula02_combustivel/widgets/submit-form.dart';
import 'package:aula02_combustivel/widgets/success.widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController _gasCtrl = TextEditingController();
  final TextEditingController _alcCtrl = TextEditingController();
  var busy = false;
  var complete = false;
  var resultText = "Compensa utilizar álcool";
  Color color = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: AnimatedContainer(
          duration: Duration(
            milliseconds: 1200,
          ),
          color: color,
          child: ListView(
            children: [
              Logo(),
              complete
                  ? Success(
                      result: resultText,
                      reset: reset,
                    )
                  : SubmitForm(
                      alcCtrl: _alcCtrl,
                      gasCtrl: _gasCtrl,
                      busy: busy,
                      submitFunc: calculate,
                    ),
            ],
          )),
    );
  }

  Future calculate() async {
    double alc =
        double.parse(_alcCtrl.text.replaceAll(RegExp(r'[,.]'), '')) / 100;
    double gas =
        double.parse(_gasCtrl.text.replaceAll(RegExp(r'[,.]'), '')) / 100;
    double res = alc / gas;

    setState(() {
      color = Colors.deepPurpleAccent;
      complete = false;
      busy = true;
    });

    return Future.delayed(
      const Duration(seconds: 1),
      () => setState(() {
        if (res >= 0.7) {
          resultText = "Compensa utilizar Gasolina!";
        } else {
          resultText = "Compensa utilizar Álcool!";
        }

        complete = true;
        busy = false;
      }),
    );
  }

  reset() {
    setState(() {
      _alcCtrl.text = '';
      _gasCtrl.text = '';
      complete = false;
      busy = false;
      color = Theme.of(context).colorScheme.primary;
    });
  }
}
