

import 'package:flutter/material.dart';
import 'package:login_demo/modules/login/loginPage.dart';
import 'package:login_demo/modules/principal/principalPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan, 
      ),
      home: Scaffold(body: loginPage()),
      routes: {
        "/principal":(context)=>principalPage(),
        "/login":(context)=>loginPage(),
      },
    );
  }
}


  
