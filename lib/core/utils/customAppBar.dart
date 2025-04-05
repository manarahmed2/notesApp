import 'package:flutter/material.dart';

import '../../features/home/presentations/views/widgets/HomeWidgets/customSearchIcon.dart';




class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, });
final String title;
final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title,style:TextStyle(fontSize: 25,color: Colors.white),),CustomSearchIcon(icon: icon, )],
      ),
    );
  }
}
