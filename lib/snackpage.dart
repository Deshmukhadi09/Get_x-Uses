import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackPage extends StatefulWidget {
  const SnackPage({Key? key}) : super(key: key);

  @override
  _SnackPageState createState() => _SnackPageState();
}

class _SnackPageState extends State<SnackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar, Dialog and Bottom Sheet"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            MaterialButton(
              minWidth: double.maxFinite,
              color: Colors.green[500],
              onPressed: () {
                //this is main part .......................................................................
                Get.snackbar("Great Snakbar", "Snakcbar is done in one line",
                    snackPosition: SnackPosition.BOTTOM,
                    colorText: Colors.white,
                    backgroundColor: Colors.black);
              },
              child: const Text(
                "Show SnackBar",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
             MaterialButton(
              minWidth: double.maxFinite,
              color: Colors.green[500],
              onPressed: () {
                //this is main part ..................................................................
                Get.defaultDialog(title: "this is Dilog", content: Column(
                  children: const [
                    Text("this is a widget"),
                    Text("this is anothe widget")
                ],));               
              },
              child: const Text(
                "Show DialogBox",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            MaterialButton(
              minWidth: double.maxFinite,
              color: Colors.green[500],
              onPressed: () {
                //this is main part 
                Get.bottomSheet(
                  Container(
                    height: 130,
                    color: Colors.white,
                    child: Column(
                      children: const[
                        //this is main part..............................................................
                        Text("Getx Bottom sheet",style: TextStyle(fontSize: 22.0),),
                        Text("this is also bottom sheet",style: TextStyle(fontSize: 22.0),)
                      ],
                    ),
                    )
                );             
              },
              child: const Text(
                "Show BottomSheet",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
