import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold( 
      appBar: AppBar(
        title: Text('Pagamentos'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => print('Voltar'),
          ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(23),
        child: Column(
        children: [
          Align(
            alignment:Alignment(-0.7, 0),
            child: Text('Pagamentos de \nboletos',style: TextStyle(fontSize: 35),),
          ),
          SizedBox(height:40),
          Align(
            alignment: Alignment(-0.7, 0),
            child: Text('Confira os dados do boleto',style: TextStyle(fontSize: 20),),
          ),
          Divider(),
          Align(
            alignment:Alignment(-1, 0),
            child: Text('Número do boleto:',style: TextStyle(fontSize: 17),),
          ),
           SizedBox(height:10),
          Align(
            alignment:Alignment(-0.8, 0),
            child: Text('2355 3770 7339 9829 6011 7774 7189 7099 7811 9726 0061 7101',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
           SizedBox(height:10),
          Align(
            alignment:Alignment(-1, 0),
            child: Text('Banco Destinatário:',style: TextStyle(fontSize: 17),),
          ),
           SizedBox(height:10),
          Align(
            alignment:Alignment(-1, 0),
            child: Text('Banco Lorem Ipsum',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height:10),
          Align(
            alignment:Alignment(-1, 0),
            child: Text('Nome do Beneficiário:',style: TextStyle(fontSize: 15),),
          ),
          SizedBox(height:10),
          Align(
            alignment:Alignment(-1, 0),
            child: Text('John Snow da Silva',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height:10),
          Align(
            alignment:Alignment(-1, 0),
            child: Text('CPF/CNPJ do Beneficiário:',style: TextStyle(fontSize: 15),),
          ),
          SizedBox(height:10),
          Align(
            alignment:Alignment(-1, 0),
            child: Text('01.234.567/0001-89',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height:10),
          Align(
            alignment:Alignment(-1, 0),
            child: Text('Data do vencimento:',style: TextStyle(fontSize: 15),),
          ),
          SizedBox(height:10),
          Align(
            alignment:Alignment(-1, 0),
            child: Text('02/05/2024',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height:10),
          Align(
            alignment:Alignment(-1, 0),
            child: Text('Data do pagamento:',style: TextStyle(fontSize: 15),),
          ),
          SizedBox(height:10),
          Align(
            alignment:Alignment(-1, 0),
            child: Text('02/05/2024',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height:10),
          Align(
            alignment:Alignment(-1, 0),
            child: Text('Valor do boleto:',style: TextStyle(fontSize: 15),),
          ),
          SizedBox(height:10),
          Align(
            alignment:Alignment(-1, 0),
            child: Text('R\$1.250,00 ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height:10),
          Divider(),
          SizedBox(height:10),
          ElevatedButton(onPressed:(){},
           child: Text('Continuar para pagamento',style: TextStyle(color: Colors.white),),
           style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            minimumSize: Size(double.infinity,50)
           ),
           )
        ],
      ),

    ),
    bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.help), label: "Ajuda"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
  ],),));
  }
}