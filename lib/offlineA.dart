import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class OfflineAudios extends StatefulWidget {
  @override
  _OfflineAudiosState createState() => _OfflineAudiosState();
}

class _OfflineAudiosState extends State<OfflineAudios> {
  Duration _duration = new Duration();
  Duration _position = new Duration();
  AudioPlayer advancedPlayer = AudioPlayer();
  AudioCache audioCache;
  bool isPlaying = false;
  bool seekDone;
  void initState() {
    super.initState();
    initPlayer();

    // ignore: deprecated_member_use
    advancedPlayer.seekCompleteHandler =
        (finished) => setState(() => seekDone = finished);
    super.initState();
  }

  void initPlayer() {
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);

    // ignore: deprecated_member_use
    advancedPlayer.durationHandler = (d) => setState(() {
          _duration = d;
        });

    // ignore: deprecated_member_use
    advancedPlayer.positionHandler = (p) => setState(() {
          _position = p;
        });
  }

  Future pause() async {
    return await advancedPlayer.pause();
  }

  // Widget slider() {
  //   return Container(
  //     // decoration: BoxDecoration(),
  //     padding: EdgeInsets.all(6.0),
  //     color: Colors.grey,
  //     width: double.infinity,

  //     child: Slider(
  //         activeColor: Colors.grey[600],
  //         inactiveColor: Colors.white,
  //         value: _position.inSeconds.toDouble(),
  //         min: 0.0,
  //         max: _duration.inSeconds.toDouble(),
  //         onChanged: (double value) {
  //           setState(() {
  //             seekToSecond(value.toInt());
  //             value = value;
  //           });
  //         }),
  //   );
  // }

  // void seekToSecond(int second) {
  //   Duration newDuration = Duration(seconds: second);

  //   advancedPlayer.seek(newDuration);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('offline song '),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i.pinimg.com/736x/43/3a/ff/433affb14a853dd95d217d8e86a7df46.jpg'),
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
                      onPressed: () => audioCache.play('KGF.mp3')),
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
                    onPressed: () => {advancedPlayer.pause(), print('inside')},
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
                      onPressed: () =>
                          {advancedPlayer.stop(), print('inside')}),
                ),
              ]),
            ),
          ],
        ));
  }
}
