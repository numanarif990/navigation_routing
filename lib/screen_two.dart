import 'package:flutter/material.dart';
class ScreenTwo extends StatefulWidget {
  // static const String id = "screen_two";
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    // final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Two"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(arguments['name'].toString()),
           const SizedBox(height: 20,),
            InkWell(
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                      "Screen 1",
                      style: TextStyle(fontSize: 28, color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
