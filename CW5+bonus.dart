import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int number1 = 1;

  int number2 = 1;
  
  String x ="";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Rock-Paper-Scissors")),
          backgroundColor: Color.fromARGB(255, 0, 255, 106),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("images/i_$number1.png",width: 150,),
                  Image.asset("images/i_$number2.png",width: 150,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Player 1", style: TextStyle(fontWeight: FontWeight.bold , fontSize: 19) ,),
                  Text("Player 2", style: TextStyle(fontWeight: FontWeight.bold , fontSize: 19) ,),
                ],
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                style: 
                ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding:
                  EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 40,
                  )
                ),                
                onPressed:(){
                  setState(() {
                    number1 = Random().nextInt(3) +1;
                    number2 = Random().nextInt(3) +1;

                    if (number1==1 && number2==1){
                      x="Draw";
                    
                    }
                    else if (number1==1 && number2==2){
                      x="Player 2 won";
                    }
                    else if (number1==1 && number2==3){
                      x = "Player 1 won";
                    }
                    else if (number1==2 && number2==1){
                      x = "player 1 won";
                    }
                    else if (number1==2 && number2==2){
                      x="Draw";
                    }
                    else if (number1==2 && number2==3){
                      x="Player 2 won";
                    }
                    else if (number1==3 && number2==1){
                      x="Player 2 won";
                    }
                    else if (number1==3&&number2==2){
                      x="Player 1 won";
                    }
                    else{
                      x="Draw";
                    }
                  });
                },
              child:Text("Play",style: TextStyle(fontSize: 18),)
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text("$x",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),),
              )
            ],
          )

        ),
      ),
    );
  }
}
