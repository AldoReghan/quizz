import 'dart:math';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:quizz/widgets/card_item.dart';

class LatihanKelasSatu extends StatefulWidget {
  const LatihanKelasSatu({super.key});

  @override
  State<LatihanKelasSatu> createState() => _LatihanKelasSatuState();
}

class _LatihanKelasSatuState extends State<LatihanKelasSatu> {
  List title = [
    "satu",
    "dua",
    "tiga",
    "empat",
    "lima",
    "enam",
    "tujuh",
    "delapan",
    "sembilan",
    "nol",
  ];

  List images = [
    "assets/images/angka/1.png",
    "assets/images/angka/2.png",
    "assets/images/angka/3.png",
    "assets/images/angka/4.png",
    "assets/images/angka/5.png",
    "assets/images/angka/6.png",
    "assets/images/angka/7.png",
    "assets/images/angka/8.png",
    "assets/images/angka/9.png",
    "assets/images/angka/zero.png",
  ];

  int? position;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan Kelas 1"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const CardItem(title: "Angka Lima", color: Colors.blue),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: images.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      position = index;
                    });
                    if (position == 4) {
                      AwesomeDialog(
                        context: context,
                        animType: AnimType.leftSlide,
                        headerAnimationLoop: false,
                        dialogType: DialogType.success,
                        showCloseIcon: true,
                        title: 'Benar',
                        desc: 'Wow Kamu Hebat',
                        btnOkOnPress: () {
                          debugPrint('OnClcik');
                        },
                        btnOkIcon: Icons.check_circle,
                        onDismissCallback: (type) {
                          debugPrint('Dialog Dissmiss from callback $type');
                        },
                      ).show();
                    } else {
                      AwesomeDialog(
                        context: context,
                        animType: AnimType.leftSlide,
                        headerAnimationLoop: false,
                        dialogType: DialogType.error,
                        showCloseIcon: true,
                        title: 'Salah',
                        desc: 'Jawaban kamu salah nih, coba lagi ya..',
                        btnOkOnPress: () {
                          debugPrint('OnClcik');
                        },
                        btnOkIcon: Icons.cancel,
                        btnOkColor: Colors.red,
                        onDismissCallback: (type) {
                          debugPrint('Dialog Dissmiss from callback $type');
                        },
                      ).show();
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: position == index ? Colors.blue : Colors.grey,
                        width: 3,
                      ),
                    ),
                    child: Image.asset(images[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
