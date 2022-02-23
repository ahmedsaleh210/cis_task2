import 'package:cis_task2/modules/first_screen.dart';
import 'package:cis_task2/modules/second_screen.dart';
import 'package:cis_task2/shared/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: defaultColor,
          primarySwatch: customColor,
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
              bodyText1: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
              bodyText2: TextStyle(
                color: defaultColor,
                fontWeight: FontWeight.w700,
                fontSize: 25.0,
              ),
              subtitle1: const TextStyle(
                fontSize:16.0,
                fontWeight: FontWeight.w800,
                color: Colors.black,
                height: 1,
              )
          ) ,
        appBarTheme: AppBarTheme(
          color: defaultColor
        )
      ),
      home: const FirstScreen(), //Change it to see Second Screen
    );
  }
}
