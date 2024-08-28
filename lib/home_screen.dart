import 'package:flutter/material.dart';
import 'package:navigation_routing/screen_one.dart';
import 'package:navigation_routing/utils/routes_name.dart';

class HomeScreen extends StatefulWidget {
  // static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: nameController,
              decoration:const InputDecoration(
                hintText: "Name"
              ),
            ),
           const SizedBox(height: 20,),
            InkWell(
              onTap: (){
              Navigator.pushNamed(context, RoutesName.screenOne,
              arguments: {
                "name": nameController.text.toString()
              }
              );

             /*   Navigator.pushNamed(context, ScreenOne.id,
                arguments: {
                  "name": nameController.text.toString(),
                  "age": 25
                });*/

              /*  Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>const ScreenOne())
                );*/
              },
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
