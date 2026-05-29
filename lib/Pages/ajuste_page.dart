import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AjustePage extends StatefulWidget {
  const AjustePage({super.key});

  @override
  State<AjustePage> createState() => _AjustePageState();
}

class _AjustePageState extends State<AjustePage> {
  double _valorLuz1 = 51.0;
  double _valorLuz2 = 51.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 1, 69, 128),
        foregroundColor: Colors.white,
        actions: [
        IconButton(onPressed: (){
           context.go("/second");
          }, icon: Icon(Icons.arrow_back)
        )
      ]),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ajuste",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),
            SizedBox(height: 25),
            _SliderBar("Luz", _valorLuz1, (nuevoValor){
              setState(() {
                _valorLuz1 = nuevoValor;
              });
            }),
            SizedBox(height: 25),
            _SliderBar("Luz", _valorLuz2, (nuevoValor){
              setState(() {
                _valorLuz2 = nuevoValor;
              });
            }),
          ],
        ),
      ),
    );
  }
}

Widget _SliderBar(String texto, double valor, ValueChanged<double> cambioValor){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(texto,
      style: TextStyle(fontSize: 14),
      ),
      Slider(
        value: valor, 
        min: 0.0,
        max: 100.0,
        activeColor: Color(0xFF04549C),
        inactiveColor: Color(0xFF04549C),
        thumbColor: Color(0xFF04549C),
        onChanged: cambioValor,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('0.0'),
          Text('${valor.toInt()}', 
          style: TextStyle(color: Color(0xFF04549C), fontWeight: FontWeight.bold, fontSize: 12),),
          Text('100.0'),
        ],
      )
      
    ],
  );
}