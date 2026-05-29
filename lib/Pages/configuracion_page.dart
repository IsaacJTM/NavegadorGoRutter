import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfiguracionPage extends StatefulWidget {
  const ConfiguracionPage({super.key});

  @override
  State<ConfiguracionPage> createState() => _ConfiguracionPageState();
}

class _ConfiguracionPageState extends State<ConfiguracionPage> {
  bool _estaEncedido = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Navicury"),
        backgroundColor: Color.fromARGB(255, 1, 69, 128),
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
        IconButton(onPressed: (){
           context.go("/second");
          }, icon: Icon(Icons.arrow_back)
        )
      ]
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(vertical: 30, horizontal: 25),
        child: Column(
          children: [
            _textLine("Fabricante:", "Refrigeradora"),
            _textLine("Modelo:", "TP-KINT"),
            _textLine("MAC:", "30:40:fc:30:PT:40"),
            SizedBox(height: 50,),
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      _estaEncedido = !_estaEncedido;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _estaEncedido ? const Color.fromARGB(255, 1, 69, 128) : Colors.white,
                  ), 
                  child: Text(_estaEncedido ? 'Apagar': 'Encender', 
                  style: TextStyle(
                      color:_estaEncedido ? Colors.white : const Color.fromARGB(255, 1, 69, 128), // Texto azul
                      fontSize: 16,
                      fontWeight: FontWeight.bold,)
                  )
                ),
              ),
            )
          ],
        ),
      ),
        
    );
  }
}

Widget _textLine(String text1, String text2){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: TextStyle(fontSize: 16),
        ),
        Text(
          text2,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}