import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pagamentodeboleto(),
    );
  }
}

class Pagamentodeboleto extends StatelessWidget {
  const Pagamentodeboleto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagamentos', style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => print('Página inicial'),
        ),
      ),
      body: SingleChildScrollView( 
        padding: EdgeInsets.symmetric(),
        child: Column(
          children: [
            Text(
              'Pagamentos de boletos',
              style: TextStyle(fontSize: 35, height: 5),
            ),
            Align(
              alignment: Alignment(-0.7, 0),
              child: Text(
                'Confira o valor do boleto',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Align(
                alignment: Alignment(-0.8, 0),
                child: Text(
                  'Valor do boleto:',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                hintText: 'Digite o valor do boleto',
                suffixIcon: Icon(Icons.create),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(width: 0.8,color: Colors.black)
                ),
              ),
            ),
             SizedBox(height: 50),
            Container(
              height: 1.5,
              width: 360,
              color: Colors.black,
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Confirmar pagamento'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.help), label: "Ajuda"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
        ],
      ),
    );
  }
}
