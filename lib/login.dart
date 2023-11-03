import 'package:flutter/material.dart';
import 'package:flutter_application_4/page1.dart';

class _loginpageState extends StatelessWidget {
   _loginpageState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(248, 12, 12, 12),
      body: Column(
        children: [
          
            GestureDetector(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => page1(),
              ),);   Container(
              child: Column(children: [
                Text("username"),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Username",),
                ),
              ],),
            );Container(
              height: 400,
              width: 300,
              child: Column(
                children: [
                  Text("password"),
                  TextField(
                   decoration: InputDecoration(
                    hintText: "password", ),),],),
          );
            }   
    ), ],
      ),
    );
    
  }
}