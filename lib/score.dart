import 'package:flutter/material.dart';
import 'package:flutter_application_4/qustionpage.dart';

// ignore: must_be_immutable
class Scorepage extends StatelessWidget {
   Scorepage({super.key,required this.markfrom });
  int markfrom;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),
     body: Center(
      child:markfrom>=3 ? Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children:<Widget> [
        Image.asset('assets/images/images.png'),
          
        SizedBox(height: 20,),
        Text(
          'Your Score: $markfrom',
          style: TextStyle(fontSize: 20),
        ),
        

        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          
             Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => ScreenTwo(),),);
        }, child: Text('Back to Quiz',
        )
        ),
       ], 

      ):Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children:<Widget> [
        Image.asset('assets/images/rip.png'),
         
        SizedBox(height: 20,),
        Text(
          'Your Score: $markfrom',
          style: TextStyle(fontSize: 20),
        ),
        

        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
             Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => ScreenTwo(
                              
                            ),),);
        }, child: Text('Back to Quiz')
        ), 
        
       ], 

      )
    ), 
    );
    
  }
}