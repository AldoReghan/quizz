import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizz/widgets/card_item.dart';

class UjianKelasSatu extends StatefulWidget {
  const UjianKelasSatu({super.key});

  @override
  State<UjianKelasSatu> createState() => _UjianKelasSatuState();
}

class _UjianKelasSatuState extends State<UjianKelasSatu> {

  TextEditingController jawabanController = TextEditingController();

  formCheck(int jawaban){
    if (jawaban == 1){
      AwesomeDialog(
        context: context,
        animType: AnimType.leftSlide,
        headerAnimationLoop: false,
        dialogType: DialogType.success,
        showCloseIcon: true,
        title: 'Succes',
        desc:
            'Wow Kamu Hebat',
        btnOkOnPress: () {
          debugPrint('OnClcik');
        },
        btnOkIcon: Icons.check_circle,
        onDismissCallback: (type) {
          debugPrint('Dialog Dissmiss from callback $type');
        },
      ).show();
    }else{
      AwesomeDialog(
        context: context,
        animType: AnimType.leftSlide,
        headerAnimationLoop: false,
        dialogType: DialogType.error,
        showCloseIcon: true,
        title: 'Salah',
        desc:
            'Jawaban kamu salah nih, coba lagi ya..',
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kelas 1"),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
            const CardItem(title: "Satu", color: Colors.blue),
            const SizedBox(height: 10),
            Container(
              width: 200,
              child: TextFormField(
                controller: jawabanController,
                decoration: const InputDecoration(labelText: "Inputkan jawaban"),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: 250,
              child: AnimatedButton(
                  text: 'Submit',
                  color: Colors.green,
                  pressEvent: () {
                    formCheck(int.parse(jawabanController.text));
                  },
                ),
            ),
          ],
        ),
      ),
    );
  }
}