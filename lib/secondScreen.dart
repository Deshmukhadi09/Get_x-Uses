import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/home_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({ Key? key }) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("navigate and send data"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("You have successfully navigate to other screen",
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.w800),
              ),
              ),
              //geting data from homescreen.......................................................
              Padding(
              padding:const EdgeInsets.all(20.0),
              child: Text( Get.arguments.toString(),
              style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w800),
              ),
              ),
              TextButton( 
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  Get.offAll(const HomePage());
                }, 
                child: const Text(
                  "go back to homescreen",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ) ,
                )
          ],
        ),
        ),
    );
  }
}