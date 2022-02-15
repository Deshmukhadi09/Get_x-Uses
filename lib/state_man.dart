import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controler/countcontroler.dart';
import 'controler/countcontroler.dart';

class GetBuilders extends StatefulWidget {
  const GetBuilders({Key? key}) : super(key: key);

  @override
  _GetBuildersState createState() => _GetBuildersState();
}

class _GetBuildersState extends State<GetBuilders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("state management"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              //using this we can fetch value....................................................
              //check controler/countcontroler.dart file
              GetBuilder<CountContoller>(
                init: CountContoller(),
                builder: (controller) {
                  return Text(
                    "Count value is ${controller.count}",
                    style: const TextStyle(fontSize: 24, 
                    fontWeight: FontWeight.w800),
                  );
                },
              ),
              TextButton(
                onPressed: () {
                  Get.find<CountContoller>().increamentCounter();
                }, 
                child: const Text("Increament counter", style: TextStyle(fontSize: 24, 
                    fontWeight: FontWeight.w800),))
            ],
          ),
        ),
      ),
    );
  }
}
