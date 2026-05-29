import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Navicury"), 
      backgroundColor: Color.fromARGB(255, 1, 69, 128),
      foregroundColor: Colors.white,
      centerTitle: true,
      actions: [
        IconButton(onPressed: (){
           context.go("/");
          }, icon: Icon(Icons.logout)
        )
      ],
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
                  _builCard(context,"A"),
                  _builCard(context,"B"),
                  _builCard(context,"C"),
                  _builCard(context,"D"),
                ],
              ),
            ),
            _builText("Equipos conectados"),
              Column(
                children: [
                  Row(
                    children: [
                      _builCardImage(context,"Tv. Carrito", Icons.tv),
                      _builCardImage(context,"Refrigeradora", Icons.refresh_outlined)
                    ],
                  ),
                  Row(
                    children: [
                      _builCardImage(context,"Puerta Sala", Icons.door_sliding_outlined),
                      _builCardImage(context,"Refrigeradora", Icons.car_crash_outlined)
                    ],
                  ),
                  Row(
                    children: [
                      _builCardImage(context,"Comedor", Icons.dinner_dining),
                      _builCardImage(context,"Cuartos", Icons.room_preferences_rounded)
                    ],
                  )
                ],
              ),
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

Widget _builCard(BuildContext context, String text){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: ElevatedButton(
      onPressed: (){
        context.go('/ajuste');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 3,
        padding: EdgeInsets.symmetric(horizontal: 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12)
        )
      ),
      child: Container(
        width: 110,
        height: 120,
        alignment: Alignment.center,
        child: Text(text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF04549C),
              fontSize: 50
            ),
          ),
      ),
    ),
  );
}

Widget _builCardImage(BuildContext context, data, IconData icon){
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 13),
    child: ElevatedButton(
      onPressed: (){
        context.go('/ConfiguracionPage');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 3,
        padding: EdgeInsets.symmetric(horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12)
        )
      ),
      child: Container(
        width: 115,
        height: 130,
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
    ),
  );
}