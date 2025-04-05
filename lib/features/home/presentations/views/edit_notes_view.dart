import 'package:flutter/material.dart';
import 'package:notes_app/features/home/presentations/views/widgets/HomeWidgets/EditNotesViewBody.dart';


class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: EditNotesViewBody(),
      ),
    );
  }
}
