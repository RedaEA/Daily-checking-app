import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6B68FF),
      appBar: AppBar(
        title: Text(
          "Daily checking app",
          style: TextStyle(fontSize: 30.0),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF6B68FF),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[400], // Background color
                ),
                child: Text(
                  'Gérer mes tâches',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                )),
            SizedBox(height: 10.0),
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[400], // Background color
                ),
                child: Text(
                  'Valider mes tâches',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                )),
            SizedBox(height: 10.0),
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[400], // Background color
                ),
                child: Text(
                  'Voir mes résultats',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                )),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
