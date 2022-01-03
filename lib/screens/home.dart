import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import '../models/models.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: Notes.notes.map(
          (note) {
            return Expanded(
              child: SoundBar(
                color: note.color,
                noteName: note.name,
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
