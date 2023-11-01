// ignore: unused_import
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/qustionpage.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 48, 153, 234),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 900,
            decoration: BoxDecoration(shape: BoxShape.rectangle,
            color: Color.fromARGB(255, 249, 247, 244),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(80.0),
              bottomRight: Radius.circular(80.0)
            ),
              ),
            child: Column(mainAxisAlignment:MainAxisAlignment.center,
            children: [Center(child: Text('Quizee',
            style: TextStyle(fontStyle: FontStyle.italic,fontSize: 40,
            fontWeight: FontWeight.bold))),]),           
            ),
            SizedBox(height:410,),
            
            GestureDetector(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => ScreenTwo(
              ),));  
              
            },
              child: GestureDetector(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => ScreenTwo(
              )));
              },
                child: Container(
                  height: 40,
                  width: 180,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
                  color: Color.fromARGB(255, 158, 218, 246)),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [Center(child: Text("Let's Start",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
                    ],),
                  
                  ),
              ),
            ),
            
        ],
      ),
      

    );
        
  }
}
      
      
     
    
    
   