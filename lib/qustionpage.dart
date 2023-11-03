

import 'package:flutter/material.dart';
import 'package:flutter_application_4/score.dart';

import 'Quizlist.dart';

class ScreenTwo extends StatefulWidget {
   ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
  
}

class _ScreenTwoState extends State<ScreenTwo> {
  
  int index = 0;
  int mark = 0;
  
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
        
      body: Column(
        children: [
          SizedBox(height: 80),
             Center(
           child: Container(
            height: 160,
            width: 280,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
            color: Color.fromARGB(255, 249, 102, 4)),
            child: Center(child: Text(questions[index].question!,textAlign:TextAlign.center,style: TextStyle(
              fontSize: 18,fontWeight: FontWeight.bold)),),
           ),
             ),   
                  SizedBox(height: 10),
                    GestureDetector(onTap: () {
                      setState(() {
                       if (questions[index].indexOfAnswer == 0){
                        mark++;
                        
                       } 
                       else {
                        
                       }
                       
                       print(mark);
                       print('mark');
                        
                       if (index != 4) {
                      index++; }
                      else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Scorepage(
                              markfrom: mark,
                            ),),);
                      }
                      });
                    },
                      child: Container(
                       height: 40,
                       width: 150,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
                       color:  Color.fromARGB(250, 32, 173, 238)),
                       child: Center(child: Text(questions[index].options![0],style: TextStyle(
                         fontSize: 18,fontWeight: FontWeight.bold),),),
                         ),
                    ),
                    SizedBox(height: 10),
                  GestureDetector(onTap: () {
                    setState(() {
                      if (questions[index].indexOfAnswer == 1){
                        mark++;
                      }

                     print(mark);
                     print('mark');

                      if(index != 4){
                      index++;}
                      else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Scorepage(
                              markfrom: mark,
                            ),),);
                      }
                    });
                  },
                    child: Container(
                     height: 40,
                     width: 150,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
                     color: Colors.lightBlueAccent),
                     child: Column(mainAxisAlignment: MainAxisAlignment.center,
                     children: [Center(child: Text(questions[index].options![1],style: TextStyle(
                       fontSize: 15,fontWeight: FontWeight.bold
                     ),
                     ),
                     ),
                     ],
                     ),
                    ),
                  ),
                    SizedBox(height: 10),
                  GestureDetector(onTap: () {
                    setState(() {
                      if (questions[index].indexOfAnswer == 2){
                        mark++;
                      }
                      print(mark);
                      print('mark');

                      if (index !=4){
                      index++;}
                      else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Scorepage(
                              markfrom: mark,
                            ),),);
                      }
                    });
                  },
                    child: Container(
                     height: 40,
                     width: 150,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
                     color: Colors.lightBlueAccent),
                     child: Column(mainAxisAlignment: MainAxisAlignment.center,
                     children: [Center(child: Text(questions[index].options![2],style: TextStyle(
                       fontSize: 15,fontWeight: FontWeight.bold
                     ),
                     ),
                     ),
                     ],
                     ),
                    ),
                  ),
                    SizedBox(height: 10),
                  GestureDetector(onTap: () {
                    setState(() {
                      if (questions[index].indexOfAnswer == 3){
                        mark++;
                      }
                      print(mark);
                      print('mark');

                      if (index !=4){
                      index++;}
                      else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Scorepage(
                              markfrom: mark,
                            ),),);
                      }
                    });
                  },
                    child: Container(
                     height: 40,
                     width: 150,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
                     color:  Colors.lightBlueAccent),
                     child: Column(mainAxisAlignment: MainAxisAlignment.center,
                     children: [Center(child: Text(questions[index].options![3],style: TextStyle(
                       fontSize: 15,fontWeight: FontWeight.bold
                     ),
                     ),
                     ),
                     ],
                     ),
                     ),
                  ),
                  
                   ],
      ),
      );
  }
}
  
