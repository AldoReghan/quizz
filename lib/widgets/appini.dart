import 'package:flutter/material.dart';

class Homies extends StatefulWidget {
  const Homies({super.key});

  @override
  State<Homies> createState() => _HomiesState();
}

class _HomiesState extends State<Homies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homies'),
      ),
      body: Column(
        children: const [
          Text('Homies'),
        ],
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        FloatingActionButton(backgroundColor: Colors.red, onPressed: () {}, child: const Icon(Icons.close)),
        const SizedBox(width: 50,),
        FloatingActionButton(backgroundColor: Colors.green, onPressed: () {}, child: const Icon(Icons.check)),
      ],),
    );
  }
}