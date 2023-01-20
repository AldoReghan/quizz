import 'package:flutter/material.dart';
import 'package:quizz/pages/latihan/latihan_kelas_dua.dart';
import 'package:quizz/pages/latihan/latihan_kelas_satu.dart';
import 'package:quizz/widgets/card_item.dart';

class LatihanMenu extends StatefulWidget {
  const LatihanMenu({super.key});

  @override
  State<LatihanMenu> createState() => _LatihanMenuState();
}

class _LatihanMenuState extends State<LatihanMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kelas Latihan"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector( onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const LatihanKelasSatu())));
            }, child: const CardItem(title: "Kelas 1", color: Colors.blue,)),
            const SizedBox(height: 10,),
            GestureDetector( onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const LatihanKelasDua())));
            }, child: const CardItem(title: "Kelas 2", color: Colors.blue,)),
            const SizedBox(height: 10,),
            GestureDetector( onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const LatihanKelasSatu())));
            }, child: const CardItem(title: "Kelas 3", color: Colors.blue,)),
            const SizedBox(height: 20,),
            GestureDetector( onTap: (){
              Navigator.pop(context);
            }, child: const CardItem(title: "Kembali", color: Colors.red,)),
          ],
        ),
      )
    );
  }
}