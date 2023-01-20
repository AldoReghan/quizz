import 'package:flutter/material.dart';

class LatihanKelasDua extends StatefulWidget {
  const LatihanKelasDua({super.key});

  @override
  State<LatihanKelasDua> createState() => _LatihanKelasDuaState();
}

class _LatihanKelasDuaState extends State<LatihanKelasDua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Latihan Kelas 2"),),
    );
  }
}