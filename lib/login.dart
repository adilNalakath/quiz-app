import 'package:flutter/material.dart';
import 'package:flutter_application_4/page1.dart';

class _loginpagState extends StatefulWidget {
   _loginpagState({super.key});
final  unameController = TextEditingController();
final  passController = TextEditingController();
  @override
  State<_loginpagState> createState() => __loginpagStateState();
}

class __loginpagStateState extends State<_loginpagState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(248, 12, 12, 12),
      body: Column(
        children: [GestureDetector(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => page1(
              ),));  
          Container(
            height: 400,
            width: 300,
            child: Column(children: [
              Text("username"),
              TextField(
                decoration: InputDecoration(
                  hintText: "Username",),
              ),
            ],),);Container(
              height: 400,
              width: 300,
              child: Column(
                children: [
                  Text("password"),
                  TextField(
                   decoration: InputDecoration(
                    hintText: "password", ),),],),
          );
   } ), ],
      ),
    );
    
  }
}