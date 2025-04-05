import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';



class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxLines=1, this.onSaved});
final String hint;
final int maxLines;
final void Function(String?)? onSaved;  //to receive data from user
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
validator: (value){if(value?.isEmpty??true){return "field is required";}else{return null;}},
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
