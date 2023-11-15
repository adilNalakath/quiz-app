import 'package:flutter/material.dart';
import 'package:flutter_application_4/Quizlist.dart';
import 'package:flutter_application_4/score.dart';

class Tech extends StatefulWidget {
  const Tech({super.key});

  @override
  State<Tech> createState() => _TechState();
}

class _TechState extends State<Tech> {
  int index = 0;
  int mark = 0;
  String indexOfAnswer = ""; // Reset selected answer.
  bool isCorrect = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80,),
          Center(
            child: Container(
              height: 160,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color.fromARGB(255, 21, 20, 19)),
              child: Center(
                child: Text(techquestions[index].question!,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(color:Color.fromARGB(250, 245, 245, 244),fontSize: 18,
                         fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          SizedBox(height: 39),
          GestureDetector(
            onTap: () {
              setState(() {
                if (techquestions[index].indexOfAnswer == 0) {
                  mark++;
                } 

                print(mark);
                print('mark');

                if (index != 4) {
                  index++;
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Scorepage(
                        markfrom: mark,
                      ),
                    ),
                  );
                }
              });
            },
            child: Container(
              height: 49,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color.fromARGB(249, 69, 75, 78)),
              child: Center(
                child: Text(
                  techquestions[index].options![0],
                  style: TextStyle(
                      color: Color.fromARGB(249, 246, 245, 243),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(height: 39),
          GestureDetector(
            onTap: () {
              setState(() {
                if (techquestions[index].indexOfAnswer == 1) {
                  mark++;
                } 
                print(mark);
                print('mark');

                if (index != 4) {
                  index++;
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Scorepage(
                        markfrom: mark,
                      ),
                    ),
                  );
                }
              });
            },
            child: Container(
              height: 49,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: const Color.fromARGB(255, 74, 76, 78)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                    techquestions[index].options![1],
                      style: TextStyle(
                          color: Color.fromARGB(249, 246, 248, 248),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              setState(() {
                if (techquestions[index].indexOfAnswer == 2) {
                  mark++;
                }
                
                print(mark);
                print('mark');

                if (index != 4) {
                  index++;
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Scorepage(
                        markfrom: mark,
                      ),
                    ),
                  );
                }
              });
            },
            child: Container(
              height: 49,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: const Color.fromARGB(255, 82, 86, 87)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      techquestions[index].options![2],
                      style: TextStyle(
                          color: Color.fromARGB(250, 245, 235, 244),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 39),
          GestureDetector(
            onTap: () {
              setState(() {
                if (techquestions[index].indexOfAnswer == 3) {
                  mark++;
                }
                
                print(mark);
                print('mark');

                if (index != 4) {
                  index++;
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Scorepage(
                        markfrom: mark,
                      ),
                    ),
                  );
                }
              });
            },
            child: Container(
              height: 49,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: const Color.fromARGB(255, 83, 86, 88)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                     techquestions[index].options![3],
                      style: TextStyle(
                          color: Color.fromARGB(250, 245, 244, 234),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
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