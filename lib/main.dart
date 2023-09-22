// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:mnsur/Bcatcher6.dart';
import 'package:mnsur/myappbar.dart';
import 'package:mnsur/mydrawer.dart';


void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: mansor(),
  ));
}

class mansor extends StatelessWidget {
  const mansor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home"),
        backgroundColor: const Color.fromARGB(255, 18, 16, 15),
        actions: [
          IconButton(
            icon: const Icon(Icons.abc),
            onPressed: () => {},
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/mybr.jpg"),
                ),
                accountName: Text("mansor"),
                accountEmail: Text("mansor24@gmail.com")),
            const Divider(
              color: Color.fromARGB(255, 185, 8, 58),
              thickness: 12,
            ),
           
            man(context, "call", Icons.access_alarms_rounded, MyApp()),
            man(context, "مصفوفه", Icons.time_to_leave_sharp, list1()),
             man(context, "اله حاسبة", Icons.home, mob()),
          ],
        ),
      ),
    );
  }
}

Padding man(BuildContext context, tx, icon, nav) {
  return Padding(
    padding: const EdgeInsets.all(1.0),
    child: ListTile(
        tileColor: Color.fromARGB(255, 91, 65, 46),
        title: Text(tx),
        leading: Icon(icon),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => nav,
        ))),
  );
}
