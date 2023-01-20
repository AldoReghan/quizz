import 'package:flutter/material.dart';
import 'package:quizz/pages/ujian/ujian_kelas_dua.dart';
import 'package:quizz/pages/ujian/ujian_kelas_satu.dart';
import 'package:quizz/widgets/card_item.dart';

class UjianMenu extends StatefulWidget {
  const UjianMenu({super.key});

  @override
  State<UjianMenu> createState() => _UjianMenuState();
}

class _UjianMenuState extends State<UjianMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kelas Ujian"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector( onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const UjianKelasSatu())));
            }, child: const CardItem(title: "Kelas 1", color: Colors.blue,)),
            const SizedBox(height: 10,),
            GestureDetector( onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const UjianKelasDua())));
            }, child: const CardItem(title: "Kelas 2", color: Colors.blue,)),
            const SizedBox(height: 10,),
            GestureDetector( onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const UjianKelasSatu())));
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