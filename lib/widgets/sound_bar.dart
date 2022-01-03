import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class SoundBar extends StatelessWidget {
  const SoundBar({
    Key? key,
    required this.color,
    required this.noteName,
  }) : super(key: key);

  final Color color;
  final String noteName;

  static final AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        player.play(noteName);
      },
      child: SizedBox(
        color: color,
      ),
    );
  }
}
