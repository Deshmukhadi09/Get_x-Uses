import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_screen.dart';
 void main() {
   runApp( const MyApp());

 }

 class MyApp extends StatelessWidget {
   const MyApp({ Key? key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return GetMaterialApp(
       title: "getx app",
       theme: ThemeData(
         primarySwatch: Colors.cyan,
       ),
       home: const HomePage(),
     );
   }
 }