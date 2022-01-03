import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: InkWell(
            onTap: () {
              player.play('note1.wav');
            },
            child: const Text(
              'PLAY',
              style: TextStyle(
                fontSize: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
