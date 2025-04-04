import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/features/home/views/widgets/HomeWidgets/customTextField.dart';

import '../../../../../core/utils/customAppBar.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        CustomAppBar(title: 'Edit Note', icon: Icons.check,),
        const SizedBox(height: 40,),
        CustomTextField(hint: "title"),
        const SizedBox(height: 20,),
        CustomTextField(hint: "content",maxLines: 5,)
      ],

    );
  }
}
