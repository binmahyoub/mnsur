import 'package:flutter/material.dart';

class list1 extends StatefulWidget {
  const list1({super.key});

  @override
  State<list1> createState() => _list1State();
}

class _list1State extends State<list1> {
  List l = ["mansor"];
  @override
  Widget build(BuildContext context) {
    TextEditingController ty=new TextEditingController();
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
            ),
            body:
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: ty,
                    onSubmitted: (value) {setState(() {
                      l.add(value);
                    });

                    },
                    decoration: InputDecoration(
                        fillColor: Colors.cyanAccent,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                Expanded(child: Container(
                    child: ListView.builder(
                        itemCount: l.length,
                        itemBuilder: (BuildContext tr,int i){
                          return Card(
                            child:ListTile(
                              trailing: IconButton(
                                icon:Icon(Icons.delete),onPressed: () {
                                setState(() {
                                  l.removeAt(i) ;
                                });

                              },
                              ),
                              title: Text(l[i]),
                            ) ,
                          );
                        })

                )
                ),
              ],
            )
        )
    );


  }
}
