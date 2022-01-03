import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import '../models/models.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

    static final _soundBars = Notes.notes.map(
    (note) {
      return Expanded(
        child: SoundBar(
          color: note.color,
          noteName: note.name,
        ),
      );
    },
  ).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Column(
              children: _soundBars,
            );
          } else {
            return Row(
              children: _soundBars,
            );
          }
        },
      ),
    );
  }
}
