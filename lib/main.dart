import 'package:flutter/material.dart';

class OperacoesMatematicas extends StatelessWidget {
  double number1 = 0.0;
  double number2 = 0.0;

  @override
  Widget build(BuildContext context) {
    TextField textNumber1 = TextField(
        decoration: InputDecoration(
          labelText: 'Primeiro número',
        ),
        keyboardType: TextInputType.number,
        onChanged: (value) {
          try {
            number1 = double.parse(value);
          } catch (ex) {
            number1 = 0.0;
          }
        });
    TextField textNumber2 = TextField(
        decoration: InputDecoration(
          labelText: 'Primeiro número',
        ),
        keyboardType: TextInputType.number,
        onChanged: (value) {
          try {
            number2 = double.parse(value);
          } catch (ex) {
            number2 = 0.0;
          }
        });

    RaisedButton calcButton = RaisedButton(
      child: Text('Calcular'),
      onPressed: () {
        double add = number1 + number2;
        double sub = number1 - number2;
        AlertDialog resultDialog = AlertDialog(
          content: Text('Resultados: soma = \$$add e subtração = \$$sub'),
        );

        showDialog(context: context, child: resultDialog);
      },
    );

    Container corpoDoApp = Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          textNumber1,
          textNumber2,
          calcButton,
        ],
      ),
    );

    AppBar barraTopoApp = AppBar(
      title: Text('Operações matemáticas'),
    );

    Scaffold scaffold = Scaffold(
      appBar: barraTopoApp,
      body: corpoDoApp,
    );

    return scaffold;
  }
}

void main() {
  runApp(
    MaterialApp(
      title: 'Minha calculadora',
      home: OperacoesMatematicas(),
    ),
   );
}
