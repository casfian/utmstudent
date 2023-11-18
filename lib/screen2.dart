import 'package:flutter/material.dart';
import 'package:secondproject/student.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key, required this.passObj});

  final Student passObj;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen2'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(passObj.name),
            Text(passObj.email),
          ],
        ),
      ),
    );
  }
}
