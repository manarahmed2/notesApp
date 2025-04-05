import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon, });
final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: IconButton(onPressed: (){}, icon: Icon(icon,size: 30,)),),
    );
  }
}
