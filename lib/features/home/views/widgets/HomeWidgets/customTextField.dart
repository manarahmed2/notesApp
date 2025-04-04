import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxLines=1});
final String hint;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
maxLines: maxLines,
cursorColor: AppStyles.primaryColor ,
      decoration: InputDecoration(

        hintText: hint,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder( const Color(0xff62FCD7))
      ),

    );
  }

  OutlineInputBorder buildBorder([color ]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color:color?? Colors.white)
      );
  }
}
