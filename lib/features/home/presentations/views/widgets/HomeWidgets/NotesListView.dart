import 'package:flutter/material.dart';

import 'noteItem.dart';


class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  final List<Color> colors = const [
    Colors.amberAccent,
    Colors.blue,
    Colors.green,
    Colors.orangeAccent,

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context,index){return NoteItem(cardColor: colors[index%colors.length],);}, separatorBuilder:(context,index) {return const SizedBox(height: 16,);}, itemCount: 5,);
  }
}
