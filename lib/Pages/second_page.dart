import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Navicury"), 
      backgroundColor: Color.fromARGB(255, 1, 69, 128),
      foregroundColor: Colors.white,
      centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _builText("Espacios"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
              child: Row(
                children: [
                  _builCard("A"),
                  _builCard("B"),
                  _builCard("C"),
                  _builCard("D"),
                ],
              ),
            ),
            _builText("Equipos conectados"),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      _builCardImage("Tv. Carrito", Icons.tv),
                      _builCardImage("Refrigeradora", Icons.refresh_outlined)
                    ],
                  ),
                  Row(
                    children: [
                      _builCardImage("Tv. Carrito", Icons.tv),
                      _builCardImage("Refrigeradora", Icons.refresh_outlined)
                    ],
                  ),
                  Row(
                    children: [
                      _builCardImage("Tv. Carrito", Icons.tv),
                      _builCardImage("Refrigeradora", Icons.refresh_outlined)
                    ],
                  ),
                   Row(
                    children: [
                      _builCardImage("Tv. Carrito", Icons.tv),
                      _builCardImage("Refrigeradora", Icons.refresh_outlined)
                    ],
                  ),
                ],
              ),
            )

          ],
        ),
      )
    );
  }
}

Widget _builText(String texto){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: Text(texto,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                ),
              ),
  );
}

Widget _builCard(String text){
  return Container(
    width: 100,
    height: 100,
    margin: EdgeInsets.symmetric(horizontal: 12),
    decoration: BoxDecoration( 
      borderRadius: BorderRadius.circular(5),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          blurRadius: 6,
          offset: Offset(0, 3)
        )
      ]
    ),
    child: Center(
      child: Text(text,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xFF04549C),
          fontSize: 36
        ),
      ),
    ),
  );
}

Widget _builCardImage(String data, IconData icon){
  return Expanded(
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 6,
            offset: Offset(0, 3)
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,
          size: 50,
          color: Color(0xFF04549C),
          ),
          Text(
            data,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF04549C)
            ),
            )
        ],
      ),
    ),
  );
}