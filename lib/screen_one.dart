import 'package:flutter/material.dart';
import 'package:navigation_routing/screen_two.dart';
import 'package:navigation_routing/utils/routes_name.dart';

class ScreenOne extends StatefulWidget {
  // static const String id = "screen_one";
  dynamic data;
  ScreenOne({super.key,required this.data});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    // final arguements = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen one"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.data['name'].toString()),
           const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RoutesName.screenTwo);
                /*  Navigator.pushNamed(context, ScreenTwo.id,arguments: {
                  "name": arguements['name'],
                  "age": 30
                });*/

                /* Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>const ScreenTwo())
                );*/
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  "Screen 2",
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
