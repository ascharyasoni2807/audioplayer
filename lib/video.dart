import 'package:flutter/material.dart';

class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Video'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              MaterialButton(
                splashColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(500)),
                height: 50,
                color: Color(0XFF92aeff),
                child: Text(
                  '          Online           ',
                  style: TextStyle(
                    color: Color(0XFF6f7e96),
                    letterSpacing: 2.0,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/onv');
                  // Navigate to second route when tapped.
                },
              ),
              SizedBox(
                height: 25,
              ),
              MaterialButton(
                splashColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(500)),
                height: 50,
                color: Color(0XFF92aeff),
                child: Text(
                  '          Offline          ',
                  style: TextStyle(
                    color: Color(0XFF6f7e96),
                    letterSpacing: 2.0,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/ofv');
                  // Navigate to second route when tapped.
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
