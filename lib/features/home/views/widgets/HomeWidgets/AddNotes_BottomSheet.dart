import 'package:flutter/material.dart';

import 'customBottom.dart';
import 'customTextField.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16,),
            CustomTextField(hint: "title",),
            const SizedBox(height: 16,),
            CustomTextField(hint: "content",maxLines: 5,),
            const SizedBox(height: 40,),
            CustomBottom()
          ],
        ),
      ),
    );
  }
}
