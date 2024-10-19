// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import "dart:async";
import 'package:intl/intl.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: DateApp(),
    );
  }
}

class DateApp extends StatefulWidget {
  const DateApp({super.key});

  @override
  State<DateApp> createState() => _DateAppState();
}

class _DateAppState extends State<DateApp> {

  String weekday="";
  int hour=0;
  String date='';
  String time='';

  // String day='';
  // String month='';
  // String weekday='';
  String PmAm='';
changeYear(){
  Timer.periodic(Duration(seconds: 1), (timer) {
  setState(() { 
    weekday=DateFormat('EEEE').format(DateTime.now());
    
   time=DateFormat('hh : mm : ss a').format(DateTime.now());
   date= DateFormat('MMMM d,y').format(DateTime.now());

    
    
   


      //  year=DateTime.now().year.toString();
      //  month=DateTime.now().month.toString();
      //  weekday=DateTime.now().weekday.toString();
      //  day=DateTime.now().day.toString();
      //  hour=DateTime.now().hour;
      //  minuts=DateTime.now().minute.toString();
      //  second=DateTime.now().second.toString();
       if (hour>12) {
        PmAm='PM';
         
       }else{PmAm='AM';}
       if (hour>12) {
        hour=hour-12;}
         
      //  }
      //  switch (month) {
      //    case '1':
      //    month='Junuary';
      //    break;

      //    case '2':
      //    month='February';
      //    break;
           
      //    case '3':
      //    month='March';
      //    break;
           
      //    case '4':
      //    month='April';
      //    break;
           
      //    case '5':
      //    month='May';
      //    break;
           
      //    case '6':
      //    month='June';
      //    break;
           
      //    case '7':
      //    month='July';
      //    break;
           
      //    case '8':
      //    month='August';
      //    break;
           
      //    case '9':
      //    month='September';
      //    break;
           
      //    case '10':
      //    month='October';
      //    break;
      //    case '11':
      //    month='November';
      //    break;
      //    case '12':
      //    month='Decmber';
      //    break;
           
         
      //  };
      //  switch (weekday) {
      //    case '1':
      //    weekday='SUN';
      //    break;
           
      //    case '2':
      //    weekday='MON';
      //    break;
           
      //    case '3':
      //    weekday='TUE';
      //    break;
           
      //    case '4':
      //    weekday='WED';
      //    break;
           
      //    case '5':
      //    weekday='THU';
      //    break;
           
      //    case '6':
      //    weekday='FRI';
      //    break;
           
      //    case '7':
      //    weekday='SAT';
      //    break;
           
         
           
         
      //  }
       

  });
});
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeYear();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 40, 43),
        title: Text(
          'Time&Date',
          style: TextStyle(fontSize: 27, color: Colors.white),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 34, 33, 33),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'today  is $weekday',
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
            SizedBox(
              height: 22,
              
            ),
            Text(
              '$date',
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              time,
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
            
          ],
        ),
      ),
    );
  }
}
