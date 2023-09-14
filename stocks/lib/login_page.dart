import 'package:flutter/material.dart';
import 'package:stocks/Wew_Page.dart';
class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
Widget build(BuildContext context) {
return new WillPopScope(
  onWillPop: () async => false,
  child: new Scaffold(
  appBar: new AppBar(
  title: Center(
  child:   new Text("<3 عُدتم والعودةُ أحمدُ", 
  style: TextStyle( 
  color: Color.fromARGB(255, 97, 136, 204), 
  fontSize: 30,
  fontWeight: FontWeight.bold,
  )
 ),
),
backgroundColor:
  Color.fromARGB(255, 3, 35, 89),
leading: 
new IconButton(
icon: new Icon(Icons.arrow_back_ios_new_rounded),
 onPressed: () => Navigator.of(context).pop(),
        ),
      ),
  body: Column(
 children: [

  SizedBox(height: 60,),
  Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextField(
  decoration: InputDecoration(
  border: OutlineInputBorder(),
  hintText: 'EMAIL/USERNAME',
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
  hintText: 'PASSWORD',
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
    child: Text("ونقول باسم الله")
    )
      ],
      )
    ),
  );
}
}