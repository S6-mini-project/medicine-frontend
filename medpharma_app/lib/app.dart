import 'package:flutter/material.dart';
import './widgets/loginWidget.dart'; 
 class App extends StatelessWidget{
    @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home:Scaffold(
         body: LoginWidget(),
         backgroundColor: Color.fromARGB(255, 228, 222, 222),
       )
     );
   }
 }
  