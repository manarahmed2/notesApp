import 'package:flutter/material.dart';
import 'package:notes_app/features/home/presentations/views/widgets/HomeWidgets/AddNotes_BottomSheet.dart';
import 'package:notes_app/features/home/presentations/views/widgets/HomeWidgets/home_body.dart';



class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){
          showModalBottomSheet(
              
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              
              context: context, builder: (context){return AddNotesBottomSheet();});
        },child: Icon(Icons.add,),),
      body: HomeBody(),));
  }
}
