import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final acard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16),
        child: CircleAvatar(
          radius: 72,
          backgroundColor: Colors.lightBlue,
          backgroundImage: AssetImage('Images/twitter.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8),
      child: Text(
        'welcome ACard',
        style: TextStyle(fontSize: 28, color: Colors.white),
      ),
    );
    
    final lorem = Padding(
      padding: EdgeInsets.all(8),
      child: Text('welcome to my application of flutter',
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(28),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.lightBlueAccent
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              acard,
              welcome,
              lorem
            ],
          ),
        ),
      ),
    );
  }
}
