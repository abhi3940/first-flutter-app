import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: AppCard(),
  ));
}

class AppCard extends StatefulWidget {
  @override
  _AppCardState createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {

  int yourLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Id Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton( // first FAB to perform decrement

              onPressed: () {
                setState(() {
                  yourLevel -= 1;
                });
              } ,
              child: Icon(Icons.remove)
            ),SizedBox(width: 20),
            FloatingActionButton( // second FAB to perform increment
              onPressed: () {
                setState(() {
                  yourLevel += 1;
                });
              } ,
              child: Icon(Icons.add),
            ),
          ],
        ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpeg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Abhi Savale',
              style: TextStyle(
                  color: Colors.lightBlueAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Current Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$yourLevel',
              style: TextStyle(
                  color: Colors.lightBlueAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'savaleabhijeet@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
