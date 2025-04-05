import 'package:flutter/material.dart';

import 'customBottom.dart';
import 'customTextField.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}
String? title,subTitle;         //not final so make it statefulWidget
final GlobalKey<FormState> globalKey=GlobalKey();
AutovalidateMode autoValidateMode=AutovalidateMode.disabled;   //to validate the true form of any input or make sure the user enter inputs
class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          SizedBox(height: 16,),
          CustomTextField(hint: "title",onSaved: (value){title=value;},),
          const SizedBox(height: 16,),
          CustomTextField(hint: "content",maxLines: 5,onSaved: (value){subTitle=value;},),
          const SizedBox(height: 40,),
          CustomBottom(onTap: (){if (globalKey.currentState!.validate() ) //must validate data first


          {globalKey.currentState!.save();        //then save date after validate
          }else {
            autoValidateMode=AutovalidateMode.always;   // will always validate every data user enter automatically
          setState(() {

          });
          }},)
        ],
      ),
    );
  }
}
