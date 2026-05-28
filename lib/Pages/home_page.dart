import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/security.jpg"),
                    fit: BoxFit.cover,
                ),
            ),
            child: Column(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                    SizedBox(height: 280),
                    Text(
                        'Navicury',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontWeight: FontWeight.bold
                        ),
                    ),
                    SizedBox(height: 260),
                    IconButton(
                        onPressed: (){
                            context.go('/second');
                        },
                        icon: Icon(
                            Icons.fingerprint,
                            size: 90,
                            color: Colors.white,
                        ),
                    ),
                    Text(
                        "Presione la pantalla con su dedo",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                        ),
                    )
                ],
            ),
        )
    );
  }
}