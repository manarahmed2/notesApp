import 'package:flutter/material.dart';

import 'FormOfNotes.dart';
import 'customBottom.dart';
import 'customTextField.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 8),
      child: SingleChildScrollView(
        child: AddNoteForm()
      ),
    );
  }
}
