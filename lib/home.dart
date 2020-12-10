import 'package:flutter/material.dart';

import 'package:media/video.dart';

class Homes extends StatefulWidget {
  @override
  _HomesState createState() => _HomesState();
}

class _HomesState extends State<Homes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio and Video'),
      ),
      body: Container(
        child: Center(
          child: Column(children: [
            SizedBox(
              height: 250,
            ),
            FlatButton(
                color: Colors.blue,
                onPressed: () => Navigator.pushNamed(context, '/audio'),
                child: Text('Audios'))

            // RaisedButton(
            //     onPressed: Navigator.pushNamed(context, '/video'),
            //     child: Text('Video'))
          ]

              // RaisedButton(onPressed: Navigator.pushNamed(context,'/video')
              // ),

              ),
        ),
      ),
    );
  }
}
