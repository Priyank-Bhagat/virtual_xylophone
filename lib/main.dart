import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: XyloPhone(),
    ),
  );
}

class XyloPhone extends StatelessWidget {
  const XyloPhone({Key? key}) : super(key: key);

  void player(int noteNum) {
    AudioPlayer().play(AssetSource('note$noteNum.wav'));
  }

  Expanded buttonCall({Color? color, int soundNum = 1}) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: color,
        child: TextButton(
          onPressed: () {
            player(soundNum);
          },
          style: const ButtonStyle(
            enableFeedback: false,
          ),
          child: Text('Note $soundNum'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            buttonCall(color: Colors.red, soundNum: 1),
            buttonCall(color: Colors.orange, soundNum: 2),
            buttonCall(color: Colors.yellow, soundNum: 3),
            buttonCall(color: Colors.green, soundNum: 4),
            buttonCall(color: Colors.blueGrey, soundNum: 5),
            buttonCall(color: Colors.indigo, soundNum: 6),
            buttonCall(color: Colors.purple, soundNum: 7),
          ],
        ),
      ),
    );
  }
}
