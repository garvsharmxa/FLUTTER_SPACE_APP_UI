import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final garv = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(18.0),
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/efg.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(40.0),
      child: Text(
        "Welcome to Space",
        style: TextStyle(fontSize: 30.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(10.0),
      child: Text(
      "In astronomy and cosmology, space is the vast 3-dimensional region that begins where the earth's atmosphere ends. Space is usually thought to begin at the lowest altitude at which satellites can maintain orbits for a reasonable time without falling into the atmosphere.",
        style: TextStyle(fontSize: 18.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.black54]
        ),
      ),
      child: Column(children: [
        welcome , garv, lorem
      ],),
    );

    return Scaffold(
      body: body,
    );
  }
}
