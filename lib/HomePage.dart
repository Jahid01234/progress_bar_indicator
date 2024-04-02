import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF08080),
        title: Text("Progress/Percentage Bar Indicator"),
        titleTextStyle: TextStyle(color: Colors.white),
        centerTitle: true,
      ),

      body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50,child: Text("Progress Bar Indicator"),),


              // The 1st CircularProgressIndicator Bar
              SizedBox(// for use the size increase the CircularProgressIndicator
                height: 100,
                width: 100,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.cyan,
                  color: Colors.red,
                  strokeWidth: 4.0,
                ),
              ),

              // The 2nd LinearProgressIndicator Bar
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: LinearProgressIndicator(
                 backgroundColor: Color(0xFFFFA07A ),
                  color: Colors.teal,
                ),
              ),

               SizedBox(height: 60),
              // The 3rd Circular_Percentage_Indicator Bar
              // For using import dependencies in pubspec.ymal
              SizedBox(height: 50,child: Text("Percentage Bar Indicator"),),
              CircularPercentIndicator(
                 radius:60, // size increase
                 animation: true,
                 animationDuration: 1500,
                 backgroundColor: Colors.cyan,
                 progressColor: Colors.redAccent,
                 lineWidth: 10.0,
                 percent: 0.8,
                 center: Text("80%",style: TextStyle(fontSize: 20),),
                 footer: Padding(
                     padding: EdgeInsets.only(top: 10),
                     child: Text("Study in Month",style: TextStyle(fontSize: 15),),
                 )
              ),


              // The 4th Linear_Percentage_Indicator Bar
              // For using import dependencies in pubspec.ymal
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: LinearPercentIndicator(
                  //width: 170.0,
                  animation: true,
                  animationDuration: 1500,
                  barRadius: Radius.circular(10),
                  backgroundColor: Colors.deepOrangeAccent,
                  progressColor: Colors.cyan,
                  percent: 80/100, // 0.8
                  lineHeight:20,
                  center:  Text("80%",style: TextStyle(color: Colors.white),),
                  leading:  Text("Left side",style: TextStyle(color: Colors.blue),),
                  trailing: Text("Right side",style: TextStyle(color: Colors.blue),),

                ),
              )

            ],

        ),
      ),
    );
  }
}
