
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Screens/home.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

     localizationsDelegates: [
       GlobalMaterialLocalizations.delegate,
       GlobalCupertinoLocalizations.delegate,
       GlobalWidgetsLocalizations.delegate
     ],
     supportedLocales: [
       Locale("ar"),
       Locale("en"),

     ],
     locale: Locale("ar"),

     home: home(),





    );

  }


}