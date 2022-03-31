import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Card(),
    ));

class Card extends StatefulWidget {
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[100],
      appBar: AppBar(
        title: Text('Count App'),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 5,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'COUNT',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            Divider(
              color: Colors.black,
              height: 60.0,
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                SizedBox(width: 10.0),
                Text(
                  'kovacevic1304@gmail.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            SizedBox(height: 300),
            Row(children: [
              Expanded(
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      level -= 1;
                    });
                  },
                  backgroundColor: Colors.redAccent,
                  child: Icon(Icons.remove),
                ),
              ),
              Expanded(
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      level = 0;
                    });
                  },
                  backgroundColor: Colors.grey,
                  focusColor: Colors.black,
                  hoverColor: Colors.black,
                  child: Icon(Icons.exposure_zero),
                ),
              ),
              Expanded(
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      level += 1;
                    });
                  },
                  backgroundColor: Colors.red,
                  child: Icon(Icons.add),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
