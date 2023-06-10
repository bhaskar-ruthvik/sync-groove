import 'package:flutter/material.dart';

class GreetingScreen extends StatelessWidget{

  String getTimeOfDay(){
    final timeData = DateTime.now();
    if(timeData.hour>=0 && timeData.hour<12){
      return 'Morning';
    }
    else if(timeData.hour>=12 && timeData.hour<16){
      return 'Afternoon';
    }
    else if(timeData.hour>=16 && timeData.hour<20){
      return 'Evening';
    }
    else if(timeData.hour>=20 && timeData.hour<24){
      return 'Night';
    }
    else{
      return 'Error';
    }
  }

  @override
  Widget build(BuildContext context) {
    final greeting = getTimeOfDay();
    return SafeArea(
      child: Scaffold(
          
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32.0,left: 16.0),
                child: Text('Good ${greeting}, Beti',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.titleLarge,
                          ),
              ),
              const Expanded(child: Center(
                child: Text('hial')
              )),
              
            ],
          ),
        ),
    );
  }
}