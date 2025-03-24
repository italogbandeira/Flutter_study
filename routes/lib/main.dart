import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PagamentoBoletosScreen(),
    );
  }
}

class PagamentoBoletosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagamentos", style: TextStyle(color: Colors.black)),
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
            Text("Pagamentos de boletos", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text("Insira o número do boleto:"),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: "Digite ou cole o código",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                suffixIcon: Icon(Icons.paste),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Icon(Icons.camera_alt, color: Colors.orange),
                  SizedBox(width: 8),
                  Text("Ler código de barras", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade300,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text("Avançar", style: TextStyle(color: Colors.grey)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.help_outline), label: "Ajuda"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
        ],
      ),
    );
  }
}
