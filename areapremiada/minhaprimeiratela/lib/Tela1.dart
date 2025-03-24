import 'package:flutter/material.dart';
import 'package:minhaprimeiratela/Tela2.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PagamentoBoletos(),
    );
  }
}

class PagamentoBoletos extends StatelessWidget {
  const PagamentoBoletos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pagamentos',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Pagamento de boletos',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text('Insira o numero do boleto'),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Digite ou cole o código',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  suffixIcon: Icon(Icons.paste)),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [Icon(Icons.camera_alt, color: Colors.cyan)],
              ),
            ),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Pagamentodeboleto()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  'Avançar',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.help), label: "Ajuda"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
        ],
      ),
    );
  }
}
