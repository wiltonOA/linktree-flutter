import 'package:flutter/material.dart';
import 'package:visaoavorelink/paginas/link_list.dart';
import 'package:flutter/services.Dart';
//WILTON OLIVEIRA
//visaoconsultoriaemti@gmail.com
void main() {
   runApp(MyApp());
   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
     systemNavigationBarColor: Colors.white, // navigation bar color
     statusBarColor: Colors.white, // status bar color
   ));
}

class MyApp extends StatelessWidget {
  static Color primaryColor = Color.fromARGB(255, 139, 0, 139);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Visão consultoria em T.I',
      theme: ThemeData(
        //primaryColor: Colors.transparent,
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LinkList(),
    );
  }
}

