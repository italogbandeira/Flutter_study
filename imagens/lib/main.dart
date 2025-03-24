import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

void main() {
  runApp(PagamentoBoletosApp());
}

class PagamentoBoletosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PagamentoBoletosScreen(),
    );
  }
}

class PagamentoBoletosScreen extends StatefulWidget {
  @override
  _PagamentoBoletosScreenState createState() => _PagamentoBoletosScreenState();
}

class _PagamentoBoletosScreenState extends State<PagamentoBoletosScreen> {
  TextEditingController _codigoBoletoController = TextEditingController();

  Future<void> scanBarcode() async {
    String barcode = await FlutterBarcodeScanner.scanBarcode(
      "#ff6666", "Cancelar", true, ScanMode.BARCODE,
    );

    if (barcode != '-1') {
      setState(() {
        _codigoBoletoController.text = barcode;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagamentos"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pagamentos de boletos",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text("Insira o número do boleto:"),
            SizedBox(height: 10),
            TextField(
              controller: _codigoBoletoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Digite ou cole o código",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                suffixIcon: Icon(Icons.paste),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: scanBarcode,
              child: Row(
                children: [
                  Icon(Icons.camera_alt, color: Colors.orange),
                  SizedBox(width: 8),
                  Text(
                    "Ler código de barras",
                    style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: _codigoBoletoController.text.isNotEmpty ? () {} : null,
              child: Text("Avançar"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: _codigoBoletoController.text.isNotEmpty
                    ? Colors.orange
                    : Colors.grey[300],
                foregroundColor: Colors.white,
              ),
            ),
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
