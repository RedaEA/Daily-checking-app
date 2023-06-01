import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: CreatingTask(),
  ));
}

class CreatingTask extends StatefulWidget {
  const CreatingTask({Key? key}) : super(key: key);

  @override
  State<CreatingTask> createState() => _CreatingTaskState();
}

class _CreatingTaskState extends State<CreatingTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6B68FF),
      appBar: AppBar(
        title: Text("Vérification des tâches de la journée"),
        centerTitle: true,
        backgroundColor: Color(0xFF6B68FF),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 250.0,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[400], // Background color
                  ),
                  child: Text(
                    'Catégorie',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  )),
            ),
            // SizedBox(height: 0),
            TextButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFA9FFFA), // Background color
                ),
                child: Text(
                  'Titre de la tâche',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                )),
            SizedBox(height: 200.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    // Add your button onPressed logic here
                  },
                  icon: Icon(Icons.check),
                  color: Colors.blue,
                  iconSize: 50.0,
                ),
                IconButton(
                  onPressed: () {
                    // Add your button onPressed logic here
                  },
                  icon: Icon(Icons.close),
                  color: Colors.red,
                  iconSize: 50.0,
                )
              ],
            ),
            SizedBox(height: 10.0),
            Text(
                "Commentaires : ",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              maxLines: null, // Allows for multiple lines of text
              //style: TextStyle(fontSize: 20.0), // Increase the font size
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey,
                hintText: 'Write a comment...',
                hintStyle: TextStyle(
                  fontSize: 20.0, // Increase the font size
                  fontWeight: FontWeight.bold, // Make the text bold
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                // contentPadding: EdgeInsets.symmetric(vertical: 20.0),
              ),
              onChanged: (value) {
                // Handle the text input changes here
              },
            )
          ],
        ),
      ),
    );
  }
}
