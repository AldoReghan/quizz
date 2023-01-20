import 'package:flutter/material.dart';

//create card item with title
class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.title, required this.color});

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 70,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(padding: const EdgeInsets.all(16), 
      child: Center(child: Text(title, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),),
    );
  }
}