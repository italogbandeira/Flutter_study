import 'package:flutter/material.dart';


void main() {
  runApp(Myapp(nome: 'ítalo',));
}

class Myapp extends StatefulWidget {
  final String nome;
  const Myapp({super.key,required this.nome});

  @override
  State<Myapp> createState() => _nameState();
}

class _nameState extends State<Myapp> {
  int salario = 7000;
  
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: Scaffold( 
        appBar: AppBar(
          title: Text('Salário de Usuário'),
        ),
        body: Center( 
          child: GestureDetector(
            onTap: () {
              setState(() {
                salario = salario+1000;
              });
              print('Texto tocado! salario trocado!');
            },
            child: Text('O salario de ${widget.nome} é ${salario}'),
          ),
        ),
      ),
    );
  }
}