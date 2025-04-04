import 'package:flutter/material.dart';
import 'package:notes_app/features/home/views/edit_notes_view.dart';


import '../../../../../core/utils/styles.dart';
import 'ListTileWidget.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.cardColor});
  final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){return EditNotesView();}));},
      child: Container(
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
           ListTileWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                '2025-03-21',
                style: AppStyles.noteDate
              ),
            )
          ],
        ),
      ),
    );
  }
}