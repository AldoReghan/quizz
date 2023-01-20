import 'package:flutter/material.dart';
import 'package:quizz/pages/latihan/latihan_menu.dart';
import 'package:quizz/pages/ujian/ujian_menu.dart';
import 'package:quizz/widgets/card_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector( onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const LatihanMenu())));
            }, child: const CardItem(title: "Latihan", color: Colors.blue,)),
            const SizedBox(height: 10,),
            GestureDetector( onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const UjianMenu())));
            }, child: const CardItem(title: "Ujian", color: Colors.blue,))
          ],
        ),
      )
    );
  }
}