import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFF00b3ff),
      ),
      home: NewTask()));
}

class NewTask extends StatelessWidget {
  const NewTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Daily checking app',
              style: TextStyle(
                  fontSize: 30.0, // Taille de police
                  fontWeight: FontWeight.bold, // Gras
                  color: Colors.black,
                  fontFamily: 'Roboto'),
            ),
            DynamicText(),
            DynamicButton(),
          ],
        ),
      ),
    );
  }
}

class DynamicText extends StatefulWidget {
  const DynamicText({Key? key}) : super(key: key);

  @override
  State<DynamicText> createState() => _DynamicState();
}

class _DynamicState extends State<DynamicText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey, // Couleur de fond grise
        borderRadius:
            BorderRadius.circular(10.0), // Coins arrondis de rayon 10.0
      ),
      child: TextField(
        onChanged: (value) {
          // La fonction onChanged est appelée à chaque fois que le texte change
          print('Nouveau texte saisi : $value');
        },
        decoration: InputDecoration(
          labelText: 'Entrez votre texte', // Label du champ de texte
          hintText: 'Entrez le titre', // Placeholder du champ de texte
          contentPadding: EdgeInsets.symmetric(horizontal: 8.0), // Espacement vertical du contenu
        ),
      ),
    );
  }
}

class DynamicButton extends StatefulWidget {
  const DynamicButton({Key? key}) : super(key: key);

  @override
  State<DynamicButton> createState() => _DynamicButtonState();
}

class _DynamicButtonState extends State<DynamicButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Logique à exécuter lorsque le bouton est pressé
        print('Bouton Submit pressé');
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.green, // Couleur de fond du bouton
      ),
      child: Text('Submit'), // Texte à afficher à l'intérieur du bouton
    );
  }
}
