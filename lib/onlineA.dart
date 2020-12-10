import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:file_picker/file_picker.dart';
import 'package:characters/characters.dart';

class OnlineAudios extends StatefulWidget {
  @override
  _OnlineAudiosState createState() => _OnlineAudiosState();
}

class _OnlineAudiosState extends State<OnlineAudios> {
  AudioPlayer advancedPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache();
  play() async {
    int result = await advancedPlayer
        .play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
    if (result == 1) {
      // success
    }
  }

  pause() async {
    int result = await advancedPlayer.pause();
    if (result == 1) {
      //success
    }
  }

  stop() async {
    int result = await advancedPlayer.stop();
    if (result == 1) {
      //success
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Online song '),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://www.scdn.co/i/_global/twitter_card-default.jpg'),
                    fit: BoxFit.cover,
                  ),
                  //color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(180),
                  border: Border.all(
                    width: 2,
                    //  color: AppColors.mainColor,
                  ),
                  boxShadow: [
                    BoxShadow(
                      //   color: AppColors.lightBlueShadow,
                      blurRadius: 10,
                      offset: Offset(5, 5),
                      spreadRadius: 3,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 5,
                      offset: Offset(-5, -5),
                      spreadRadius: 3,
                    )
                  ],
                ),
                // margin: EdgeInsets.all(20),
                width: 200,
                height: 200,
                // color: Colors.blue,
                // child: Text('second'),
              ),
              Container(
                  // color: Colors.brown,
                  width: 850,
                  height: 300,
                  margin: const EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(16.0),
                  child: Column(children: [
                    Container(
                      width: 120,
                      height: 45,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Text('Play'),
                          color: Colors.grey,
                          textColor: Colors.black,
                          onPressed: () => play()),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 120,
                      height: 45,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Text('Pause'),
                          color: Colors.grey,
                          textColor: Colors.black,
                          onPressed: () => pause()
                          // {advancedPlayer.pause(), print('inside')},
                          ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 120,
                        height: 45,
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: Text('Stop'),
                            color: Colors.grey,
                            textColor: Colors.black,
                            onPressed: () => {stop()})),
                  ]))
            ]));
  }
}
