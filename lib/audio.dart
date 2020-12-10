import 'package:flutter/material.dart';

class Audios extends StatefulWidget {
  @override
  _AudiosState createState() => _AudiosState();
}

class _AudiosState extends State<Audios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio '),
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
                color: Colors.grey,
                child: Text(
                  '          Online           ',
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/onA');
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
                color: Colors.grey,
                child: Text(
                  '          Offline          ',
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/ofa');
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
