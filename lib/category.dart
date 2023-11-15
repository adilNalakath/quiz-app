import 'package:flutter/material.dart';

import 'package:flutter_application_4/score.dart';
import 'Quizlist.dart';

class Sports extends StatefulWidget {
  Sports({super.key});

  @override
  State<Sports> createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  int index = 0;
  int mark = 0;
  String indexOfAnswer = ""; // Reset selected answer
  bool isCorrect = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80),
          Center(
            child: Container(
              height: 160,
              width: 300,
              decoration: BoxDecoration(
                 
                  borderRadius: BorderRadius.circular(18),
                  color: Color.fromARGB(255, 19, 19, 18)),
              child: Center(
                child: Text(sportsquestions[index].question!,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(color:Color.fromARGB(250, 244, 245, 244),fontSize: 18, 
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          SizedBox(height: 39),
          GestureDetector(
            onTap: () {
              setState(() {
                if (sportsquestions[index].indexOfAnswer == 0) {
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
                  sportsquestions[index].options![0],
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
                if (sportsquestions[index].indexOfAnswer == 1) {
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
                      sportsquestions[index].options![1],
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
                if (sportsquestions[index].indexOfAnswer == 2) {
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
                      sportsquestions[index].options![2],
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
                if (sportsquestions[index].indexOfAnswer == 3) {
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
                      sportsquestions[index].options![3],
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
