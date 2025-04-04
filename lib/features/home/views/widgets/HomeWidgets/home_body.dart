import 'package:flutter/material.dart';

import 'NotesListView.dart';

import '../../../../../core/utils/customAppBar.dart';
import 'noteItem.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [
        CustomAppBar(title: 'Notes', icon: Icons.search,),Expanded(child: NotesListView())
      ],),
    );
  }
}
