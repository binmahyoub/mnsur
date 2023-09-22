import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 98, 180, 11),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                )),
            constraints: BoxConstraints(maxWidth: 1000),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('login'), Text("data")],
            ),
            height: 100,
            margin: EdgeInsets.only(top: 50,bottom: 50),
          ),
        ),
        drawer: AboutDialog(
          children: [
            Text("hlow")
          ],
        ),
      ),
    );
  }
}