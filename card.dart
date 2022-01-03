import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Card(),
    ));

class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        title: Text(
          "ID CARD",
          style: TextStyle(
            fontSize: 30,
            color: Colors.blueGrey[500],
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey[800],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/img2.jpg'),
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 30.0,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Name",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
            Text("Petar Kovacevic",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 23)),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "kovacevic1304@gmail.com",
                  style: TextStyle(
                      color: Colors.grey, fontSize: 15, letterSpacing: 1),
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Text("Images:", style: TextStyle(color: Colors.grey, fontSize: 15)),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('assets/img1.jpg'),
                ),
                SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('assets/img1.jpg'),
                ),
                SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('assets/img1.jpg'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
