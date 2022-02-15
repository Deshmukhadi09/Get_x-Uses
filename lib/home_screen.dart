import 'package:flutter/material.dart';
import 'package:get_x/secondScreen.dart';
import 'package:get_x/snackpage.dart';
import 'package:get/get.dart';
import 'getxobxpage.dart';
import 'state_man.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("get x packages"),
      ),
      body: Column(
        children: [
          GridView(
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.4),
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SnackPage()));
                },
                child: Container(
                  height: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: Colors.indigo[900],
                  padding: const EdgeInsets.all(20.0),
                  alignment: Alignment.center,
                  child: const Text(
                    "SnackBar,Dialog and Bottom Sheet",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  //this is long way to do navigate....................................................................
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()));

                  //solution with argument passing
                  Get.to(const SecondScreen(),arguments: "hellow from homescreen");
                },
                child: Container(
                  height: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: Colors.green[900],
                  padding: const EdgeInsets.all(20.0),
                  alignment: Alignment.center,
                  child: const Text(
                    "Navigation ! send data to other screen",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const GetBuilders());
                },
                child: Container(
                  height: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: Colors.deepOrange,
                  padding: const EdgeInsets.all(20.0),
                  alignment: Alignment.center,
                  child: const Text(
                    "State management ! get builder",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const GetxObx());
                },
                child: Container(
                  height: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: Colors.blueGrey,
                  padding: const EdgeInsets.all(20.0),
                  alignment: Alignment.center,
                  child: const Text(
                    "State management ! Getx and OBX",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}