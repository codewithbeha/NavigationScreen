import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({required this.screenTitle, super.key});

  final String screenTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen A"),
        centerTitle: true,
      ),
      body: Column(children: [
        Text(screenTitle),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Back"),
        )
      ]),
    );
  }
}
