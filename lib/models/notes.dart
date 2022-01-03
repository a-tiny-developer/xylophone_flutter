import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Notes {
  static final List<_Note> notes = [
    _Note(color: Colors.deepPurple[50]!, name: 'note1.wav'),
    _Note(color: Colors.deepPurple[100]!, name: 'note2.wav'),
    _Note(color: Colors.deepPurple[200]!, name: 'note3.wav'),
    _Note(color: Colors.deepPurple[400]!, name: 'note4.wav'),
    const _Note(color: Colors.deepPurple, name: 'note5.wav'),
    _Note(color: Colors.deepPurple[700]!, name: 'note6.wav'),
    _Note(color: Colors.deepPurple[900]!, name: 'note7.wav'),
  ];

  static final soundBars = Notes.notes.map(
    (note) {
      return Expanded(
        child: SoundBar(
          color: note.color,
          noteName: note.name,
        ),
      );
    },
  ).toList();
}

class _Note {
  final Color color;
  final String name;

  const _Note({
    required this.color,
    required this.name,
  });
}
