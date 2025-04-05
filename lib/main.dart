import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'features/home/presentations/views/home_view.dart';


void main() async{
  await Hive.initFlutter();
  await Hive.openBox("notes_box");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomeView(),
      theme: ThemeData(
        brightness: Brightness.dark,
        //textTheme: GoogleFonts.poppinsTextTheme(),
      ),
    );
  }
}