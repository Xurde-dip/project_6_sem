import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Developer"),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 90,
                  backgroundColor: Color.fromARGB(255, 151, 180, 182),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile-high.jpeg'),
                    radius: 80,
                  ),
                ),
                const Text(
                  'DIPESH BHANDARI',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'SOFTWARE DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15,
                    letterSpacing: 2.5,
                    color: Colors.blueAccent,
                  ),
                ),
                Container(
                  width: 200.0,
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  child: const Divider(
                    color: Colors.white,
                  ),
                ),
                const Card(
                  margin: EdgeInsets.symmetric(horizontal: 48.0, vertical: 8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    title: Text(
                      '9829322244',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const Card(
                  margin: EdgeInsets.symmetric(horizontal: 48.0, vertical: 8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    title: Text(
                      'chipmunk.py@gmail.com',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const Card(
                  margin: EdgeInsets.symmetric(horizontal: 48.0, vertical: 8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.location_city,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Urlabari,Morang',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
