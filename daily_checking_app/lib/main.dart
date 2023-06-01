import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: const Color(0xFF2196f3),
          canvasColor: const Color(0xFF00b3ff),
      ),
      home: Scaffold(
        body: Center(
          child: Stack(
            children: <Widget>[
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Daily checking app',
                      style: TextStyle(
                          fontSize: 30.0, // Taille de police
                          fontWeight: FontWeight.bold, // Gras
                          color: Colors.black, // Couleur du texteemente soulignement
                          fontFamily: 'Roboto'
                      ),
                    ),
                    MyHomePage(),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  child: Text(
                    '2023 - Reda Johnson',
                    style: TextStyle(
                      fontSize: 12.0, // Taille de police
                      fontWeight: FontWeight.bold, // Gras
                      color: Colors.black, // Couleur du texteemente soulignement
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeWidth: 4.0, // Épaisseur de la barre de chargement
      valueColor: AlwaysStoppedAnimation<Color>(Colors.green), // Couleur de la barre de chargement
    );
  }
}
