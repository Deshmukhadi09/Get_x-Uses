import 'package:flutter/material.dart';
import 'package:get_x/controler/valuecontroller.dart';
import 'package:get/get.dart';

class GetxObx extends StatefulWidget {
  const GetxObx({ Key? key }) : super(key: key);

  @override
  _GetxObxState createState() => _GetxObxState();
}

class _GetxObxState extends State<GetxObx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("getx obx"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              //getting value by getx...........................................
                GetX<ValueController> (
                  init: ValueController(),
                  builder: (_) {
                    return Text(
                "This is value 1: ${_.valueModel.value.value1}",
                style: const TextStyle(
                  fontSize: 20.0,
                )
                );   
                  },
                ),

                Obx(() => Text(
                "This is value 2: ${Get.find<ValueController>().valueModel.value.value2} ",
                style: const TextStyle(
                  fontSize: 20.0,
                ),
                ),),

                TextButton( 
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    Get.find<ValueController>().updateTheValues("aditya", "deshmukh");
                  },
                  child: const Text("change the value", style: TextStyle(color: Colors.white),),
                  )
            ],
          ),
          ),
      ),
    );
  }
}