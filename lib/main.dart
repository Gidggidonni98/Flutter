import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/colors/adapters/screens/colors.dart';


void main(){
  runApp(App());
}

class App extends StatelessWidget{
  const App({super.key});
  @override
  Widget build(BuildContext context) {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Colores(),
  );
    
  }
}