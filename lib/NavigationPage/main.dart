import 'package:flutter/material.dart';
import './screenA.dart';
import './screenB.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MainPage(),
    ),
  );
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  // print("Screen A");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) {
                        return const ScreenA();
                      },
                    ),
                  );
                },
                child: const Text("Screen A"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) {
                      return const ScreenB(screenTitle: "Hello Flutter!");
                    },
                  ));
                },
                child: const Text("Screen B"),
              )
            ],
          )
        ],
      ),
    );
  }
}
