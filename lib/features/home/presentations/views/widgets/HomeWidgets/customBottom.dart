import 'package:flutter/material.dart';
import 'package:notes_app/core/utils/styles.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(color: AppStyles.primaryColor,borderRadius: BorderRadius.circular(16),
        ),
        child: Center(child: Text("Add",style: TextStyle(fontSize: 20,color: Colors.black)),),
      ),
    );
  }
}
