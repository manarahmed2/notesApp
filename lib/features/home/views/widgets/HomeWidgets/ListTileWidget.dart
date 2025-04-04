import 'package:flutter/material.dart';



import '../../../../../core/utils/styles.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title:  Text(
          'Flutter tips',
          style: AppStyles.noteName
      ),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Text(
            'Build your app with manar ahmed',
            style: AppStyles.noteDesc
        ),
      ),
      trailing: const Icon(
      Icons.delete,
        color: Colors.black,
        size: 30,
      ),
    );
  }
}
