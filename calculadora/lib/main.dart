import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());

}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  String numero = '0';
  double primeiroNumero= 0.0;

  void calcular(String tecla){
    switch(tecla){
      case '1' : 
      case '2' : 
      case '3' : 
      case '4' : 
      case '5' : 
      case '6' : 
      case '7' : 
      case '8' : 
      case '9' : 
      case '0' : 
      setState(() {
  if (numero == '0') {
    numero = tecla;
    
  } else {
    numero += tecla;
  }
  numero = numero.replaceAll(',', '.');
});
  case '+':
    primeiroNumero = double.parse(numero);
    break;

case 'AC' : 
      setState(() {
        numero = '0';
      });
      break;


      default:
        numero += tecla;
        break;
    }
    
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Calculadora',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(numero,style: TextStyle(fontSize: 40),
                ),]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: ()=>calcular('AC'),
                  child: Text(
                    'AC',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                Text(''),
                Text(''),
                GestureDetector(
                  onTap: ()=>calcular('<x'),
                  child: Text(
                    '<x',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                  calcular('7');
                  },
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: ()=>calcular('8'),
                  child: Text(
                    '8',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: ()=>calcular('9'),
                  child: Text(
                    '9',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => calcular('/'),
                  child: Text(
                    '/',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: ()=>calcular('4'),
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: ()=>calcular('5'),
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: ()=>calcular('6'),
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => calcular('X'),
                  child: Text(
                    'X',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: ()=>calcular('1'),
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: ()=>calcular('2'),
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: ()=>calcular('3'),
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => calcular('-'),
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: ()=>calcular('0'),
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => calcular(','),
                  child: Text(
                    ',',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => calcular('='),
                  child: Text(
                    '=',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: ()=>calcular('+'),
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),
            Text('Coluna 6'),
          ],
        ),
      ),
    );
  }
}
