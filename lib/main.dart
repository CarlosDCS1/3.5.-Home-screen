import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        // Fondo de la pantalla
        Image.asset(
          "assets/images/background_image.jpg", // Ruta de la imagen de fondo
          fit: BoxFit.cover,
        ),
        // Contenido de la pantalla
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Texto de bienvenida
            Text(
              '¡Bienvenidos!',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            // Nombre de la aplicación
            Text(
              'TotalPelis',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
