import 'package:flutter/material.dart';
import 'package:stocks/Wew_Page.dart';
import 'package:stocks/login_page.dart';

void main() {
  runApp(MaterialApp(home:MainApp(),
  debugShowCheckedModeBanner: false,));
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
  return 
 Scaffold(
  appBar: AppBar( 
  title: Center(
  child: Text(":) سجل والباقي علينا", style: 
  TextStyle(
  color: Color.fromARGB(255, 97, 136, 204),
  fontSize: 30,
  fontWeight: FontWeight.bold
      ),
     ),
    ),
  backgroundColor:
  Color.fromARGB(255, 3, 35, 89)
   ),
        
  body: Column( 

  children: [
  SizedBox(height: 30,),
  LogIn(),
  
  SizedBox(height: 15,),
  Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextField(
  decoration: InputDecoration(
  border: OutlineInputBorder(),
  hintText: ' EMAIL',
  enabledBorder: OutlineInputBorder
  (borderSide: BorderSide
  (color: Color.fromARGB(255, 3, 35, 89))
     )
    ),
   ),
  ),

  SizedBox(height: 15,),
  Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextField(
  decoration:InputDecoration(
  border:OutlineInputBorder(),
  hintText: 'USERNAME PLS , nnnoootttt NICKNAME',
  enabledBorder: OutlineInputBorder
  (borderSide: BorderSide
  (color: Color.fromARGB(255, 3, 35, 89))
     )
    )
   ),
  ),

  SizedBox(height: 15,),
  Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextField(
  decoration:InputDecoration(
  border:OutlineInputBorder(),
  hintText: 'PASSWORD {It must be STRONG just as u !!}',
  enabledBorder: OutlineInputBorder
  (borderSide: BorderSide
  (color: Color.fromARGB(255, 3, 35, 89))
     )
    )
   ),
  ),
ElevatedButton(style: ElevatedButton.styleFrom(
    backgroundColor: Color.fromARGB(255, 0, 55, 150)
    ),
    onPressed: (){
    Navigator.push( 
    context, MaterialPageRoute(
    builder: (context) => Wew(),
        ), 
      );
     },
    child: Text("نسمي ونقول يلا نبدا")
    )
     ],
    ),
   );
 }
}

class LogIn extends StatelessWidget {
  const LogIn({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(style: ElevatedButton.styleFrom(
    backgroundColor: Color.fromARGB(255, 0, 55, 150)
    ),
    onPressed: (){
    Navigator.push( 
    context, MaterialPageRoute(
    builder: (context) => LogInPage(),
        ), 
      );
     },
    child: Text("!!أنا واحد/وحده من ربعكم ")
    );
  }
}
