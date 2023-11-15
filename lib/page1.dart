// ignore: unused_import
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/category.dart';
import 'package:flutter_application_4/category2.dart';
import 'package:flutter_application_4/category3.dart';
import 'package:flutter_application_4/qustionpage.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 249, 249),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 900,
            decoration: BoxDecoration(shape: BoxShape.rectangle,
            color: Color.fromARGB(255, 8, 8, 7),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(80.0),
              bottomRight: Radius.circular(80.0),
            ),
              ),
            child: Column(mainAxisAlignment:MainAxisAlignment.center,
            children: [Center(child: Text('Hello Quize',
            style: TextStyle(fontStyle: FontStyle.italic,fontSize: 40,
            fontWeight: FontWeight.bold,color: Color.fromARGB(248, 250, 249, 250)))),]),           
            ),SizedBox(height: 20,),
            Text("category",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 25,
            fontWeight: FontWeight.bold,)),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 
                  InkWell(onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> ScreenTwo()),);
                  },
                    child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(shape: BoxShape.rectangle,
                          color: Color.fromARGB(248, 7, 7, 7),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60.0),
                            topRight: Radius.circular(60.0),
                            
                          ),),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Center(child: Image.asset('assets/images/gk.png',
                              fit: BoxFit.contain,
                              ),)],
                            ),
                        ),
                  ),
                    InkWell(onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Sports()),);
                    },
                      child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(shape: BoxShape.rectangle,
                                  color: Color.fromARGB(248, 7, 7, 7),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(60.0),
                                    topRight: Radius.circular(60.0),
                                  ),),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [Center(child: Image.asset('assets/images/sports png.png',
                                      ),)],
                                    ),
                                ),
                    ),],
                 
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>History()),);  
                  },
                    child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(shape: BoxShape.rectangle,
                          color: Color.fromARGB(248, 7, 7, 7),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60.0),
                            topRight: Radius.circular(60.0),
                          ),),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Center(child: Image.asset('assets/images/history image.png',
                              ),)],
                            ),
                        ),
                  ),
                    InkWell(onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Tech()),); 
                    },
                      child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(shape: BoxShape.rectangle,
                                  color: Color.fromARGB(248, 7, 7, 7),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(60.0),
                                    topRight: Radius.circular(60.0),
                                  ),),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [Center(child: Image.asset('assets/images/tec image.png',
                                      ),)],
                                    ),
                                ),
                    ),],
                 
              ),
            ),
            SizedBox(height:100,),
            
            GestureDetector(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => ScreenTwo(
              ),));  
              
            },
            child: Container(
                  height: 40,
                  width: 180,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
                  color: Color.fromARGB(236, 12, 12, 12)),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [Center(child: Text("Let's Start",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
                    color: Color.fromARGB(249, 251, 250, 250)),),),
                    ],),
                  
                  ),
              ),
            
            
        ],
      ),
      

    );
        
  }
}
      
      
     
    
    
   